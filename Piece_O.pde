public class Piece_O extends Piece {
    
    public Piece_O() {
        super();
        xOffset = 0;
        rgbColor = color(255, 255, 0);
        setupAfterSubclassConstructor();
    }
    
    void setBlocksBasedOnRotation() {
        switch (rotation) {
            case 0:
                // The first element represent the block in top row which furthest to the left, for rotation = 0.
                // That block has coordinates (0, 0), and all other blocks have coordinates in relation to that.
                blocks[0] = new PVector(0, 0);
                blocks[1] = new PVector(1, 0);
                blocks[2] = new PVector(0, 1);
                blocks[3] = new PVector(1, 1);
                break;
            case 1:
                blocks[0] = new PVector(0, 0);
                blocks[1] = new PVector(1, 0);
                blocks[2] = new PVector(0, 1);
                blocks[3] = new PVector(1, 1);
                break;
            case 2:
                blocks[0] = new PVector(0, 0);
                blocks[1] = new PVector(1, 0);
                blocks[2] = new PVector(0, 1);
                blocks[3] = new PVector(1, 1);
                break;
            case 3:
                blocks[0] = new PVector(0, 0);
                blocks[1] = new PVector(1, 0);
                blocks[2] = new PVector(0, 1);
                blocks[3] = new PVector(1, 1);
                break;
        }
    }
}
