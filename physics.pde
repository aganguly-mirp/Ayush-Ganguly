void updateBallVelocity() {
  if (ballY<ballRadius)
  {ballVy=-ballVy;
  ballY=ballRadius;
  ax=ballVx;
  ay=ballVy;}
  
  if (ballY>displayHeight-ballRadius){
    ballVy=-ballVy;
    ballY=displayHeight-ballRadius;
    ax=ballVx;
    ay=ballVy;
    
    if (ballX<=ballRadius)
    leftLose ();
    
    if (ballX>=displayWidth-ballRadius)
    rightLose ();
    
    if (ballX<=ballRadius+paddleWidth){
    }
  if ((ballY<=leftPaddle+paddleLength) && (ballY>=leftPaddle))
    {ballVx=-ballVx;
    ballX=ballRadius+paddleWidth;
    
    ballVy=(2+BALL_VELOCITY*(ballY-leftPaddle)/(paddleLength)-BALL_VELOCITY);
    ax=ballVx;
    ay=ballVy;
    }
}

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