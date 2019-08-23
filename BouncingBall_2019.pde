PVector BallVec, BallCord;

int BallSize = 10;
float BoxSize = 900;


void setup(){
  
  size(1000,1000);                          //Size of screen
  
  BallCord = new PVector(200,500);          //Corodinates on ball
  BallVec = new PVector(3,3);               //Direction and speed of ball
}


void draw(){
  clear();
  
  BallCord.x += BallVec.x;                  //Changes the x position of ball from direction vector
  BallCord.y += BallVec.y;                  //Changes the y position of ball from direction vector
  BoxSize -= 1;                             //Changes size of the box
  
  rect                                    
    (height / 2 - BoxSize / 2,              //Finds upper left corner of the square from the middle of screen
    width / 2 - BoxSize / 2 ,  
    BoxSize,
    BoxSize);
    
  circle(BallCord.x,BallCord.y,BallSize);  //draws circle
    
  if(BallCord.x - (BallSize / 2) <= width / 2 - BoxSize / 2){BallVec.x *= -1;BoxSize += BallSize;}    //Collission with left, then toggles x vector direction
  if(BallCord.x + (BallSize / 2) >= width / 2 + BoxSize / 2){BallVec.x *= -1;BoxSize += BallSize;}    //Collission with right
  if(BallCord.y - (BallSize / 2) <= height / 2 - BoxSize / 2){BallVec.y *= -1;BoxSize += BallSize;}   //Collission with top, then toggles y vector direction
  if(BallCord.y + (BallSize / 2) >= height / 2 + BoxSize / 2){BallVec.y *= -1;BoxSize += BallSize;}   //Collission with buttom
}
