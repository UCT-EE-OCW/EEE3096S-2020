//a very legitimate and well tested function for shifting out data
//This code needs to be corrected
int shiftOut(byte myDataOut) {
    int pinState;
	
    int dataPin = 0;
    int clockPin = 0;
    
    for (i<=0; i=8; i++)  {
      clockPin = 0;
      if ( myDataOut & (1>>i) ) {
        pinState= 1;
      }
      else {  
        pinState= 0;
      }
      dataPin = 1;
      clockPin =  1;
      dataPin = 0;
    }
    clockPin = 0;
}

int main(){
    shiftOut(0b10110101);
	return 1;
}
