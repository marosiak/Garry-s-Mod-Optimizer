import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Switch {
    property color fColor
    property color sColor
    style: SwitchStyle {
        groove: Rectangle {
                implicitWidth: 40
                implicitHeight: 20
                radius: 60
                //border.color: "white"
                //border.width: 0.5
                color: fColor
        }
        handle: Rectangle {
            implicitWidth: 20
            implicitHeight: 10
            radius: 60
            //border.width: 0.5
            color: sColor
            //border.color: "white"
        }
    }
 }
