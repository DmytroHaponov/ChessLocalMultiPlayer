import QtQuick 2.0

DragPiece
{
    id: knight
    property int cx
    property int cy
    x:190 + 75*cx
    y:50 + 75*cy
    function go(display)
    {
        var x = display %8;
        var y = Math.floor(display/8)

        if(Math.abs(x - knight.cx) == 1 && Math.abs(y - knight.cy) == 2 ||
           Math.abs(x - knight.cx) == 2 && Math.abs(y - knight.cy) == 1)
        {
            chessBoard.busyMap[8*knight.cy + knight.cx] = false
            knight.cx = x
            knight.cy = y
            console.log("x is " + knight.x)
            console.log("y is " + knight.y)
            chessBoard.busyMap[display] = true
            turn = !turn
            return 1
        }
    }
}
