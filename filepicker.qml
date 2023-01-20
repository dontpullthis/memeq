import QtQuick 2.0
import QtQuick.Controls 1.4

import QtQuick.Layouts 1.15

Rectangle {
    Layout.preferredWidth: parent.width
    Layout.preferredHeight: parent.height
    color: 'lightgrey'

    ColumnLayout {
        Text{
          text: "Please import a base image. You can:"
        }
        Text{
          text: "Import an image from website"
        }
        Text{
          text: "Choose a file on your local drive"
        }
        Text{
          text: "Paste an image using CTRL+V"
        }
        Text{
          text: "Drag-and-drop an image into this area"
        }

        Text{
          text: "Import from local filesystem"
        }
        RowLayout {
            TextField {
                placeholderText: qsTr("C:\\Users\\Me\\Images\\123.jpg")
                Layout.fillWidth: true
            }

            Button {
                text: "Browse..."
                Layout.fillWidth: true
            }

        }

        Text{
          text: "Import from remote service"
        }
        RowLayout {
            TextField {
                placeholderText: qsTr("https://example.com/path/to/image.jpg")
                Layout.fillWidth: true
            }

            Button {
                text: "Import"
                Layout.fillWidth: true
            }

        }
    }


}
