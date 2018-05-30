#ifndef MAX_TEXT_COLS
#define MAX_TEXT_COLS 80
#endif
#include <iostream>
#include <string>

struct NonGraphicCharacters {
   std::string tab;
   std::string newLine;
   std::string alarm;
   std::string carriageReturn;
};

NonGraphicCharacters provideFilledStructure() {
   NonGraphicCharacters def;

   def.tab = "\t";
   def.newLine = "\n";
   def.alarm = "\a";
   def.carriageReturn = "\r";

   return def;
}

std::string stringRepeat(std::string toRepeat, int times) {
   std::string output = "";
   for(int i = 0; i < times; i++) {
       output += toRepeat;
   }

   return output;
}

void outputTableRow(std::string firstCell, std::string secondCell) {
   NonGraphicCharacters chars = provideFilledStructure();

   // c_str() is used for %s in printf placeholder, since %s only accepts C style strings (const char*).

   // Firstly a divider for rows...
   printf(
       "%s%s",
       stringRepeat("-", MAX_TEXT_COLS).c_str(),
       chars.newLine.c_str()
   );

   // First column...
   int widthForFirstColumn = MAX_TEXT_COLS / 2;
   int lengthForFirstCellText = firstCell.length();
   int spaceLeftForWhiteSpace_First = widthForFirstColumn - lengthForFirstCellText;
   printf(
       "|%s%s%s",
       stringRepeat(" ", spaceLeftForWhiteSpace_First / 2).c_str(),
       firstCell.c_str(),
       stringRepeat(" ", spaceLeftForWhiteSpace_First / 2).c_str()
   );

   // Output a divider
   printf("|");

   // Second column...
   int widthForSecondColumn = MAX_TEXT_COLS / 2;
   int lengthForSecondCellText = secondCell.length();
   int spaceLeftForWhiteSpace_Second = widthForSecondColumn - lengthForSecondCellText;
   printf(
       "%s%s%s|%s",
       stringRepeat(" ", spaceLeftForWhiteSpace_Second / 2).c_str(),
       secondCell.c_str(),
       // Negate one char, since there is an extra char in the middle for the divider
       stringRepeat(" ", (spaceLeftForWhiteSpace_Second / 2) - 1).c_str(),
       chars.newLine.c_str()
   );
}

void endTable() {
   NonGraphicCharacters chars = provideFilledStructure();
   printf(
       "%s%s",
       stringRepeat("-", MAX_TEXT_COLS).c_str(),
       chars.newLine.c_str()
   );
}

void outputTableHeader(std::string header) {
   NonGraphicCharacters chars = provideFilledStructure();
   printf(
       "%s%s",
       stringRepeat("*", MAX_TEXT_COLS).c_str(),
       chars.newLine.c_str()
   );

   int headerLength = header.length();
   int spacesForFillUp = MAX_TEXT_COLS - headerLength;
   printf(
       "*%s%s%s*%s",
       stringRepeat(" ", (spacesForFillUp / 2) - 1).c_str(),
       header.c_str(),
       stringRepeat(" ", (spacesForFillUp / 2)).c_str(),
       chars.newLine.c_str()
   );
}

void outputTableForChars() {
   outputTableHeader("Character Escape Sequences");
   outputTableRow("Character", "EscapeSequence");
   // Tab
   outputTableRow("Tab", "\\t");
   // New line
   outputTableRow("NewLine", "\\n");
   // Alarm
   outputTableRow("Alarm", "\\a");
   // Carriage return
   outputTableRow("Carriage Return", "\\r");
   endTable();
}

void writeGeneralOutput(NonGraphicCharacters chars) {
   std::cout << "General Output. All lines are terminated with a new line (\\n)." << chars.newLine;
   std::cout << "New Line: " << chars.newLine << "OUTPUT END FOR NEWLINE" << chars.newLine;
   std::cout << "Tab: " << chars.tab << "OUTPUT END FOR TAB" << chars.newLine;
   std::cout << "Carriage Return: " << chars.carriageReturn << "OUTPUT END FOR CARRIAGE RETURN" << chars.newLine;
   std::cout << "Alarm: " << chars.alarm << "OUTPUT END FOR ALARM" << chars.newLine;
}

int main() {
   NonGraphicCharacters chars = provideFilledStructure();
   outputTableForChars();
   writeGeneralOutput(chars);
   return 0;
}
