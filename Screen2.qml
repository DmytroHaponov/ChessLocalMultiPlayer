import QtQuick 2.0
import QtQuick.Controls 1.3

Item
{
    Chessman {id: itemForChessMan}
    MouseArea
    {
        id: stop
        x:screen1.width - width
        y:200
        width:50
        height: 20
        onClicked:
        {
            chessManLoader.source = ""
            start.visible = true
            load.visible = true
        }
        Rectangle
        {
            anchors.fill: parent
            color: "#d1cccc"
            border.color: "black"
            Text
            {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text: "Stop"
            }
        }
    }
    MouseArea
    {
        id: save
        x:screen1.width - width
        y:stop.y + stop.height + 10
        width:50
        height: 20
        onClicked:
        {
            chessManLoader.source = ""
           // parent.visible = true
        }
        Rectangle
        {
            anchors.fill: parent
            color: "#d1cccc"
            border.color: "black"
            Text
            {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text: "Save"
            }
        }
    }
}

