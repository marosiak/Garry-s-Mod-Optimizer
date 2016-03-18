import QtQuick 2.0
import QtGraphicalEffects 1.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Button {
    property color fColor
    property color sColor
    property string buttonText
    FontLoader {
            id: robotoMedium
            source: "/fonts/Roboto-Medium.ttf"
        }
    Text {
        width: parent.width
        height: parent.height
        color: "#ffffff"
        font.pointSize: 9
        text: buttonText
        font.family: robotoMedium.name
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    style: ButtonStyle {
        background: Rectangle {
            implicitWidth: 100
            implicitHeight: 25
            color: control.pressed ? fColor : sColor
            radius: 3
        }
    }
}
