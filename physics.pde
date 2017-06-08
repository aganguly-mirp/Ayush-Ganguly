float velocityIncrease = 0.2;
void updateBallVelocity() {
 // if (LEFT){
  //  ballVx=ballVx-velocityIncrease;}
  //if (RIGHT){
   // ballVx=ballVx + velocityIncrease;
 // }
  //if ((!left)&&(!right)){
  //  ballVx=0;}
//  if (UP){
  //  ballVy-=velocityIncrease;}
  //if (DOWN){
  //  ballVy+=velocityIncrease;}
  //if((!down)&&(!up)){
  //  ballVy=0;}
    
  // Add control for movement keys here
 // ballVy+=gravity;
}

void updateBallPositions() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePosition() {
  if(leftPaddle>0)
  {if(left_up)
  leftPaddle-=PADDLE_VELOCITY;}
  
  if(leftPaddle<displayHeight-paddleLength){
  if(left_down)
  leftPaddle+=PADDLE_VELOCITY;}
  
  if(rightPaddle>0){
    if(right_up)
    rightPaddle-=PADDLE_VELOCITY;}
  
  if(rightPaddle<displayHeight-paddleLength){
  if(right_down)
  rightPaddle+=PADDLE_VELOCITY;}
}