import Felgo 3.0
import QtQuick 2.0

Item {
    property int tile_width: dp(40)
    property int tile_distance: dp(5)
    property int number: 4

    width: tile_width*7+tile_distance*6
    height: gameWindow.height



    Row {
        id: white
        anchors.fill: parent
        anchors.centerIn: parent
        spacing: tile_distance
        width: parent.width
        height: gameWindow.height

        Repeater {
            model: ["c","d","e","f","g","a","b"]

            Key {
                width: tile_width
                height: gameWindow.height
                color: 'white'
                note: modelData+number
            }
        }

    }

    Row {
        id: black
        height: gameWindow.height*0.5
        spacing: tile_distance
        anchors.left: parent.left
        anchors.leftMargin: (tile_width+tile_distance)/2

        Repeater {
            model: ["c-","d-"]

            Key {
                width: tile_width
                height: parent.height
                color:'black'
                note: modelData+number
            }
        }

        Item {
            width: tile_width
            height: parent.height
        }


        Repeater {
            model: ["f-", "g-", "a-"]

            Key {
                width: tile_width
                height: parent.height
                color:'black'
                note: modelData+number
            }
        }
    }
}
