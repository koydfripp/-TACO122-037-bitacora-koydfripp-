#include <U8g2lib.h>
#include <Wire.h>

U8G2_SH1106_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0);

String frase1 = "Frase que se adapta";
String frase2 = "A lo largo del tiempo";
String fraseVisible = "";
unsigned long lastUpdate = 0;
int index = 0;
int etapa = 0; 

void setup() {
  u8g2.begin();
  u8g2.enableUTF8Print();
}

void loop() {
  if (millis() - lastUpdate > 600) {
    lastUpdate = millis();

    if (etapa == 0) {
      if (index < frase1.length()) {
        fraseVisible += frase1[index];
        index++;
      } else {
        etapa = 1;
        index = 0;
        fraseVisible = "";
      }
    } else if (etapa == 1) {
      int nextSpace = frase2.indexOf(' ', index);
      if (nextSpace == -1) nextSpace = frase2.length();

      String palabra = frase2.substring(index, nextSpace);
      fraseVisible += palabra + " ";
      index = nextSpace + 1;
    }

    u8g2.clearBuffer();
    u8g2.setFont(u8g2_font_ncenB08_tr);
    u8g2.drawStr(0, 20, fraseVisible.c_str());
    u8g2.sendBuffer();
  }
}
