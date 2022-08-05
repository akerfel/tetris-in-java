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
            currentPiece = new Piece();
            return true;
        }
    }
    return false;
}
