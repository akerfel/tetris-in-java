public class Piece_L extends Piece {

    public Piece_L() {
        super();
        xOffset = 2;
        rgbColor = color(255, 127, 0);
        setupAfterSubclassConstructor();
    }

    void setBlocksBasedOnRotation() {
        switch (rotation) {
        case 0:
            blocks[0] = new PVector(0, 0);
            blocks[1] = new PVector(-2, 1);
            blocks[2] = new PVector(-1, 1);
            blocks[3] = new PVector(0, 1);
            break;
        case 1:
            blocks[0] = new PVector(-1, 0);
            blocks[1] = new PVector(-1, 1);
            blocks[2] = new PVector(-1, 2);
            blocks[3] = new PVector(0, 2);
            break;
        case 2:
            blocks[0] = new PVector(-2, 1);
            blocks[1] = new PVector(-1, 1);
            blocks[2] = new PVector(0, 1);
            blocks[3] = new PVector(-2, 2);
            break;
        case 3:
            blocks[0] = new PVector(-2, 0);
            blocks[1] = new PVector(-1, 0);
            blocks[2] = new PVector(-1, 1);
            blocks[3] = new PVector(-1, 2);
            break;
        }
    }
}
