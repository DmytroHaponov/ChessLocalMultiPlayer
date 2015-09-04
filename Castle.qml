import QtQuick 2.0

DragPiece
{
    id: castle
    property int cx
    property int cy
    x:190 + 75*cx
    y:50 + 75*cy
    function go(display)
    {
        var x = display %8;
        var y = Math.floor(display/8)
            if( (y == castle.cy) && (x != castle.cx))
            {
                if (x>castle.cx)
                {
                    for(var i=castle.cx + 1; i<x; ++i)
                    {
                        if(chessBoard.busyMap[8*y + i]) return 0
                    }
                }
                else
                {
                    for(var j = castle.cx - 1; j>x; --j)
                    {
                        if(chessBoard.busyMap[8*y + j]) return 0
                    }
                }
                chessBoard.busyMap[8*castle.cy + castle.cx] = false
                castle.cx = x
                castle.cy = y
                console.log("x is " + castle.x)
                console.log("y is " + castle.y)
                chessBoard.busyMap[display] = true
                turn = !turn
                return 1
            }


            if((x == castle.cx) && (y != castle.cy))
            {
                if (y>castle.cy)
                {
                    for(var p=castle.cy + 1; p<y; ++p)
                    {
                       if(chessBoard.busyMap[8*p + x]) return 0
                    }
                }
                else
                {
                    for(var q=castle.cy - 1; q>y; --q)
                    {
                        if(chessBoard.busyMap[8*q + x]) return 0
                    }
                }
                chessBoard.busyMap[8*castle.cy + castle.cx] = false
                castle.cx = x
                castle.cy = y
                console.log("x is " + castle.x)
                console.log("y is " + castle.y)
                chessBoard.busyMap[display] = true
                turn = !turn
                return 1
            }
    }
}
