void updateGameStateIfTimerReady() {
    if (millis() > lastTimeCheck + timeIntervalFlag) {
        lastTimeCheck = millis();
        makePieceFallOrSpawnNewPiece();
    }    
}

// Makes currentPiece fall, or spawns a new piece if currentPiece has landed.
// Returns true if new piece spawned, otherwise false.
boolean makePieceFallOrSpawnNewPiece() {
    if (currentPiece != null) {
        if (!currentPiece.fallOneStep()) {
            currentPiece = createRandomPiece();
            return true;
        }
    }
    return false;
}

Piece createRandomPiece() {
    int randomNum = int(random(0, 7));
    println(randomNum);
    switch (randomNum) {
        case 0:
            return new LPiece();
        case 1:
            return new LPiece();
        case 2:
            return new LPiece();
        case 3:
            return new TPiece();
        case 4:
            return new TPiece();
        case 5:
            return new TPiece();
        case 6:
            return new TPiece();
    }
    return new LPiece();
}
