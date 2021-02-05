private int limit = 20;
public void setup() {
 background(0);
 size(400, 400);
}
public void draw() {
  sierpinski(400, 400, 400);
}
public void mouseDragged() {
 if(mouseY > 1) {
   limit = mouseY; 
 }
}
public void sierpinski(int x, int y, int len) {
  if(len <= limit) {
    fill(123, 233, 54);
    noStroke();
    triangle(x, y, x - len, y, x - len/2, y - len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x - len/2, y, len/2);
    sierpinski(x - len/4, y - len/2, len/2);
  }
}
