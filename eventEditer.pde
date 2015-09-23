Main main;

void setup(){
  background(0);
  size(100, 100);
  textFont(createFont("MS明朝",12));
  main=new Main();
}

void draw(){
  main.draw();
}

void keyPressed(){
  main.input.keyPressed();
}

void keyReleased(){
  main.input.keyReleased();
}