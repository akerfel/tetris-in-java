public class Piece_S extends Piece {

    public Piece_S() {
        super();
        xOffset = 1;
        rgbColor = color(0, 255, 0);
        setupAfterSubclassConstructor();
    }

    void setBlocksBasedOnRotation() {
        switch (rotation) {
        case 0:
            blocks[0] = new PVector(0, 0);
            blocks[1] = new PVector(1, 0);
            blocks[2] = new PVector(-1, 1);
            blocks[3] = new PVector(0, 1);
            break;
        case 1:
            blocks[0] = new PVector(0, 0);
            blocks[1] = new PVector(0, 1);
            blocks[2] = new PVector(1, 1);
            blocks[3] = new PVector(1, 2);
            break;
        case 2:
            blocks[0] = new PVector(0, 1);
            blocks[1] = new PVector(1, 1);
            blocks[2] = new PVector(-1, 2);
            blocks[3] = new PVector(0, 2);
            break;
        case 3:
            blocks[0] = new PVector(-1, 0);
            blocks[1] = new PVector(-1, 1);
            blocks[2] = new PVector(0, 1);
            blocks[3] = new PVector(0, 2);
            break;
        }
    }
}
