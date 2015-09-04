import QtQuick 2.0

Item
{
    id:root
    property string path
    property string side
    property bool sideturn
    property string display
    width: 75; height: 75

    property string name

    MouseArea
    {
        id: mouseArea
        anchors.centerIn: parent
        anchors.fill: parent
        drag.target: tile

        onReleased:
        {
            if(parent.sideturn === turn)
            {
                if (tile.Drag.target) // check for board limits
                {
                    if(!tile.Drag.target.side) // check for empty tile
                    {
                        if (parent.go(tile.Drag.target.display)) //check whether figure can go there
                        {
                            parent.display = tile.Drag.target.display
                        }
                    }
                    else
                    {
                        if(tile.Drag.target.side !== parent.side) // goes for enemy
                        {
                            if (parent.go(tile.Drag.target.display, tile.Drag.target.side))
                            {
                                parent.display = tile.Drag.target.display
                                tile.Drag.target.side = parent.side
                            }
                        }
                    }
                }
            }
        }
       // Rectangle
        //{
            //id: tile
           // opacity: 0.1
            Image
            {
                id:tile
               // id: currentIm
               // anchors.verticalCenter: parent.verticalCenter
                //anchors.horizontalCenter: parent.horizontalCenter
                //width: parent.width*0.8
                //height: parent.height*0.8
                //anchors.fill: parent
                source:  path
         //   }
            width: 75; height: 75
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            Drag.keys: [ side, sideturn ]
            Drag.active: mouseArea.drag.active
            Drag.hotSpot.x: 32
            Drag.hotSpot.y: 32

            states: State
            {
            when: mouseArea.drag.active
            ParentChange { target: tile; parent: root }
            AnchorChanges { target: tile; anchors.verticalCenter: undefined; anchors.horizontalCenter: undefined }
            }
}
       // }
    }
    DropArea
    {
        id: testDrop
        anchors.fill: parent
        keys: [ ]
        property string side
        property string display
        property int countChange:0

        side : parent.side
        display: parent.display
        onSideChanged:
        {
            countChange++
            if(countChange>1)
            {
                if(side==="black")
                {
                    if(yw>15) {xw = 80}
                    parent.cx = 90
                    parent.x = chessBoard.x + chessBoard.width + 23 + xw
                    parent.y = (yw%8)*75 + 50
                    console.log("killed, x is " + parent.x)
                    console.log("killed, y is " + parent.y)
                    yw++
                }
                else
                {
                    if(yb>15) {xb = 80}
                    parent.cx = 90
                    parent.x = 8 + xb
                    parent.y = (yb%8)*75 +50
                    console.log("killed, x is " + parent.x)
                    console.log("killed, y is " + parent.y)
                    yb++
                }
            }
        }
        Rectangle
        {
            id: rectDr
            anchors.fill: parent
            opacity: 0.1
            states:
                [
                State
                {
                    when: testDrop.containsDrag
                    PropertyChanges
                    {
                        target: rectDr
                        color: "red"
                    }
                }
            ]
        }
    }
}

