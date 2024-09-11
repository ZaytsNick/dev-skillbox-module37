import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("VideoPlayer")
    property bool clicker: false
    ProgressBar {
      id: progress_bar
      value: 0
      implicitWidth: 600
      implicitHeight: 32

      anchors.bottom: parent.bottom
      anchors.left: parent.left
      anchors.leftMargin: 147
      anchors.bottomMargin: 4
      anchors.right: parent.right
      anchors.rightMargin: 8
    }
    Timer {
            id: timer
            interval: 10
            running: true
            repeat: true
            onTriggered: {
                progress_bar.value+=0.001;
                if (progress_bar.value >= 1) {
                    timer.stop();
                    progress_bar.value=0;
                }
                else{
                    timer.start();
                }
            }
        }

    Text{
        id: back
        text: "⏪"
        font.pointSize: 24
            anchors.bottom: parent.bottom
            MouseArea {
                        anchors.fill: parent
                        onClicked: { progress_bar.value-=0.1;}
    }
    Text{
        id:play_pause
        text: "⏯️"
        font.pointSize: 24
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 35
            MouseArea {
                        anchors.fill: parent
                        onClicked: {
                                        // if (progress_bar.value === 1) {
                                        //     timer.restart();
                                        //     progress_bar.value = 0;
                                        //     clicker = 1;
                                        // } else
                                        if (clicker === true) {
                                            clicker = false;
                                            timer.stop();
                                        } else if (clicker === false) {
                                            clicker = true;
                                            timer.start();
                                        }
                                    }

            }
    }
    Text{
        id: next
        text: "⏭"
        font.pointSize: 24
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 70
            MouseArea {
                        anchors.fill: parent
                        onClicked: { progress_bar.value+=0.1; }
            }
    }
    Text{
        id: stop
        text: "⏹️"
        font.pointSize: 24
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 106
            MouseArea {
                        anchors.fill: parent
                        onClicked: { progress_bar.value=0; }
            }

    }


}
}
