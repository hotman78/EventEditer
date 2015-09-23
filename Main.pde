class Main{
  Input input;
  Window window;
  Disp disp;
  Main(){
    input =new Input(this);
    disp =new Disp(0);
  }
  void draw(){
    text("ここにmapEditer",0,10);
    text("が入ります",0,20);
  }
}