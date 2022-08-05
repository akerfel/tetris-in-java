// Settings
int timeIntervalFlag;
int gridWidth;
int gridHeight;

// Dynamic variables
int lastTimeCheck;
Grid grid;
Piece currentPiece;
boolean gameOver;

void setup() { 
    // Settings
    timeIntervalFlag = 1400;
    gridWidth = 10;
    gridHeight = 20;
    
    // Dynamic variables
    size(600, 800);
    lastTimeCheck = millis();
    grid = new Grid();
    currentPiece = new TPiece();
    currentPiece.fillBlocks();
    gameOver = false;
}

void draw() {
    if (!gameOver) {
        updateGameStateIfTimerReady();
    }
    drawEverything();
}
