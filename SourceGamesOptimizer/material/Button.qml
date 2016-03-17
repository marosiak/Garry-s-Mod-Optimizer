import QtQuick 2.0
import QtGraphicalEffects 1.0


Rectangle {
        property color fColor
        property color sColor
        property string buttonText
        signal clicked
        signal released
        id: rectangle1
        color: fColor
        radius: 2.1
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {rectangle1.clicked(); rectangle1.color = "#34495e"; console.log("Clicked")}
        onReleased: {rectangle1.released()}
        onCanceled: rectangle1.color = "#34495e"
    }
    FontLoader {
            id: robotoMedium
            source: "/fonts/Roboto-Medium.ttf"
        }
    Text{
        width: rectangle1.width
        height: rectangle1.height
        color: "#ffffff"
        text: buttonText
        font.family: robotoMedium.name
        font.pointSize: 12
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        textFormat: Text.AutoText
    }
}
