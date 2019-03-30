import Felgo 3.0
import QtQuick 2.0


GameWindow {
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
                    color: "#ffffff"
                    note: modelData
                }


            }

        }



}
