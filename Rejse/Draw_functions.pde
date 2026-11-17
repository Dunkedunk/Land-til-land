
void drawGuessTile() {
  noFill();
  stroke(0);
  strokeWeight(5);
  rectMode(CENTER);
  rect(width/2, height/2, 200, 80);
  textSize(50);
  fill(0);
  textMode(CENTER);
  text(resultText, width/2-80, height/2+20);
}


void drawJourney() {
  fill(0);
  noStroke();
  rectMode(LEFT);
  rect(0, 0, 200, 400);
}
