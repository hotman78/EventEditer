class Disp extends AFP{
  XML mapData;
  int eventSize;
  String[] eventName;
  Label[] label;
  Disp(int mapId){
    super(null,"XMLeditor",200,200,720,500);
    selectEvent(mapId);
    eventStats(mapId,0);
  }
  void selectEvent(int mapId){
    mapData=loadXML("mapData.XML").getChildren("map")[mapId];
    eventSize=mapData.getChildren("event").length;
    eventName =new String[eventSize];
    
    label("マップイベント一覧",0,0,120,15);
    
    JPanel panel=panel(0,15,130,height-100);
    panel.setBorder(new CompoundBorder(
      new BevelBorder(BevelBorder.RAISED),  //外側
      new BevelBorder(BevelBorder.LOWERED)  //内側
    ));
    
    label =new Label[eventSize];
    for(int i=0;i<eventSize;i++){
      println(eventName[i]);
      eventName[i]=mapData.getChildren("event")[i].getString("name");
      label[i]=label(i+":"+eventName[i],5,i*10+5,120,15);
      panel.add(label[i]);
    }
  }
  
  void eventStats(int mapId,int eventId){
    label("名前",130,10,30,15);
    TextField name=textField("あああ",160,5,100,20);
    Button newPage=button("新規ページ",260,7,80,18);
    Button copy=button("コピー",350,7,40,18);
    Button delite=button("削除",390,7,40,18);
    Button paste=button("ﾍﾟｰｽﾄ",430,7,40,18);
    Button[] page =new Button[10];
    for(int i=0;i<10;i++){
      if(i<4)page[i]=button("ページ"+(i+1),190+i*45,40,45,18);
      if(i>=4)page[i]=button(String.valueOf(i+1),290+i*20,40,20,18);
    }
    JPanel panel=panel(140,40,400,height-80);
    panel.setBorder(new TitledBorder(new EtchedBorder(),"ページ"));
  }
}