void setup() {
  
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
 Pause();
Start();

  if(gamestate==true)
  drawGameScreen();
  if(pause);
  {textAlign(CENTER);
  text ("PAUSED" , displayWidth/2 , displayHeight/2);
  text ("Press 'S' to resume" , displayWidth/2 , displayHeight/2+50);
  text ("Press 'R' to reset" , displayWidth/2 , displayHeight/2+100);
  }
  setup();
}
void drawGameScreen() {
  background(bgColor);
  // Update Ball Velocity and Resolve Collisions
  updateBallVelocity();
  // Update Ball and Paddle Positions
  updateBallPositions();
  updatePaddlePosition();
  // Draw Ball and Paddles
  drawBall();
  drawPaddles();
  // Display Scores
  displayScores();
}

void drawBall() {
  // Display Ball in correct position
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
  ballX+=ballVx;
  ballY+=ballVy;
  println(" in drawball");
}

void drawPaddles() {
  // Display Left and Right paddles in correct position
  fill(paddleColor);
  rect(0, leftPaddle, paddleWidth, paddleLength);
  rect(displayWidth-paddleWidth, rightPaddle,paddleWidth, paddleLength);
  
}

void resetGame(){
  if (reset); 
  {
    ballX=displayWidth/2;
    ballY=0;
    ballVx=BALL_VELOCITY;
    ballVy=5;
    leftPaddle=displayHeight/2;
    rightPaddle=displayHeight/2;
    leftScore=0;
    rightScore=0;
    gamestate=true;
  }
}
  //Reset Ball and Paddle Positions
  // Reset Ball Velocity
void Pause(){
  if(pause)
  { ballVx=0;
  ballVy=0;
  gamestate=false;
}
}
void Start(){ 
 if (start)
  {ballVx=ax;
  ballVy=ay;
  gamestate=true;
  }
}
void displayScores() {
   text (leftScore, displayWidth/4, 50);
   text (rightScore, 3*displayWidth/4,50);
  // Display Left and Right player Scores
}