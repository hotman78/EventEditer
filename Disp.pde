import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.*;

class Disp extends JFrame{
  XML mapData;
  int eventSize;
  String[] eventName;
  JLabel label[];
  JPanel eventSelect;
  JPanel eventStats;
  JPanel commandSelect;
  Disp(int mapId){
    
    setBounds(200,200,720,500);
    setLayout(new BorderLayout());
    setDefaultCloseOperation(EXIT_ON_CLOSE);
    partition();
    setTitle("XMLEditer");
    setVisible(true);
    repaint();
  }
  
  void partition(){
    eventSelect=new JPanel();//サイズ固定
    eventStats=new JPanel();//サイズ固定
    commandSelect=new JPanel();//サイズ可変
    
    eventSelect.setBackground(Color.blue);
    eventStats.setBackground(Color.red);
    commandSelect.setBackground(Color.yellow);
    
    JPanel panel=new JPanel();
    panel.setPreferredSize(new Dimension(500,0));
    panel.setLayout(new BorderLayout());
    eventSelect.setPreferredSize(new Dimension(150,0));
    panel.add(eventSelect,BorderLayout.LINE_START);
    
    panel.add(eventStats,BorderLayout.CENTER);
    add(panel,BorderLayout.LINE_START);
    add(commandSelect,BorderLayout.CENTER);
    
    eventSelect(0,eventSelect);
  }
  void eventSelect(int mapId,JPanel panel){
    JLabel label =new JLabel("マップイベント一覧");
    panel.add(label);
  }
}