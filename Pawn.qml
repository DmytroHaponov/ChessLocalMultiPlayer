import QtQuick 2.0

DragPiece
{
    id: pawn
    property int cx
    property int cy
    x:190 + 75*cx
    y:50 + 75*cy

    function go(display, kill)
    {
        var x = display %8
        var y = Math.floor(display/8)
        if (!kill)
        {
            if(side==="black")
            {
                if(y == (pawn.cy + 1) && pawn.cx === x)
                {
                    chessBoard.busyMap[8*pawn.cy + pawn.cx] = false; //console.log("released " + (8*pawn.cy + pawn.cx))
                    pawn.cy = y
                    console.log(name + " " + pawn.x + " " + pawn.y)
                    turn = !turn
                    chessBoard.busyMap[display] = true; //console.log("occupied " + display)
                    return 1
                }
                if (pawn.cy === 1 && y === (pawn.cy + 2) && pawn.cx === x)
                {
                    if(chessBoard.busyMap[8*(pawn.cy + 1) + pawn.cx]) return 0
                    chessBoard.busyMap[8*pawn.cy + pawn.cx] = false; //console.log("released " + (8*pawn.cy + pawn.cx))
                    pawn.cy = y
                    console.log("x is " + pawn.x)
                    console.log("y is " + pawn.y)
                    turn = !turn
                    chessBoard.busyMap[display] = true; //console.log("occupied " + display)
                    return 1
                }
            }
            else
            {
                if(y == (pawn.cy - 1) && pawn.cx === x)
                {
                    chessBoard.busyMap[8*pawn.cy + pawn.cx] = false; //console.log("released " + (8*pawn.cy + pawn.cx))
                    pawn.cy = y
                    console.log("x is " + pawn.x)
                    console.log("y is " + pawn.y)
                    turn = !turn
                    chessBoard.busyMap[display] = true; //console.log("occupied " + display)
                    return 1
                }
                if (pawn.cy === 6 && y === (pawn.cy - 2) && pawn.cx === x)
                {
                    if(chessBoard.busyMap[8*(pawn.cy - 1) + pawn.cx]) return 0
                    chessBoard.busyMap[8*pawn.cy + pawn.cx] = false; //console.log("released " + (8*pawn.cy + pawn.cx))
                    pawn.cy = y
                    console.log("x is " + pawn.x)
                    console.log("y is " + pawn.y)
                    turn = !turn
                    chessBoard.busyMap[display] = true; //console.log("occupied " + display)
                     return 1
                }
            }
        }
        else
        {
            if(side==="black")
            {
                  if(y === (pawn.cy + 1) && (Math.abs(x - pawn.cx) == 1))
                {
                    chessBoard.busyMap[8*pawn.cy + pawn.cx] = false;// console.log("released " + (8*pawn.cy + pawn.cx))
                    pawn.cy = y
                    pawn.cx = x
                      console.log("x is " + pawn.x)
                      console.log("y is " + pawn.y)
                    turn = !turn
                    chessBoard.busyMap[display] = true; //console.log("occupied " + display)
                    return 1
                }
            }
            else
            {
                if(y === (pawn.cy - 1) && Math.abs(x - pawn.cx) == 1)
                {
                    chessBoard.busyMap[8*pawn.cy + pawn.cx] = false;// console.log("released " + (8*pawn.cy + pawn.cx))
                    pawn.cy = y
                    pawn.cx = x
                    console.log("x is " + pawn.x)
                    console.log("y is " + pawn.y)
                    turn = !turn
                    chessBoard.busyMap[display] = true; //console.log("occupied " + display)
                    return 1
                }
            }
        }
    }
}

