void keyPressed() {
    if (!gameOver) {
        if (key == CODED) {
            if (keyCode == UP) {
                currentPiece.tryToRotate();    
            }
            if (keyCode == LEFT) {
                currentPiece.tryToMoveLeft();    
            }
            if (keyCode == RIGHT) {
                currentPiece.tryToMoveRight();    
            }
            if (keyCode == DOWN) {
                updateGameLogic();    
                lastTimeCheck = millis();
            }
        }
    }
}
