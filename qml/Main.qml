import Felgo 3.0
import QtQuick 2.0


GameWindow {

    id: gameWindow

    BackgroundImage {
        source: 'https://images.pexels.com/photos/935875/pexels-photo-935875.jpeg'
        anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.Stretch
    }

        Row {
            id: white
            anchors.fill: parent
            anchors.centerIn: parent
            spacing: width/8/6
            width: parent.width

            Repeater {
                model: ["c4","d4","e4","f4","g4","a4","b4"]

                Key {
                    width: parent.width/8
                    height: parent.height
                    color: 'white'
                    note: modelData
                }
            }

        }

        Row {
            id: left_black
            height: parent.height*0.6
            spacing: parent.width/8/6
            anchors.left: parent.left
            anchors.leftMargin: parent.width/8/2+parent.width/8/6/2

            Repeater {
                model: ["c-4","d-4"]

                Key {
                    width: gameWindow.width/8
                    height: parent.height
                    color:'black'
                    note: modelData
                }
            }
        }

        Row {
            id: right_black
            height: parent.height*0.6
            spacing: parent.width/8/6
            anchors.right: parent.right
            anchors.rightMargin: parent.width/8/2

            Repeater {
                model: ["f-4", "g-4", "a-4"]

                Key {
                    width: gameWindow.width/8
                    height: parent.height
                    color:'black'
                    note: modelData
                }
            }
        }
}
