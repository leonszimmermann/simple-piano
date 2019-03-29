import Felgo 3.0
import QtQuick 2.0

GameWindow {
    id: gameWindow
    Scene {
        id: scene
        width: 100
        height: 100

        property color color: "#ffffff"
        Rectangle {
            width: 100/8
            height: 100
            color: scene.color
            anchors.horizontalCenter: scene.horizontalCenter
            MouseArea {
              anchors.fill: parent
              onClicked: {
                scene.color = "#000000"
              }
            }
        }
    }

}
