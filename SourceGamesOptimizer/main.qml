import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import "material"
import "scripts/CommandsGenerator.js" as CommandsGenerator
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 300
    title: qsTr("Garry's Mod Optimizer")
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "#34495e"
    Component.onCompleted: codeArea.code = "cl_cmdrate 66\ncl_interp 0\ncl_interp_ratio 1\ncl_lagcompensation 1\ncl_pred_optimize 2\ncl_smooth 0\ncl_smoothtime 0.01\ncl_updaterate 66\n";
    FontLoader {
        id: robotoMedium
        source: "/fonts/Roboto-Medium.ttf"
    }
    Rectangle {
        id: topBar
        width: parent.width
        height: 34
        color: "#2c3e50"
        MouseArea {
            anchors.fill: parent
            property real lastMouseX: 0
            property real lastMouseY: 0
            onPressed: {
                lastMouseX = mouseX
                lastMouseY = mouseY
            }
            onMouseXChanged: window.x += (mouseX - lastMouseX)
            onMouseYChanged: window.y += (mouseY - lastMouseY)
        }
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
        ButtonAlt {
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
        ButtonAlt {
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
            height: parent.height/1.1-50
            anchors.left: parent.left
            anchors.leftMargin: 25
            anchors.top: parent.top
            anchors.topMargin: 25
            codeColor: "#2c3e50"
        }
        Button {
            id: saveButton
            width: 90
            height: 35
            anchors.right: parent.right
            anchors.rightMargin: 35
            anchors.top: codeArea.bottom
            anchors.topMargin: 3
            fColor: "#34495e"
            sColor: "#2c3e50"
            buttonText: "save"
            onClicked: {
                saver.save(codeArea.code);
            }
        }
    }
    Item {
        id: page_Settings
        width: parent.width
        height: parent.height-topBar.height
        anchors.top: topBar.bottom
        anchors.topMargin: 0
        visible: false
        Column {
            id: column0
            width: (parent.width/2)-(15)
            height: parent.height-15
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.top: parent.top
            anchors.topMargin: 15
            spacing: 10
            Row {
                id: connection_row
                width: 200
                height: connection_switch.height+10
                spacing: 10
                Switch {
                    id: connection_switch
                    anchors.verticalCenter: parent.verticalCenter
                    fColor: "#22313F"
                    sColor: "#6C7A89"
                    state: "good"
                    checked: true
                    onClicked: {
                        if(state == "bad"){
                            state = "good";
                            connection_text.text = "Good connection";
                        }
                        else{
                            state = "bad"
                            connection_text.text = "Bad connection";
                        }
                    }
                }
                Text {
                    id: connection_text
                    color: "#ffffff"
                    text: qsTr("Good connection")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    height: parent.height
                    font.pixelSize: 12
                    font.family: robotoMedium.name
                }
            }
            Row {
                id: sprays_row
                width: 200
                height: sprays_switch.height+10
                spacing: 10
                Switch {
                    id: sprays_switch
                    anchors.verticalCenter: parent.verticalCenter
                    fColor: "#22313F"
                    sColor: "#6C7A89"
                    state: "enabled"
                    checked: true
                }
                Text {
                    id: sprays_text
                    color: "#ffffff"
                    text: qsTr("Sprays")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    height: parent.height
                    font.pixelSize: 12
                    font.family: robotoMedium.name
                }
            }
            Row {
                id: shadows_row
                width: 200
                height: shadows_switch.height+10
                spacing: 10
                Switch {
                    id: shadows_switch
                    anchors.verticalCenter: parent.verticalCenter
                    fColor: "#22313F"
                    sColor: "#6C7A89"
                    state: "enabled"
                    checked: true;
                }
                Text {
                    id: shadows_text
                    color: "#ffffff"
                    text: qsTr("Shadows")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    height: parent.height
                    font.pixelSize: 12
                    font.family: robotoMedium.name
                }
            }
            Row {
                id: facial_row
                width: 200
                height: facial_switch.height+10
                spacing: 10
                Switch {
                    id: facial_switch
                    anchors.verticalCenter: parent.verticalCenter
                    fColor: "#22313F"
                    sColor: "#6C7A89"
                    state: "enabled"
                    checked: true;
                }
                Text {
                    id: facial_text
                    color: "#ffffff"
                    text: qsTr("Facial features")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    height: parent.height
                    font.pixelSize: 12
                    font.family: robotoMedium.name
                }
            }
            Row {
                id: ragdolls_row
                width: 200
                height: ragdolls_switch.height+10
                spacing: 10
                Switch {
                    id: ragdolls_switch
                    anchors.verticalCenter: parent.verticalCenter
                    fColor: "#22313F"
                    sColor: "#6C7A89"
                    state: "enabled"
                    checked: true;
                }
                Text {
                    id: ragdolls_text
                    color: "#ffffff"
                    text: qsTr("Ragdolls")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    height: parent.height
                    font.pixelSize: 12
                    font.family: robotoMedium.name
                }
            }
            Row {
                id: gibs_row
                width: 200
                height: gibs_switch.height+10
                spacing: 10
                Switch {
                    id: gibs_switch
                    anchors.verticalCenter: parent.verticalCenter
                    fColor: "#22313F"
                    sColor: "#6C7A89"
                    state: "enabled"
                    checked: true;
                }
                Text {
                    id: gibs_text
                    color: "#ffffff"
                    text: qsTr("Gibs")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    height: parent.height
                    font.pixelSize: 12
                    font.family: robotoMedium.name
                }
            }
        }
        Column {
            id: column1
            width: (parent.width/2)-(15)
            height: parent.height-15
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 15
            spacing: 10
            Row {
                id: sky3d_row
                width: 200
                height: sky3d_switch.height+10
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10
                Switch {
                    id: sky3d_switch
                    anchors.verticalCenter: parent.verticalCenter
                    fColor: "#22313F"
                    sColor: "#6C7A89"
                    state: "enabled"
                    checked: true;
                }
                Text {
                    id: sky3d_text
                    color: "#ffffff"
                    text: qsTr("3D Sky")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    height: parent.height
                    font.pixelSize: 12
                    font.family: robotoMedium.name
                }
            }
            Row {
                id: rope_row
                width: 200
                height: rope_switch.height+10
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10
                Switch {
                    id: rope_switch
                    anchors.verticalCenter: parent.verticalCenter
                    fColor: "#22313F"
                    sColor: "#6C7A89"
                    state: "enabled"
                    checked: true;
                }
                Text {
                    id: rope_text
                    color: "#ffffff"
                    text: qsTr("Rope")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    height: parent.height
                    font.pixelSize: 12
                    font.family: robotoMedium.name
                }
            }
        }
    }
}
