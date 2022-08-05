void updateGameLogic() {
    if (currentPiece != null) {
        if (!currentPiece.fallOneStep()) {
            currentPiece = new Piece();
        }
    }
}
