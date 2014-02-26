void setup() {
  size(640, 640);
  background(255, 255, 255);
//  background(0, 0, 0);
}

void draw() {

}

void mouseDragged() {
  noStroke();
  fill(random(255)+200, random(255), random(255));
  ellipse(mouseX, mouseY, 50, 50);
}

void mousePressed() {
  rect(mouseX - 50, mouseY - 50, 100, 100);
}

float i = 0;
static int NUM = 36;
static int LAYER = 5;

void mouseWheel(MouseEvent event) {
  float e = event.getAmount();
  println(e);

final int centerX = width / 2;
final int centerY = height / 2;
final int arm = 50;
final int radius = 10;
final int size = 5;

colorMode(HSB, TWO_PI, 100, 100, 100);

 if (e > 0){ 
 for (int j = 0; j < NUM; j++) {
   for(int k = 0; k < LAYER; k++){
   float theta = j * (360 / NUM) * PI / 180;
    noStroke();
    //noFill();
    fill(theta, 100 / (k + 1), 100, 100);
    println(theta);  
    //stroke(theta, 100/(k+1)*2, 100, 100);
    ellipse(centerX + arm * (k+1) * cos(theta) + radius*cos(i), 
            centerY + arm * (k+1) * sin(theta) + radius*sin(i),
            size, size);
 }}
 i-=PI/12;
}else{
   for (int j = 0; j < NUM; j++) {
   for(int k = 0; k < LAYER; k++){
   float theta = j * (360 / NUM) * PI / 180;
    noStroke();
    fill(0, 0, 100);  
    ellipse(centerX + arm * (k+1) * cos(theta) + radius*cos(i), 
            centerY + arm * (k+1) * sin(theta) + radius*sin(i),
            (size + 1), (size + 1));
 }}
 i+=PI/12;
}
}
