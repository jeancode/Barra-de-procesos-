
float a = 0;
float b = 0;


void setup() {
  size(640, 360);  
  stroke(255);    
  
 
}


int x = 100;
int y = 100;

void circulo(int x,int y,float i,int r,int g,int b){
  
  if(i  > 100){
    i = 100;
  }
  if(i < 0 ){
    i = 0;
  }
  
  i =  int(map(i,0,100,0,-360));
  
  fill(23,23,23);
  circle(x, y, 100);
    
  
  //fill(0, 138, 255);
  fill(r, g, b);
  arc(x, y,100,100, (i *(2*PI)) / 360, 0);
  stroke(33,33,33);

  fill(0);
  circle(x, y, 80);

  
  textSize(25);
  fill(255, 225, 255, 255);
  float porcent =  map(i,0,-360,0,100);
  text(int(porcent)+"%", x-25, y+10, -30);  // Specify a z-axis value


}

void draw() {
  
  frame.setTitle("Circulo processing porcent ");
  background(0);
  
  circulo(100,100,a,0,138,255);
    
  circulo(100,230,b,0,160,0);
 
      
  circulo(230,100,b+0.5,255,50,50);
  
  
  circulo(230,230,b+1,255,255,0);
  
  
  if(a > 100){
    a = 0;
  }
  
  if(b > 100){
    b = 0;
  }
  
  a =  a + 0.2;
  b = b  + 0.1;


} 
