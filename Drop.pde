
//class Drop{
//  // x : x co-ordinate of the particle
//  // y : y co-ordinated of the particle
//  // r : radius of the particle
//  // h : height
//  // omega : angular velocity of the particle
//  // theta : arctan(y/x)
  
//  float x, y, r, h;
//  float theta = 0, omega;
//  float a,b;
//  color dcolor = #90caf9;
  
//  public Drop(float h,float r, float s, float a, float b){
//    this.x = 0;
//    this.y = 0;
//    this.h = h;
//    this.r = r;
//    this.theta = random(0,2*PI);  
//    this.omega = s;
//    this.a = a;
//    this.b = b;
//  }
  
//  public void display(){
//    fill(dcolor);
//    noStroke();
    
//    ellipse(x,y, 2*r, 2*r);
//    point(x,y);
//  }
  
//  public void run(){
//     theta = (theta > 2*PI)? 0 : theta;
//     x = a*cos(theta);
//     y = h + b*sin(theta);
   
//     theta += omega;
//  }
  
  
//}
