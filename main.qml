import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    visible: true
    title: qsTr("memeq")
    minimumWidth: 1280
    minimumHeight: 720

    RowLayout {
        anchors.fill: parent
        spacing: 6

        Rectangle {
            color: 'gray'
            Layout.preferredWidth: parent.width * 0.8
            Layout.preferredHeight: parent.height


            GridLayout {
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width
                anchors.centerIn: parent

                Loader {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredHeight: 500
                    Layout.preferredWidth: 500
                    source: app_state.isImageLoaded ? "canvas.qml" : "filepicker.qml"
                }
            }


        }

        Rectangle {
            Layout.preferredWidth: parent.width * 0.2
            Layout.preferredHeight: parent.height
        }

    }

}
