import QtQuick 2.0

DragPiece
{
    id: queen
    property int cx
    property int cy
    x:190 + 75*cx
    y:50 + 75*cy
    function go(display)
    {
        var x = display %8;
        var y = Math.floor(display/8)

        //go like Elephant
//======================================================================
        if(Math.abs(y - queen.cy) ===  Math.abs(x - queen.cx))
        {
            if(y > queen.cy && x > queen.cx)
            {
                for(var i = queen.cy + 1, j = queen.cx+1; i<y; ++i, ++j)
                {
                    if(chessBoard.busyMap[8*i + j]) return 0
                }
            }
            if(y < queen.cy && x < queen.cx)
            {
                for(i = queen.cy - 1, j = queen.cx - 1; i>y; --i, --j)
                {
                    if(chessBoard.busyMap[8*i + j]) return 0
                }
            }
            if(y > queen.cy && x < queen.cx)
            {
                for(i = queen.cy + 1, j = queen.cx - 1; i<y; ++i, --j)
                {
                    if(chessBoard.busyMap[8*i + j]) return 0
                }
            }
            if(y < queen.cy && x > queen.cx)
            {
                for(i = queen.cy - 1, j = queen.cx + 1; i>y; --i, ++j)
                {
                    if(chessBoard.busyMap[8*i + j]) return 0
                }
            }
            chessBoard.busyMap[8*queen.cy + queen.cx] = false
            queen.cx = x
            queen.cy = y
            console.log("x is " + queen.x)
            console.log("y is " + queen.y)
            chessBoard.busyMap[display] = true
            turn = !turn
            return 1
        }
          //go like Castle
        //=========================================================================================
        if( (y == queen.cy) && (x != queen.cx))
        {
            if (x>queen.cx)
            {
                for(i=queen.cx + 1; i<x; ++i)
                {
                    if(chessBoard.busyMap[8*y + i]) return 0
                }
            }
            else
            {
                for(j = queen.cx - 1; j>x; --j)
                {
                    if(chessBoard.busyMap[8*y + j]) return 0
                }
            }
            chessBoard.busyMap[8*queen.cy + queen.cx] = false
            queen.cx = x
            queen.cy = y
            console.log("x is " + queen.x)
            console.log("y is " + queen.y)
            chessBoard.busyMap[display] = true
            turn = !turn
            return 1
        }
        if((x == queen.cx) && (y != queen.cy))
        {
            if (y>queen.cy)
            {
                for(var p=queen.cy + 1; p<y; ++p)
                {
                    if(chessBoard.busyMap[8*p + x]) return 0
                }
            }
            else
            {
                for(var q=queen.cy - 1; q>y; --q)
                {
                    if(chessBoard.busyMap[8*q + x]) return 0
                }
            }
            chessBoard.busyMap[8*queen.cy + queen.cx] = false
            queen.cx = x
            queen.cy = y
            console.log("x is " + queen.x)
            console.log("y is " + queen.y)
            chessBoard.busyMap[display] = true
            turn = !turn
            return 1
        }
    }
}
