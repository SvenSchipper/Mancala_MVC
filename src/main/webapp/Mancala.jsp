<%@ page import="nl.servlet.GameState" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mancala</title>
    <link type='text/css' href='mancala.css' rel='stylesheet'>
</head>
    <body>
    <% GameState state = (GameState) session.getAttribute("state"); %>
        <div id=board>
            <div id=boardLeft>

                <div class= "kalaha">
                    <a class="text"><%=state.getStones(13)%></a>
                </div>
            </div>
            <div id=holes>

                <div id=boardBottom>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(0)%></a>
                        <a href="mancalaServlet?method=play&playField=0" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(1)%></a>
                        <a href="mancalaServlet?method=play&playField=1" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(2)%></a>
                        <a href="mancalaServlet?method=play&playField=2" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(3)%></a>
                        <a href="mancalaServlet?method=play&playField=3" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(4)%></a>
                        <a href="mancalaServlet?method=play&playField=4" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(5)%></a>
                        <a href="mancalaServlet?method=play&playField=5" class="tag"></a>
                    </div>
                </div>

                <div id=boardTop>
                    <div class = "hole">
                        <a class="text"><%=state.getStones(12)%></a>
                        <a href="mancalaServlet?method=play&playField=12" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(11)%></a>
                        <a href="mancalaServlet?method=play&playField=11" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(10)%></a>
                        <a href="mancalaServlet?method=play&playField=10" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(9)%></a>
                        <a href="mancalaServlet?method=play&playField=9" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(8)%></a>
                        <a href="mancalaServlet?method=play&playField=8" class="tag"></a>
                    </div>

                    <div class = "hole">
                        <a class="text"><%=state.getStones(7)%></a>
                        <a href="mancalaServlet?method=play&playField=7" class="tag"></a>
                    </div>
                </div>
            </div>

            <div id=boardRight">
                <div class= "kalaha">
                    <a class="text"><%=state.getStones(6)%></a>
                </div>
            </div>
        </div>
    </body>
</html>