// Cheats
boolean onlySpawnLongPieces;

// Settings
int timeIntervalFlag;
int gridWidth;
int gridHeight;
color backgroundColor;
color gridBackgroundColor;

// Dynamic variables
int lastTimeCheck;
Grid grid;
Piece currentPiece;
Piece heldPiece;
boolean canHoldPiece;
boolean gameOver;

// This function is called once, at startup.
void setup() {
    // Cheats
    onlySpawnLongPieces = false;
    
    // Settings
    timeIntervalFlag = 500;
    gridWidth = 10;
    gridHeight = 20;
    backgroundColor = color(0);
    gridBackgroundColor = color(200);
    
    // Dynamic variables
    size(600, 800);
    lastTimeCheck = millis();
    grid = new Grid();
    currentPiece = createRandomPiece();
    currentPiece.fillBlocks();
    heldPiece = null;
    canHoldPiece = true;
    gameOver = false;
}

// This function is called ~60 times per second.
void draw() {
    if (!gameOver) {
        updateGameStateIfTimerReady();
    }
    drawEverything();
}
