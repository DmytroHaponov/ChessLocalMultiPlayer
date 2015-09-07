import QtQuick 2.0
import QtQuick.Controls 1.3

Item
{
    id:screen1
    width: 1024
    height: 768
    Rectangle
    {
        id:chessBorder1
        x:185;y:45
        width: 610
        height: 610
        border.width: 5
        border.color: "#0d1a7c"
    }

    Rectangle
    {
        id:wKilledRec
        x:wKilled.x + 20
        y: wKilled.y - height
        height:20
        width: 80
        Text
        {
            text: "killed black figures"
        }
    }

    Rectangle
    {
        id:wKilled
        x: 3
        y: 45
        width: 165
        height: 610
        border.width: 3
        border.color: "red"
    }
    Rectangle
    {
        id:bKilledRec
        x:bKilled.x + 20
        y: bKilled.y - height
        height:20
        width: 80
        Text
        {
            text: "killed red figures"
        }
    }
    Rectangle
    {
        id:bKilled
        x: chessBorder.x + chessBorder.width + 13
        y: 45
        width: 165
        height: 610
        border.width: 3
        border.color: "black"
    }
    Rectangle
    {
        id:chessBorder
        x:185;y:45
        width: 610
        height: 610
        border.width: 5
        border.color: "#0d1a7c"
    }

    ChessBoard{id: chessBoard; }
    Loader {id: chessManLoader}
    MouseArea
    {
        id:start
        x:parent.width - width
        y:200
        width:50
        height: 20
        onClicked:
        {
            chessManLoader.source = "Screen2.qml"
            start.visible = false
            load.visible = false
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
                text: "Start"
            }
        }
    }
    MouseArea
    {
        id:load
        x:parent.width - width
        y:start.y + start.height + 10
        width:50
        height: 20
        onClicked:
        {
            chessManLoader.source = "Screen3.qml"
           // start.visible = false
            //load.visible = false
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
                text: "Load"
            }
        }
    }

    //  Chessman{id: itemForChessman}
}

