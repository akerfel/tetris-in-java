void updateGameLogic() {
    if (currentPiece != null) {
        if (!currentPiece.fallOneStep()) {
            currentPiece = null;
        }
    }
}
