package nl.sogyo.mancala;

public class Player
{
    private Player currentPlayer;
    //private Player player1;
    Player opponent, player1;

    boolean turn;

    public Player()
    {
        //currentPlayer = this;
        player1 = this;
        turn = true;
        opponent = new Player(this);
    }

    private Player(Player player1)
    {
        opponent = player1;
        turn = false;
    }

    void switchTurn()
    {
//      currentPlayer = currentPlayer.opponent;
        this.turn = !turn;
        opponent.turn = !turn;
    }

    void finishGame()
    {
        this.turn = false;
        opponent.turn = false;
    }

    public Player getCurrentPlayer()
    {
        if(player1.turn)
        {
            return player1;
        }
        else
        {
            return player1.opponent;
        }
    }
}
