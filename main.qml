import QtQuick 2.9
import QtQuick.Window 2.2

/*Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
}*/

Image {
    id: root
    source: "file:///Users/Gulce/GitRepos/Windmill/background.png"

    Image {
        id: pole
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        source: "file:///Users/Gulce/GitRepos/Windmill/pole.png"
     }

    Image {
        id: wheel
        anchors.centerIn: parent
        source: "file:///Users/Gulce/GitRepos/Windmill/pinwheel.png"
        Behavior on rotation {
            NumberAnimation {
                duration: 250 //250 ms
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: wheel.rotation += 90
    }
}
