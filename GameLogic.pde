void updateGameStateIfTimerReady() {
    if (millis() > lastTimeCheck + timeIntervalFlag) {
        lastTimeCheck = millis();
        makePieceFallOrSpawnNewPiece();
    }    
}

// Makes currentPiece fall, or spawns a new piece if currentPiece has landed.
// Returns true if new piece spawned, otherwise false.
boolean makePieceFallOrSpawnNewPiece() {
    if (!currentPiece.fallOneStep()) {
        currentPiece = createRandomPiece();
        checkForLineClears();
        canHoldPiece = true;
        return true;
    }
    return false;
}

void checkForLineClears() {
    for (int y = 0; y < gridHeight; y++) {
        if (lineIsFull(y)) {
            performLineClear(y);    
        }
    }
}

// Perform lineclear on specified line, both clearing the specified line and
// making the blocks above that line fall down one step.
void performLineClear(int lineIndex) {
    println("lineIndex: " + lineIndex);
    for (int y = lineIndex; y > 0; y--) {
        copyLineFromAbove(y);
    }
}

void copyLineFromAbove(int y) {
    for (int x = 0; x < gridWidth; x++) {
        grid.grid[x][y].isFilled = grid.grid[x][y-1].isFilled;
        grid.grid[x][y].rgbColor = grid.grid[x][y-1].rgbColor;
    }
}

// Simply set all the blocks on line with index y to "not filled".
void clearLine(int lineIndex) {
    for (int x = 0; x < gridWidth; x++) {
        grid.grid[x][lineIndex].isFilled = false;
    }   
}

boolean lineIsFull(int lineIndex) {
    for (int x = 0; x < gridWidth; x++) {
        if (!gridBlockIsFilled(x, lineIndex)) {
            return false;
        }
    }
    return true;
}

boolean gridBlockIsFilled(int x, int y) {
    return grid.grid[x][y].isFilled;
}

Piece createRandomPiece() {
    if (onlySpawnLongPieces) {
        return new Piece_I();
    }
    
    int randomNum = int(random(0, 7));
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

void fillBlockAndSetColor(int x, int y, color rgbColor) {
    grid.grid[x][y].isFilled = true;
    grid.grid[x][y].rgbColor = rgbColor;
}

void holdCurrentPiece() {
    if (canHoldPiece) {
        canHoldPiece = false; // Will be set to true when a piece reaches bottom
        if (heldPiece == null) {
            currentPiece.unfillBlocks();
            heldPiece = currentPiece;
            currentPiece = createRandomPiece();
            currentPiece.fillBlocks();
            heldPiece.rotation = 0;
        }
        else {
            currentPiece.unfillBlocks();
            Piece tempPiece = heldPiece;
            heldPiece = currentPiece;
            currentPiece = tempPiece;
            currentPiece.setStartCoordinates();
            currentPiece.fillBlocks();
            heldPiece.rotation = 0;
        }
    }
}
