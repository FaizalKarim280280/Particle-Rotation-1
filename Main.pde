
Drop[] drops;

int n = 300;            // initial number of particles 
int k = 100, steps = 0;
color[] arr = {color(255, 135, 135), color(143, 255, 135), color(82, 255, 226), color(255, 175, 135), color(243, 247, 126)};
int temp;

void setup(){
  size(650, 900);
  
  drops = new Drop[n];
  // initialize the drops with the required parameters
  
  for(int i=0; i<n; i++){
    float a = random(100,300), b = random(20,min(a-10,35));
    float radius = exp(sqrt(a/100.0)), omega = (3.5/a);
    
    drops[i] = new Drop(random(-350,350),radius, omega,a,b);
  }
  
}

void draw(){
  translate(width/2, height/2);
  steps++;
  background(61);
  
  int d = (int)random(0, arr.length);
  d = d== temp? (d+1) % arr.length : d;
  
  for(int i =0; i<n; i++){
    drops[i].run();
    drops[i].display();
    
    changeColor(i ,d);
  }
  
  steps = steps%170;
 
}

void changeColor(int i, int d){
  
  if(steps % 170 == 0){
    drops[i].dcolor = arr[d];
    temp = d;
  }

}


class Drop{
  // x : x co-ordinate of the particle
  // y : y co-ordinated of the particle
  // r : radius of the particle
  // h : height
  // omega : angular velocity of the particle
  // theta : arctan(y/x)
  
  float x, y, r, h;
  float theta = 0, omega;
  float a,b;
  color dcolor = #90caf9;
  
  public Drop(float h,float r, float s, float a, float b){
    this.x = 0;
    this.y = 0;
    this.h = h;
    this.r = r;
    this.theta = random(0,2*PI);  
    this.omega = s;
    this.a = a;
    this.b = b;
  }
  
  public void display(){
    fill(dcolor);
    noStroke();
    
    ellipse(x,y, 2*r, 2*r);
    point(x,y);
  }
  
  public void run(){
     theta = (theta > 2*PI)? 0 : theta;
     x = a*cos(theta);
     y = h + b*sin(theta);
   
     theta += omega;
  }
  
}
