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
            return new Piece_I();
        case 1:
            return new Piece_J();
        case 2:
            return new Piece_L();
        case 3:
            return new Piece_O();
        case 4:
            return new Piece_S();
        case 5:
            return new Piece_T();
        case 6:
            return new Piece_Z();
    }
    return null;
}
