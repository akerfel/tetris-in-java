public class Piece_T extends Piece {

    public Piece_T() {
        super();
        xOffset = 1;
        rgbColor = color(128, 0, 128);
        setupAfterSubclassConstructor();
    }

    void setBlocksBasedOnRotation() {
        switch (rotation) {
        case 0:
            blocks[0] = new PVector(0, 0);
            blocks[1] = new PVector(-1, 1);
            blocks[2] = new PVector(0, 1);
            blocks[3] = new PVector(1, 1);
            break;
        case 1:
            blocks[0] = new PVector(0, 0);
            blocks[1] = new PVector(0, 1);
            blocks[2] = new PVector(1, 1);
            blocks[3] = new PVector(0, 2);
            break;
        case 2:
            blocks[0] = new PVector(-1, 1);
            blocks[1] = new PVector(0, 1);
            blocks[2] = new PVector(1, 1);
            blocks[3] = new PVector(0, 2);
            break;
        case 3:
            blocks[0] = new PVector(0, 0);
            blocks[1] = new PVector(-1, 1);
            blocks[2] = new PVector(0, 1);
            blocks[3] = new PVector(0, 2);
            break;
        }
    }
}
