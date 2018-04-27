class MString
{
  int x;
  int strLen;
  char chars[];
  int currY;
  int speed;
  int updFreq;

  MString(int tx)
  {
    x = tx;
    strLen = int(random(minStrLen, maxStrLen));
    chars = new char[strLen];
    for (int i = 0; i < strLen; i++)
    {
      chars[i] = charset[int(random(charset.length))];
    }
    currY = int(random(-strLen*2, -strLen)); //I want all of the strings to start outside of the screen
    speed = int(random(1, 3));
    updFreq  = int(random(2, 5)); //how many steps for the symbols to update
  }

  void move()
  {
    if (frameCount % speed == 0)
    {  
      currY ++; //move one line down
      for (int i = 0; i < strLen-1; i++)
      {
        chars[i] = chars[i+1];
        if (int(random(10)) == updFreq)
          chars[i] = charset[int(random(charset.length))]; //The strings in the original Matrix scrollers change constantly, so we renew the string
      }
      chars[strLen-1] = charset[int(random(charset.length))];
    }
  }

  void display()
  {
    fill(strColor);
    for (int i = 0; i < strLen-1; i++) 
      text(chars[i], x, ((currY + i) * charSize) % height);
  }
}