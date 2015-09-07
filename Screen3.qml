import QtQuick 2.0

Item
{
    MouseArea
    {
        id: prev
        x:screen1.width - width
        y: load.y + load.height + 10
        width:50
        height: 20
        //        onClicked:
        //        {
        //              --turncount
        //            parent.load(turncount)
        //        }
        Rectangle
        {
            anchors.fill: parent
            color: "#d1cccc"
            border.color: "black"
            Text
            {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text: "Prev"
            }
        }
    }
    MouseArea
    {
        id: next
        x:screen1.width - width
        y: prev.y + prev.height + 10
        width:50
        height: 20
//        onClicked:
//        {
//              ++turncount
//            parent.load(turncount)
//        }
        Rectangle
        {
            anchors.fill: parent
            color: "#d1cccc"
            border.color: "black"
            Text
            {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text: "Next"
            }
        }
    }
//    Component.onCompleted:
//    {
//        start.visible = true
//        load.visible = true
//    }
}
