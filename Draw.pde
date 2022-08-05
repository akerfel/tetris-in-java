void drawEverything() {
    background(0);
    translate((width - grid.s * grid.w)/2, (height - grid.s * grid.h)/2);
    drawGrid();
}


void drawGrid() {
  for (int x = 0; x < grid.w; x++) {
    for (int y = 0; y < grid.h; y++) {
      stroke(130, 130, 130);
      if (grid.grid[x][y].filled) {
        fill(255, 255, 255);
        rect(x * grid.s, y * grid.s, grid.s, grid.s);  
      }
      else {
        fill(0, 0, 0);
        rect(x * grid.s, y * grid.s, grid.s, grid.s);  
      }
    }
  }
}
