void faceDraw() {
  background(0);
  //Face Code
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  strokeWeight(reset);
  //  
}//End faceDraw
