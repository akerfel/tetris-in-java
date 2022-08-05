void updateGameLogic() {
   unfillCurrentPieceBlocks();
   makeCurrentPieceFallOneStep();
   fillCurrentPieceBlocks();
}

void makeCurrentPieceFallOneStep() {
    currentPiece.y += 1;
}

void unfillCurrentPieceBlocks() {
    for (int i = 0; i < 4; i++) {
        grid.grid[currentPiece.x + int(currentPiece.blocks[i].x)][currentPiece.y + int(currentPiece.blocks[i].y)].filled = false;
    }
}

void fillCurrentPieceBlocks() {
    for (int i = 0; i < 4; i++) {
        grid.grid[currentPiece.x + int(currentPiece.blocks[i].x)][currentPiece.y + int(currentPiece.blocks[i].y)].filled = true;
    }
}
