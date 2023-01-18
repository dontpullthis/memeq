import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    visible: true
    visibility: "Maximized"
    title: qsTr("App")
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

                Canvas {
                    anchors.centerIn: parent
                    Layout.preferredHeight: 500
                    Layout.preferredWidth: 500
                    onPaint: {
                        var ctx = getContext("2d")

                        ctx.fillStyle = "white"
                        ctx.fillRect(0, 0, width, height)

                        ctx.fillStyle = "black";
                        ctx.beginPath()
                        ctx.moveTo(50,50)
                        ctx.lineTo(150,50)
                        ctx.stroke()

                        ctx.fillStyle = "white";
                        ctx.font = "bold 17px Impact";
                        ctx.fillText("Qt Quick", 40, 70);
                        ctx.strokeStyle = "black"
                        ctx.strokeText("Qt Quick", 40, 70);
                    }
                }
            }


        }

        Rectangle {
            Layout.preferredWidth: parent.width * 0.2
            Layout.preferredHeight: parent.height
        }

    }

}
