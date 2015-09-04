import QtQuick 2.0

Grid
{
    id: chessBoard
    x:190 ; y:50
    width: 600
    height: 600
    rows: 8; columns: 8
    property var busyMap: new Array(64)
    spacing: 0
    Repeater
    {
        id: repeater
        model: 64
        delegate: DropPiece  { }
    }
    Component.onCompleted:
    {
        for(var i=0; i<64; ++i)
                        {
                            if(i<16 || i>47)  chessBoard.busyMap[i] = true;
                            else chessBoard.busyMap[i] = false;
                        }
    }
}
