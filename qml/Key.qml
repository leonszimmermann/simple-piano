import Felgo 3.0
import QtQuick 2.0

Rectangle {

    id: key

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: sound.play()
        onReleased: pressAnimation.start()
    }

    property variant note
    SoundEffect {
        id: sound
        source: "../assets/"+note+".wav"
    }

    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: key.color
        }

        GradientStop {
            position: 1.0
            color: key.color
            ColorAnimation on color {
                id: pressAnimation
                from: "silver"
                to: key.color
                duration: 500
            }
            }
        }


}
