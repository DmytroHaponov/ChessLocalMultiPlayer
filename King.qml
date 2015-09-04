import QtQuick 2.0

DragPiece
{
    id: king
    property int cx
    property int cy
    x:190 + 75*cx
    y:50 + 75*cy
    function go(display)
    {
        var x = display %8;
        var y = Math.floor(display/8)

        if( (Math.abs(x - king.cx) == 1 && (y == king.cy))        ||
                (Math.abs(y - king.cy) == 1 && (x == king.cx))    ||
                (Math.abs(y - king.cy) == 1 &&  Math.abs(x - king.cx) == 1)  )
        {
            chessBoard.busyMap[8*king.cy + king.cx] = false
            king.cx = x
            king.cy = y
            console.log("x is " + king.x)
            console.log("y is " + king.y)
            chessBoard.busyMap[display] = true
            turn = !turn
            return 1
        }
    }
}
