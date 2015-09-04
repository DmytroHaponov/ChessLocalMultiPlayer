import QtQuick 2.0

DropArea
{
    id: dragTarget
    property int display
    property string side
    property bool sideturn
    width: chessBoard.width/8; height: chessBoard.height/8
    display: index

    Rectangle
    {
        id: dropRectangle
        width: parent.width
        height: parent.height        
        color:
        {
              (display %8 + Math.floor(display/8)) % 2 === 1 ? "black" : "red"
        }
        Text
        {
            color: "#41e613"
            text: index
        }
        states:
        [
            State
            {
                when: dragTarget.containsDrag
                PropertyChanges
                {
                    target: dropRectangle
                    color: "grey"
                }
            }
        ]
    }
}

