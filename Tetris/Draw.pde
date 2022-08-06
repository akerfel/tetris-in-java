void drawEverything() {
    background(backgroundColor);
    drawGrid();
    drawHeldPiece();
    if (gameOver) {
        drawGameOver();    
    }
}

void drawGrid() {
    translate((width - grid.blockLength * grid.w)/2, (height - grid.blockLength * grid.h)/2);
    for (int x = 0; x < grid.w; x++) {
        for (int y = 0; y < grid.h; y++) {
            stroke(130, 130, 130);
            if (grid.grid[x][y].isFilled) {
                  fill(grid.grid[x][y].rgbColor);
                  rect(x * grid.blockLength, y * grid.blockLength, grid.blockLength, grid.blockLength);  
            }
            else {
                fill(gridBackgroundColor);
                rect(x * grid.blockLength, y * grid.blockLength, grid.blockLength, grid.blockLength);  
            }
        }
    }
    translate(-(width - grid.blockLength * grid.w)/2, -(height - grid.blockLength * grid.h)/2);
}

void drawHeldPiece() {
    if (heldPiece != null) {
        translate(width - grid.blockLength * (5 - heldPiece.xOffset), grid.blockLength * 2);
        if (heldPiece instanceof Piece_I) {
            translate(grid.blockLength, 0);    
        }
        for (int i = 0; i < heldPiece.blocks.length; i++) {
            fill(heldPiece.rgbColor);
            rect(heldPiece.blocks[i].x * grid.blockLength, heldPiece.blocks[i].y * grid.blockLength, grid.blockLength, grid.blockLength);
        }
        translate(-(width - grid.blockLength * (3 + heldPiece.xOffset)), -grid.blockLength * 2);
    }
}

void drawGameOver() {
    textSize(40);
    textAlign(CENTER, CENTER);
    fill(200, 0, 0);
    text("GAME OVER", width/2, height/2);
}
