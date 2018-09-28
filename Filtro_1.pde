import controlP5.*;    // import controlP5 library
ControlP5 cp5;   // controlP5 object




PImage img;
PImage img22;
PImage cor;
PImage flo;
PImage tris;
PImage gi;
PImage fel;
PImage gin;

float a;
float b;
float g;

int x,y;

float j = int(random(90));
float jt = int(random(86));
float jaa = int(random(34));


    
    
color c;
float delta;


void setup(){
  
  background (169,209,169);
  
  cp5 = new ControlP5(this);
  
  cp5.addSlider("R").setPosition(10, 100).setSize(150, 20).setRange(0, 255);
  cp5.addSlider("G").setPosition(10, 130).setSize(150, 20).setRange(0, 255);
  cp5.addSlider("B").setPosition(10, 160).setSize(150, 20).setRange(0, 255);
 
  size (890, 460, P3D);
  
  img = loadImage("selfie1.jpg");
  img22 = loadImage("selfie1.jpg");
  
  cor= loadImage ("corazon.png");
  flo = loadImage("flor.png");
  tris = loadImage ("triste.png");
  gin = loadImage ("guino.png");
  fel = loadImage ("feliz.png");
  gi = loadImage ("otroguin.png");
  
   
}
   
  
 
 void draw(){
   
   image (img22, 200,50);

  //"Interfaz"
   noStroke();
   fill (107,145,224);
   quad(0, 0, 200, 0, 200, 460, 0, 460);
   

   img22.loadPixels();
  
   j = cp5.getController("R").getValue();
   jt = cp5.getController("G").getValue();
   jaa = cp5.getController("B").getValue();
   
   println(j);
   
    for (int i = 0; i<img.width*img.height; i++){
    color cp2 =  img22.pixels[i];
    int ca2 [] = analisisColor(cp2);

   


    a = sin(j*i*-0.001/img.height);
    b = cos(i*jt*0.005/img.height);
    g = cos(jt*i*-0.75/img.height);


    img22.pixels[i] = color (ca2[0]+a*0.9,ca2[2]+b*0.01,ca2[1]+g/j*-0.8);
    
    updatePixels();
    

  }
  
  img22.updatePixels();
  
  
  
  
  
}

int[] analisisColor(int c_){
  int r = c_>>16 & 0xFF;
  int g = c_>>8 & 0xFF;
  int b = c_& 0xFF;
  int c[] = {r,g,b};
  return c;
}

 void  mousePressed() {
   if(mousePressed)
   {
         x=mouseX;
         y= mouseY;
   }
   
 }
 
 
      void keyPressed(){
    if (key == '1'){
      
      image (cor,mouseX,mouseY);
    
    }

          else if (key == '2'){
          
          image (flo,mouseX,mouseY);
          
          }
          
          else if (key == '3'){
           
            image (tris,mouseX,mouseY);
          
          }
          
          else if (key == '4'){
           
            image (gin,mouseX,mouseY);
          
          }
          
           else if (key == '5'){
           
            image (fel,mouseX,mouseY);
          
          }
          
          else if (key == '6'){
           
            image (gi,mouseX,mouseY);
          
          }

      
      saveFrame("line-###.jpg");

   }
   

  










    
