public class Grid {
    Block[][] grid;
    int w = gridWidth; // width
    int h = gridHeight; // height
    int blockLength; // side length of each block
  
    public Grid() {
        grid = new Block[w][h];
        blockLength = min(width/(2+w), height/(2+h));
        initializeBlocks();
        setLowestBlocksToStuckAndFilled();
    }
  
    public void initializeBlocks() {
        for (int x = 0; x < w; x++) {
            for (int y = 0; y < h; y++) {
                grid[x][y] = new Block(false, false);
            }
        }
    }
  
    void randomize() {
        for (int x = 0; x < w; x++) {
            for (int y = 0; y < h; y++) {
                if (random(0, 10) < 3) {
                    grid[x][y].isFilled = true;
                }
            }
        }
    }
  
    void setLowestBlocksToStuckAndFilled() {
        for (int x = 0; x < w; x++) {
            grid[x][h-1].isFilled = true;
            grid[x][h-1].isStuck = true;
        }
    }
}
