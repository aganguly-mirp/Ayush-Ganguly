void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawGameScreen();
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
}

void drawPaddles() {
  // Display Left and Right paddles in correct position
  fill(paddleColor);
  rect(0, leftPaddle, paddleWidth, paddleLength);
  rect(displayWidth-paddleWidth, rightPaddle,paddleWidth, paddleLength);
  
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}