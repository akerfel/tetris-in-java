public class Block {
    boolean isFilled;
    boolean isStuck;
    color rgbColor;
  
    public Block(boolean isFilled, boolean isStuck) {
        this.isFilled = isFilled;
        this.isStuck = isStuck;
        this.rgbColor = color(255);
    }
}
