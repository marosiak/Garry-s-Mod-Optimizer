import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Extras 1.4
import QtSensors 5.5
import QtQuick.Controls.Styles 1.4
import "material"

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Source Games Optimizer")
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "#34495e"
    FontLoader {
            id: robotoMedium
            source: "/fonts/Roboto-Medium.ttf"
        }
    Rectangle {
        id: topBar
        width: parent.width
        height: 34
        color: "#2c3e50"
        Rectangle { // codeSwitcher
            id: codeSwitcher
            width: 70
            height: parent.height
            color: "#34495e"
            Text {
                color: "#fff1f1"
                width: parent.width
                height: parent.height
                font.pointSize: 11
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: robotoMedium.name
                text: "code"
            }
            MouseArea {
                width: parent.width
                height: parent.height
                onClicked: {
                    page_Code.visible = true;
                    page_Settings.visible = false;
                    codeSwitcher.color = "#34495e";
                    settingsSwitcher.color = "#2c3e50";
                }
            }
            Rectangle { // settingsSwitcher
                id: settingsSwitcher
                width: 70
                height: parent.height
                color: "#2c3e50"
                anchors.left: codeSwitcher.right
                anchors.leftMargin: 0
                Text {
                    color: "#fff1f1"
                    width: parent.width
                    height: parent.height
                    font.pointSize: 11
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.family: robotoMedium.name
                    text: "settings"
                }
                MouseArea {
                    width: parent.width
                    height: parent.height
                    onClicked: {
                        page_Code.visible = false;
                        page_Settings.visible = true;
                        codeSwitcher.color = "#2c3e50";
                        settingsSwitcher.color = "#34495e";

                    }
                }
            }

        }
        Button {
            id: xButton
            width: parent.height
            height: parent.height
            fColor: "#34495e";
            sColor: "#2c3e50";
            buttonText: "x"
            anchors.right: parent.right
            anchors.rightMargin: 0
            onClicked: Qt.quit()
        }
        Button {
            id: _Button
            width: parent.height
            height: parent.height
            fColor: "#34495e";
            sColor: "#2c3e50";
            buttonText: "_"
            anchors.right: parent.right
            anchors.rightMargin: xButton.width
            onClicked: window.showMinimized()
        }
    }

    Item {
        id: page_Code
        width: parent.width
        height: parent.height-topBar.height
        anchors.top: topBar.bottom
        anchors.topMargin: 0
        visible: true
        CodeArea{
            id: codeArea
            width: parent.width/1.1
            height: parent.height/1.1-100
            anchors.left: parent.left
            anchors.leftMargin: 25
            anchors.top: parent.top
            anchors.topMargin: 25
            codeColor: "#2c3e50"
        }
    }
    Item {
        id: page_Settings
        width: parent.width
        height: parent.height-topBar.height
        anchors.top: topBar.bottom
        anchors.topMargin: 0
        visible: false
        Text {
            width: parent.width
            height: parent.height
            text: "This is settings"
            font.pointSize: 11
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
