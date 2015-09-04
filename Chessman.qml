import QtQuick 2.0

Item
{
    id: itemForChessMan

    property bool turn: false
    property int yw:8
    property int yb:8
    property int xw:0
    property int xb:0
    //rect to show whose turn it is
    //----------------------------------------------------------------------------
    Rectangle
    {
        id: showTurn
        x: chessBoard.x + chessBoard.width/2 - width/2 -60
        y: chessBorder.y/2 - height/2
        width:80; height: 30
        color: "#deea2d"
        radius: 5
        border.color: "#ca2020"
        border.width: 5
        Text
        {
            id: showTurnText
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "#22824c"
            text: (turn === true) ? "black move" : "red move"
            font.pointSize: 10
        }
    }
    // rect that shows score
    Rectangle
    {
        id: score
        x: chessBoard.x + chessBoard.width/2 - width/2 + 60
        y: chessBorder.y/2 - height/2
        width:150; height: 30
        color: "#f30c0c"
        radius: 5
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#f30c0c";
            }
            GradientStop {
                position: 1.00;
                color: "#111010";
            }
        }
        border.color: "#f0f1f5"
        border.width: 5
        Text
        {
            id: showScore
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "grey"
            text: "Red " + (yb - 8) + " vs Black " + (yw - 8)
            font.bold: true
            styleColor: "#d7cfcf"
            font.pointSize: 11
        }
    }
    // black Pawn 1
    //=============================================================================
    Pawn
    {
        id: bPawn1
        cy:1
        side: "black"
        sideturn: true
        path: "/images/bPawn.png"
        display: "8"
        name: "bPawn1"
    }
    // black Pawn 2
    //=============================================================================
    Pawn
    {
        cx:1
        cy:1
        id: bPawn2
        side: "black"
        sideturn: true
        path: "/images/bPawn.png"
        display: "9"
    }
    // black Pawn 3
    //=============================================================================
    Pawn
    {
        id: bPawn3
        cx:2
        cy:1
        side: "black"
        sideturn: true
        path: "/images/bPawn.png"
        display: "10"
    }
    // black Pawn 4
    //=============================================================================
    Pawn
    {
        id: bPawn4
        cx:3
        cy:1
        side: "black"
        sideturn: true
        path: "/images/bPawn.png"
        display: "11"
    }
    // black Pawn 5
    //=============================================================================
    Pawn
    {
        id: bPawn5
        cx:4
        cy:1
        side: "black"
        sideturn: true
        path: "/images/bPawn.png"
        display: "12"
    }
    // black Pawn 6
    //=============================================================================
    Pawn
    {
        id: bPawn6
        cx:5
        cy:1
        side: "black"
        sideturn: true
        path: "/images/bPawn.png"
        display: "13"
    }
    // black Pawn 7
    //=============================================================================
    Pawn
    {
        id: bPawn7
        cx:6
        cy:1
        side: "black"
        sideturn: true
        path: "/images/bPawn.png"
        display: "14"
    }
    // black Pawn 8
    //=============================================================================
    Pawn
    {
        id: bPawn8
        cx:7
        cy:1
        side: "black"
        sideturn: true
        path: "/images/bPawn.png"
        display: "15"
    }
    // white Pawn 1
    //=============================================================================
    Pawn
    {
        cy:6
        id: wPawn1
        side: "w"
        sideturn: false
        path: "/images/wPawn.png"
        display: "48"
    }
    // white Pawn 2
    //=============================================================================
    Pawn
    {
        id: wPawn2
        cx:1
        cy:6
        side: "w"
        sideturn: false
        path: "/images/wPawn.png"
        display: "49"
    }
    // white Pawn 3
    //=============================================================================
    Pawn
    {
        id: wPawn3
        cx:2
        cy:6
        side: "w"
        sideturn: false
        path: "/images/wPawn.png"
        display: "50"
    }
    // white Pawn 4
    //=============================================================================
    Pawn
    {
        id: wPawn4
        cx:3
        cy:6
        side: "w"
        sideturn: false
        path: "/images/wPawn.png"
        display: "51"
    }
    // white Pawn 5
    //=============================================================================
    Pawn
    {
        id: wPawn5
        cx:4
        cy:6
        side: "w"
        sideturn: false
        path: "/images/wPawn.png"
        display: "52"
    }
    // white Pawn 6
    //=============================================================================
    Pawn
    {
        id: wPawn6
        cx:5
        cy:6
        side: "w"
        sideturn: false
        path: "/images/wPawn.png"
        display: "53"
    }
    // white Pawn 7
    //=============================================================================
    Pawn
    {
        id: wPawn7
        cx:6
        cy:6
        side: "w"
        sideturn: false
        path: "/images/wPawn.png"
        display: "54"
    }
    // white Pawn 8
    //=============================================================================
    Pawn
    {
        id: wPawn8
        cx:7
        cy:6
        side: "w"
        sideturn: false
        path: "/images/wPawn.png"
        display: "55"
    }
    // white Knight 1
    //=============================================================================
    Knight
    {
        cx:1
        cy:7
        //        property bool ok: false
        id: wKnight1
        side: "w"
        sideturn: false
        path: "/images/wKnight.png"
        display: "57"
    }
    // white Knight 2
    //=============================================================================
    Knight
    {
        cx:6
        cy:7
        //        property bool ok: false
        id: wKnight2
        side: "w"
        sideturn: false
        path: "/images/wKnight.png"
        display: "62"
    }
    // black Knight 1
    //=============================================================================
    Knight
    {
        cx:1
        //        property bool ok: false
        id: bKnight1
        side: "black"
        sideturn: true
        path: "/images/bKnight.png"
        display: "1"
    }
    // black Knight 2
    //=============================================================================
    Knight
    {
        cx:6
        //        property bool ok: false
        id: bKnight2
        side: "black"
        sideturn: true
        path: "/images/bKnight.png"
        display: "6"
    }
    // black King
    //=============================================================================
    King
    {
        cx:4
        //        property bool ok: false
        id: bKing
        side: "black"
        sideturn: true
        path: "/images/bKing.png"
        display: "4"
    }
    // white King
    //=============================================================================
    King
    {
        cx:4
        cy:7
        //        property bool ok: false
        id: wKing
        side: "w"
        sideturn: false
        path: "/images/wKing.png"
        display: "60"
    }
    // white Elephant 1
    //=============================================================================
    Elephant
    {
        cx:5
        cy:7
        //        property bool ok: false
        id: wElephant1
        side: "w"
        sideturn: false
        path: "/images/wElephant.png"
        display: "61"
    }
    // white Elephant 2
    //=============================================================================
    Elephant
    {
        cx:2
        cy:7
        //        property bool ok: false
        id: wElephant2
        side: "w"
        sideturn: false
        path: "/images/wElephant.png"
        display: "58"
    }
    // black Elephant 1
    //=============================================================================
    Elephant
    {
        cx:5
        //        property bool ok: false
        id: bElephant1
        side: "black"
        sideturn: true
        path: "/images/bElephant.png"
        display: "5"
    }
    // black Elephant 2
    //=============================================================================
    Elephant
    {
        cx:2
        //        property bool ok: false
        id: bElephant2
        side: "black"
        sideturn: true
        path: "/images/bElephant.png"
        display: "2"
    }
    // black Castle 1
    //=============================================================================
    Castle
    {
        //        property bool ok: false
        id: bCastle
        side: "black"
        sideturn: true
        path: "/images/bCastle.png"
        display: "0"
    }
    // black Castle 2
    //=============================================================================
    Castle
    {
        cx:7
        //        property bool ok: false
        id: bCastle2
        side: "black"
        sideturn: true
        path: "/images/bCastle.png"
        display: "7"
    }
    // white Castle 1
    //=============================================================================
    Castle
    {
        cy:7
        //        property bool ok: false
        id: wCastle
        side: "w"
        sideturn: false
        path: "/images/wCastle.png"
        display: "56"
    }
    // white Castle 2
    //=============================================================================
    Castle
    {
        cx:7
        cy:7
        //        property bool ok: false
        id: wCastle2
        side: "w"
        sideturn: false
        path: "/images/wCastle.png"
        display: "63"
    }
    // white Queen
    //=============================================================================
    Queen
    {
        cx:3
        cy:7
        //        property bool ok: false
        id: wQueen
        side: "w"
        sideturn: false
        path: "/images/wQueen.png"
        display: "59"
    }
    // black Queen
    //=============================================================================
    Queen
    {
        cx:3
        //        property bool ok: false
        id: bQueen
        side: "black"
        sideturn: true
        path: "/images/bQueen.png"
        display: "3"
    }
}
