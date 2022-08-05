void drawEverything() {
    background(backgroundColor);
    translate((width - grid.blockLength * grid.w)/2, (height - grid.blockLength * grid.h)/2);
    drawGrid();
    translate(-(width - grid.blockLength * grid.w)/2, -(height - grid.blockLength * grid.h)/2);
    if (gameOver) {
        drawGameOver();    
    }
}


void drawGrid() {
  for (int x = 0; x < grid.w; x++) {
    for (int y = 0; y < grid.h; y++) {
      stroke(130, 130, 130);
      if (grid.grid[x][y].isFilled) {
        fill(grid.grid[x][y].rgbColor);
        rect(x * grid.blockLength, y * grid.blockLength, grid.blockLength, grid.blockLength);  
      }
      else {
        fill(0, 0, 0);
        rect(x * grid.blockLength, y * grid.blockLength, grid.blockLength, grid.blockLength);  
      }
    }
  }
}

void drawGameOver() {
    textSize(40);
    textAlign(CENTER, CENTER);
    fill(200, 0, 0);
    text("GAME OVER", width/2, height/2);
}
