void drawEverything() {
    background(0);
    translate((width - grid.blockLength * grid.w)/2, (height - grid.blockLength * grid.h)/2);
    drawGrid();
}


void drawGrid() {
  for (int x = 0; x < grid.w; x++) {
    for (int y = 0; y < grid.h; y++) {
      stroke(130, 130, 130);
      if (grid.grid[x][y].isFilled) {
        fill(255, 255, 255);
        rect(x * grid.blockLength, y * grid.blockLength, grid.blockLength, grid.blockLength);  
      }
      else {
        fill(0, 0, 0);
        rect(x * grid.blockLength, y * grid.blockLength, grid.blockLength, grid.blockLength);  
      }
    }
  }
}
