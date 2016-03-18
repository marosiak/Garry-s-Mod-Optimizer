import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {
    id: rectangle1
    property color codeColor
    color: codeColor
    radius: 3
    FontLoader {
        id: robotoMedium
        source: "/fonts/Roboto-Medium.ttf"
    }
    ScrollView {
        id: scrollView1
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
            width: parent.width -10
            height: 40+(15*textEdit1.lineCount)
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 5
            font.family: robotoMedium.name
            wrapMode: TextEdit.Wrap
            font.pixelSize: 12
        }
    }

}
