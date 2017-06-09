void rightLose() {
         leftScore+=1;
     displayScores();
     delay(100);
     ballVx=-ballVx;
     ax=ballVx;
     ay=ballVy;
   
}

void leftLose() {rightScore+=1;
         displayScores();
         delay(100);
         ballVx=-ballVx;
         ax=ballVx;
         ay=ballVy;
}