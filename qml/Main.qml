import Felgo 3.0
import QtQuick 2.0
import QtQuick.Controls 1.4

GameWindow {

    id: gameWindow

    BackgroundImage {
        source: 'https://images.pexels.com/photos/935875/pexels-photo-935875.jpeg'
        anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.Stretch
    }

    ScrollView {

        height: parent.height
        width: parent.width

        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff

        Row {
            property var octaves: [4, 5]
            property int tile_width: dp(40)
            property int tile_distance: dp(5)

            width: octaves.length*7*(tile_width+tile_distance)
            height: gameWindow.height

            spacing: tile_distance

            Repeater {
                model: parent.octaves

                PianoOctave {
                    number: modelData
                }
            }
        }

    }
}
