#include <LiquidCrystal.h>

// pin definitions
const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
const int skimPin = 6, creamPin = 7;
const int downPin = 8, milkPin = 9, upPin = 10;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

// button variables
int downState = LOW, milkState = LOW, upState = LOW;
int downReading, milkReading, upReading;
long downTime = 0, milkTime = 0, upTime = 0;
long debounce = 400;

// milkfat options
float milkfatPercentages[] = {100, 0, 1, 2, 3.5, 10, 20, 35};
String milkfatDescriptions[] = {"Load Pumps", "Skim Milk", "Lowfat Milk", "Reduced Fat Milk", "Whole Milk", "Half and Half", "Cream", "Heavy Cream"};
int milkfatsArrLength = 7;
int currentMilkfat = 0;

// dispensing variables and options
int minDutyCycle = 500;
float flowRatio = 1; // cream to skim volume flow ratio
bool dispensing = false;
int dispensingStart = 0; // should be long? but % won't take unsigned long
bool startedDispensing = false;
float creamOn = 0, skimOn = 0;

void lcdWrapper (String firstLine, String secondLine) {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(firstLine);
  lcd.setCursor(0, 1);
  lcd.print(secondLine); 
}

void selectMilk (int selection) {
  currentMilkfat = currentMilkfat + selection;
  if (currentMilkfat > milkfatsArrLength) {currentMilkfat = 0;}
  if (currentMilkfat < 0) {currentMilkfat = milkfatsArrLength;}
  lcdWrapper(String(milkfatPercentages[currentMilkfat]) + "%", milkfatDescriptions[currentMilkfat]);
}

void dispenseMilk (float milkfat) {
  if (dispensing) {
    dispensing = false;
    selectMilk(0); // turn off display
    
    digitalWrite(creamPin, HIGH); // IT'S BACKWARDS ON NORMALLY OPEN???
    digitalWrite(skimPin, HIGH);
    creamOn = 0;
    skimOn = 0;
    
  } else {
    dispensing = true;
    startedDispensing = false; // moved dispensingStart = millis(); away from here
    lcdWrapper("Dispensing:", milkfatDescriptions[currentMilkfat]); 

    if (milkfat == 100) { // loading pump
      creamOn = 1 * flowRatio;
      skimOn = 1;
    } else {
      creamOn = (milkfat/35) * flowRatio;
      skimOn = 1 - (milkfat/35);
    }

    // duty cycles are minimum of 500ms and should be at least 500ms apart
    // rapid relay clicking isn't great
    float dutyCycleCorrection = min(min(creamOn, skimOn), abs(creamOn - skimOn));
    if (abs(creamOn - skimOn) <= 0.01) {dutyCycleCorrection = minDutyCycle;} // if the gap is small, just assume equal
    creamOn = creamOn * (minDutyCycle / dutyCycleCorrection);
    skimOn = skimOn * (minDutyCycle / dutyCycleCorrection); 
  }
}

void setup() {
  Serial.begin(9600); 
  
  pinMode(skimPin, OUTPUT);
  pinMode(creamPin, OUTPUT);
  digitalWrite(creamPin, HIGH);
  digitalWrite(skimPin, HIGH);
  
  pinMode(downPin, INPUT);
  pinMode(milkPin, INPUT);
  pinMode(upPin, INPUT);
  
  lcd.begin(16, 2);
  selectMilk(0);
}

void loop() {

  // buttons
  downReading = digitalRead(downPin);
  milkReading = digitalRead(milkPin);
  upReading = digitalRead(upPin);
  if (downReading == HIGH && millis() - downTime > debounce && !dispensing) {
    downTime = millis();
    selectMilk(-1);
  }
  if (milkReading == HIGH && millis() - milkTime > debounce) {
    milkTime = millis();
    dispenseMilk(milkfatPercentages[currentMilkfat]);
  }
  if (upReading == HIGH && millis() - upTime > debounce && !dispensing) {
    upTime = millis();
    selectMilk(1);
  }

  // dispensing based on duty cycle (max. on time)
  if (dispensing) {
    long millisNow = millis();
    if (!startedDispensing) {
      startedDispensing = true;
      dispensingStart = millisNow;
     }
    int currentCycle = (millisNow - dispensingStart) % round(max(creamOn, skimOn));
    digitalWrite(creamPin, !(currentCycle <= creamOn));
    digitalWrite(skimPin, !(currentCycle <= skimOn));
  }
}
