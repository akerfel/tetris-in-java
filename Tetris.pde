Grid grid;
TPiece currentPiece;

void setup() { 
    size(600, 800);
    grid = new Grid();
    //grid.randomize();
  
    currentPiece = new TPiece();
}

void draw() {
    updateGameLogic();
    drawEverything();
    delay(400);
}
