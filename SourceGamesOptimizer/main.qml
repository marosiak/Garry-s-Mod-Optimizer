import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Extras 1.4
import QtSensors 5.5
import QtQuick.Controls.Styles 1.4


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Source Games Optimizer")
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "#2c3e50"
    TabView {
        id: frame
        anchors.fill: parent
        anchors.margins: 4
        Tab {
            title: "code"
        }
        Tab {
            title: "settings"
        }

        style: TabViewStyle {
            frameOverlap: 1
            tab: Rectangle {
                color: styleData.selected ? "#34495e" :"#2c3e50"
                implicitWidth: Math.max(text.width + 4, 80)
                implicitHeight: 30
                radius: 2
                Text {
                    id: text
                    anchors.centerIn: parent
                    text: styleData.title
                    color: "white"
                }
            }
            frame: Rectangle { color: "#34495e" }
        }
    }



}
