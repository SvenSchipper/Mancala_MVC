package nl.servlet;

/**
 * Created by sschipper on 5/24/2017.
 */
import nl.sogyo.mancala.*;

public class GameState {
    private int[] stonesArray = new int[14];
    public Field currentField, firstField;
    private Player currentPlayer, player1;

    GameState()
    {
        player1 = new Player();
        currentPlayer = player1;
        firstField = new Hole(currentPlayer);
        currentField = firstField;
        for(int i = 0; i<14; i++)
        {
            stonesArray[i] = getStones(i);
        }
    }

    private void getPlayer()
    {
        currentPlayer = player1.getCurrentPlayer();
    }

    private void setStones()
    {
        for(int i = 0; i<14; i++)
        {
            stonesArray[i] = currentField.stones;
            currentField = currentField.neighbour;
        }
    }

    private Field getCurrentField(int i)
    {
        for(int j=0; j<i; j++)
        {
            currentField = currentField.neighbour;
        }
        return currentField;
    }
    public int getStones(int i)
    {
        setStones();
        return stonesArray[i];
    }

    void play(int playField)
    {
        currentField = getCurrentField(playField);
        getPlayer();
        currentField.play(currentPlayer);
        currentField = firstField;
    }
}
