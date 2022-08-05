// Settings
int timeIntervalFlag;
int gridWidth;
int gridHeight;

// Dynamic variables
Grid grid;
Piece currentPiece;
int lastTimeCheck;

void setup() { 
    // Settings
    timeIntervalFlag = 1400;
    gridWidth = 10;
    gridHeight = 20;
    
    // Dynamic variables
    size(600, 800);
    grid = new Grid();
    currentPiece = new Piece();
}

void draw() {
    if (millis() > lastTimeCheck + timeIntervalFlag) {
        lastTimeCheck = millis();
        updateGameLogic();
    }
    drawEverything();
}
