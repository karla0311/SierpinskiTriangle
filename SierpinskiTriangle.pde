int len = 0;
int x = 0;
int y = 0;
public void setup(){
  size(1200,700);
  background(0);
}

public void draw(){
  noFill();
  stroke(150, 0, 0, 20);
  sierpinski(x, y, len);
  stroke(255, 255, 255, 20);
  sierpinski(x+5, y, len);
  stroke(0, 0, 150, 20);
  sierpinski(x+15, y, len);
}

public void mouseMoved(){ //optional
  len = mouseX;
  x = mouseX;
  y = mouseY;
}

public void sierpinski(int x, int y, int len){
  if(len <= 20){
    triangle(x, y, x+len, y, x+len/2, y+len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
