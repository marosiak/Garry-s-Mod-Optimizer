import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {
    id: rectangle1
    property color codeColor
    color: codeColor
    radius: 6
    FontLoader {
            id: robotoMedium
            source: "/fonts/Roboto-Medium.ttf"
        }
    ScrollView {
        width: parent.width
        contentItem: textEdit1
        height: parent.height
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOn
        clip: true
        style: ScrollViewStyle {
                transientScrollBars: true
                handle: Item {
                    implicitWidth: 14
                    implicitHeight: 26
                    Rectangle {
                        color: "#34495e"
                        anchors.fill: parent
                        anchors.topMargin: 6
                        anchors.leftMargin: 4
                        anchors.rightMargin: 4
                        anchors.bottomMargin: 6
                    }
                }
                scrollBarBackground: Item {
                    implicitWidth: 14
                    implicitHeight: 26
                }
            }
    TextEdit {
        id: textEdit1
        width: parent.width-10
        //height: parent.height-10 //Stable
        height: parent.height+500
        color: "#ffffff"
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: robotoMedium.name
        anchors.verticalCenter: parent.verticalCenter
        wrapMode: TextEdit.Wrap
        font.pixelSize: 12
    }
    }

}
