//Global Variables
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow, purple;

void setup() {
  size(400, 300);
  //Population
  buttonX = width*1/4;
  buttonY = height*1/4;
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
  yellow = #F6FF00;
  purple = #7B00C9;
}//End setup

void draw() {
  //Button Hoverover
  if ( mouseX>width*1/4 && mouseX<width*3/4 && mouseY>height*1/4 && mouseY<height*3/4) {
    buttonColour = yellow; // Hoverover
  } else {
    buttonColour = purple;
  }//End IF
  fill(buttonColour); // Purple all the time, Yellow with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>width*1/4 && mouseX<width*3/4 && mouseY>height*1/4 && mouseY<height*3/4) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
