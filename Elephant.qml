import QtQuick 2.0

DragPiece
{
    id: elephant
    property int cx
    property int cy
    x:190 + 75*cx
    y:50 + 75*cy
    function go(display)
    {
        var x = display %8;
        var y = Math.floor(display/8)
        
        if(Math.abs(y - elephant.cy) ===  Math.abs(x - elephant.cx))
        {
            if(y > elephant.cy && x > elephant.cx)
            {
                for(var i = elephant.cy + 1, j = elephant.cx+1; i<y; ++i, ++j)
                {
                    if(chessBoard.busyMap[8*i + j]) return 0
                }
            }
            if(y < elephant.cy && x < elephant.cx)
            {
                for(i = elephant.cy - 1, j = elephant.cx - 1; i>y; --i, --j)
                {
                    if(chessBoard.busyMap[8*i + j]) return 0
                }
            }
            if(y > elephant.cy && x < elephant.cx)
            {
                for(i = elephant.cy + 1, j = elephant.cx - 1; i<y; ++i, --j)
                {
                    if(chessBoard.busyMap[8*i + j]) return 0
                }
            }
            if(y < elephant.cy && x > elephant.cx)
            {
                for(i = elephant.cy - 1, j = elephant.cx + 1; i>y; --i, ++j)
                {
                    if(chessBoard.busyMap[8*i + j]) return 0
                }
            }
            chessBoard.busyMap[8*elephant.cy + elephant.cx] = false
            elephant.cx = x
            elephant.cy = y
            console.log("x is " + elephant.x)
            console.log("y is " + elephant.y)
            chessBoard.busyMap[display] = true
            turn = !turn
            return 1
        }
    }
}
