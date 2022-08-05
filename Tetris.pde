Grid grid;
Piece currentPiece;
int lastTimeCheck;
int timeIntervalFlag = 800;

void setup() { 
    size(600, 800);
    grid = new Grid();
    
    currentPiece = new Piece();
}

void draw() {
    if (millis() > lastTimeCheck + timeIntervalFlag) {
        lastTimeCheck = millis();
        updateGameLogic();
        drawEverything();
    }
}
