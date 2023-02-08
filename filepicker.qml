import QtQuick 2.0
import QtQuick.Dialogs 1.3
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
            Button {
                text: "Browse..."
                Layout.fillWidth: true
                onClicked: openDialog.open()
            }

        }

        Text{
          text: "Import from remote service"
        }
        RowLayout {
            TextField {
                id: textUrl
                placeholderText: qsTr("https://example.com/path/to/image.jpg")
                text: ""
                Layout.fillWidth: true
            }

            Button {
                text: "Import"
                Layout.fillWidth: true
                onClicked: app_state.onImportFromUrlClicked(textUrl.text)
            }

        }
    }

    FileDialog {
        id: openDialog
        nameFilters: ["Image Files (*.jpg *.jpeg *.png)"];
        selectMultiple: false
        onAccepted: {
            app_state.loadImageFromPath(fileUrls[0])
        }
    }
}
