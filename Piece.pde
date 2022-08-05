public class Piece {
    int x;
    int y;
    PVector[] blocks;
    int rotation;        // Between 0 and 3
    
    public Piece() {
        x = 5;
        y = 0;
        blocks = new PVector[4];
        rotation = 0;
        setBlocksBasedOnRotation();
        if (pieceIsCollidingWithFilledBlock()) {
            fillBlocks();
            gameOver = true;  
        }
    }
    
    
    // Needs to be overriden by subclasses
    void setBlocksBasedOnRotation() {
        
    }
    
    // Return true if rotation was succesful, otherwise false.
    boolean tryToRotate() {
        unfillBlocks();
        rotate();
        
        if (pieceIsOutsideGrid() || pieceIsCollidingWithFilledBlock()) {
            antiRotate();
            fillBlocks();
            return false;    
        }
        
        setBlocksBasedOnRotation();
        fillBlocks();
        return true;
    }
    
    void rotate() {
        rotation++;
        rotation = rotation % 4;
        setBlocksBasedOnRotation();
    }
    
    void antiRotate() {
        rotation--;
        rotation = rotation % 4;
        if (rotation == -1) {
            rotation = 3;    
        }
        setBlocksBasedOnRotation();
    }
    
    // Returns true if the piece collides with an already filled block.
    // NOTE: You should probably only call this function if you first called unfillBlocks(), and then moved the piece.
    boolean pieceIsCollidingWithFilledBlock() {
        for (int i = 0; i < blocks.length; i++) {
            if (blockIsFilled(i)) {
                return true;    
            }
        }
        return false;
    }
    
    boolean blockIsFilled(int blockIndex) {
        return grid.grid[getXCoordForBlock(blockIndex)][getYCoordForBlock(blockIndex)].isFilled;
    }
    
    boolean pieceIsOutsideGrid() {
        for (int i = 0; i < blocks.length; i++) {
            if (blockIsOutsideGrid(i)) {
                return true;    
            }
        }
        return false;
    }
    
    boolean blockIsOutsideGrid(int blockIndex) {
        if (getXCoordForBlock(blockIndex) < 0 || getXCoordForBlock(blockIndex) > gridWidth - 1) {
            return true;    
        }
        if (getYCoordForBlock(blockIndex) < 0 || getYCoordForBlock(blockIndex) > gridHeight - 1) {
            return true;    
        }
        return false;
    }
    
    // Return true if piece moved to the left, otherwise false.
    boolean tryToMoveLeft() {
        unfillBlocks();
        x--;
        if (pieceIsOutsideGrid() || pieceIsCollidingWithFilledBlock()) {
            x++;  
            fillBlocks();
            return false;
        }
        fillBlocks();
        return true;
    }
    
    // Return true if piece moved to the right, otherwise false.
    boolean tryToMoveRight() {
        unfillBlocks();
        x++;
        if (pieceIsOutsideGrid() || pieceIsCollidingWithFilledBlock()) {
            x--;  
            fillBlocks();
            return false;
        }
        fillBlocks();
        return true;
    }
    
    int getXCoordForBlock(int blockIndex) {
        return x + int(blocks[blockIndex].x);
    }
    
    int getYCoordForBlock(int blockIndex) {
        return y + int(blocks[blockIndex].y);
    }
    
    void unfillBlocks() {
        for (int i = 0; i < 4; i++) {
            grid.grid[x + int(blocks[i].x)][y + int(blocks[i].y)].isFilled = false;
        }
    }
    
    void fillBlocks() {
        for (int i = 0; i < 4; i++) {
            grid.grid[x + int(blocks[i].x)][y + int(blocks[i].y)].isFilled = true;
        }
    }
    
    boolean fallOneStep() {
        unfillBlocks();
        y++;
        if (pieceIsOutsideGrid() || pieceIsCollidingWithFilledBlock()) {
            y--;  
            fillBlocks();
            return false;
        }
        fillBlocks();
        return true;
    }
    
    int getXCoordForLeftmostBlock() {
        int leftmostX = gridWidth - 1;
        
        for (int i = 0; i < blocks.length; i++) {
            if (x + blocks[i].x < leftmostX) {
                leftmostX = int(x + blocks[i].x);
            }
        }
        return leftmostX;
    }
    
    int getXCoordForRightmostBlock() {
        int rightmostX = 0;
        
        for (int i = 0; i < blocks.length; i++) {
            if (x + blocks[i].x > rightmostX) {
                rightmostX = int(x + blocks[i].x);
            }
        }
        return rightmostX;
    }
}
