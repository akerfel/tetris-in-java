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
                makePieceFallOrSpawnNewPiece();    
                lastTimeCheck = millis();
            }
        }
        
        if (key == ' ') {
            // Make current piece fall until a new piece is spawned.
            while (!makePieceFallOrSpawnNewPiece());
            lastTimeCheck = millis();
            makePieceFallOrSpawnNewPiece();
        }
    }
}
