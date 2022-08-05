void updateGameLogic() {
   unfillPieceBlocks(currentPiece);
   makeCurrentPieceFallOneStep();
   fillPieceBlocks(currentPiece);
}

void makeCurrentPieceFallOneStep() {
    currentPiece.y += 1;
}

void unfillPieceBlocks(Piece piece) {
    for (int i = 0; i < 4; i++) {
        grid.grid[piece.x + int(piece.blocks[i].x)][piece.y + int(piece.blocks[i].y)].filled = false;
    }
}

void fillPieceBlocks(Piece piece) {
    for (int i = 0; i < 4; i++) {
        grid.grid[piece.x + int(piece.blocks[i].x)][piece.y + int(piece.blocks[i].y)].filled = true;
    }
}
