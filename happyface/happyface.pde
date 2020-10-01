//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #FF0303;
color measlesColor = red;
color white = 255;
color colorReset = white;
float measlesX, measlesY, measlesDiameter;
int triangle1X1, triangle1Y1, triangle1X2, triangle1Y2, triangle1X3, triangle1Y3;
int triangle2X1, triangle2Y1, triangle2X2, triangle2Y2, triangle2X3, triangle2Y3;
int triangle3X1, triangle3Y1, triangle3X2, triangle3Y2, triangle3X3, triangle3Y3;
int triangle4X1, triangle4Y1, triangle4X2, triangle4Y2, triangle4X3, triangle4Y3;

void setup() {
  size (900, 600);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  //
  population();
  //
  //faceDraw();
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}//End setup

void draw() { 
  measlesX = random (width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY = random (height);
  measlesDiameter = random(height*1/60, height*1/20);
  fill(measlesColor);
  //Parameters are randomly set ;)
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  triangle(triangle1X1, triangle1Y1, triangle1X2, triangle1Y2, triangle1X3, triangle1Y3);
  triangle(triangle2X1, triangle2Y1, triangle2X2, triangle2Y2, triangle2X3, triangle2Y3);
  triangle(triangle3X1, triangle3Y1, triangle3X2, triangle3Y2, triangle3X3, triangle3Y3);
  triangle(triangle4X1, triangle4Y1, triangle4X2, triangle4Y2, triangle4X3, triangle4Y3);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
}//End mousePressed
