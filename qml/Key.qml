import Felgo 3.0
import QtQuick 2.0

Rectangle {

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: sound.play();
    }

    property variant note
    SoundEffect {
        id: sound
        source: "../assets/"+note+".wav"
    }
}
