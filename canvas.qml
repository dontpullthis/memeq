import QtQuick 2.0

Canvas {
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

        ctx.drawImage(app_state.image, 100, 100, 100, 100)
    }
}
