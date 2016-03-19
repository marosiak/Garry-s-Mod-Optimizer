import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "../scripts/CommandsGenerator.js" as CommandsGenerator



Rectangle {
    id: rectangle1
    property color codeColor
    property string code
    signal clear;
    color: codeColor
    radius: 3
    Component.onCompleted: textEdit1.text = "cl_cmdrate 66\ncl_interp 0\ncl_interp_ratio 1\ncl_lagcompensation 1\ncl_pred_optimize 2\ncl_smooth 0\ncl_smoothtime 0.01\ncl_updaterate 66\n"
    onVisibleChanged: {
        if (rectangle1.visible == false){
            textEdit1.text = "";
        }
        if (rectangle1.visible == true){
            CommandsGenerator.assignVars();
            CommandsGenerator.setCode();
            textEdit1.text = CommandsGenerator.code;
        }
    }

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
            text: code
        }

    }

}
