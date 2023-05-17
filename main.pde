bono[] aa;
bono2[] bb;
bono3[] cc;
watermelon[] ff;
hobbang[] zz;


void setup(){
  size(1200,800);
  aa=new bono[2];
  bb = new bono2[1];
  cc = new bono3[1];
  ff = new watermelon[2];
  zz = new hobbang[2];
  bb[0]= new bono2();
  cc[0] = new bono3(30,30);
  
  for (int i=0; i<2; i++){
    aa[i] = new bono(random(0,1), random(0,1));
  }
  for (int i=0; i<2; i++){
    ff[i] = new watermelon(random(width),random(height),random(100,300));
    
  }
   for (int i=0; i<2; i++){
    zz[i] = new hobbang(random(width),random(height));
    
  }
  
}
void draw(){
  background(0,255,255);
  bb[0].app();
  for (int i=0; i<2; i++){
    aa[i].app();
    aa[i].move();
    ff[i].update();
    ff[i].fruit();
    zz[i].app();
    zz[i].move();
  }
  cc[0].app();
  cc[0].move();
}
