import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 240
    height: 680
    visible: true
    title: qsTr("Hello World")

    property int channelValue: 1
    property string channelTemp: ""
    property int volumeValue: 50
    Timer {
                id: timer
                interval: 1700
                running: true
                repeat: false
                onTriggered: {
                    if(channelTemp!=="")
                    {
                        channelValue = parseInt(channelTemp);
                        channelTemp="";
                        if(channelValue>0)
                       { channel.text= qsTr(channelValue+"");}
                    }
                }
            }
    Button{
        id: set1
        text: qsTr("1")
        font.pointSize: 24
        width: 55
        height: 55

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -70

        anchors.top: parent.top
        anchors.topMargin: 5
        onClicked: {
            channelTemp+=qsTr("1");
            timer.restart();
        }
    }
    Button{
        id: set2
        text: qsTr("2")
        font.pointSize: 24
        width: 55
        height: 55
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 5
        onClicked: {
            channelTemp+=qsTr("2");
            timer.restart();
        }
    }
    Button{
        id: set3
        text: qsTr("3")
        font.pointSize: 24
        width: 55
        height: 55
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 70
        anchors.top: parent.top
        anchors.topMargin: 5
        onClicked: {
            channelTemp+=qsTr("3");
            timer.restart();
        }
    }
    Button{
        id: set4
        text: qsTr("4")
        font.pointSize: 24
        width: 55
        height: 55

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -70

        anchors.top: parent.top
        anchors.topMargin:65
        onClicked: {
            channelTemp+=qsTr("4");
            timer.restart();
        }
    }
    Button{
        id: set5
        text: qsTr("5")
        font.pointSize: 24
        width: 55
        height: 55

        anchors.horizontalCenter: parent.horizontalCenter

        anchors.top: parent.top
        anchors.topMargin: 65
        onClicked: {
            channelTemp+=qsTr("5");
            timer.restart();
        }
    }
    Button{
        id: set6
        text: qsTr("6")
        font.pointSize: 24
        width: 55
        height: 55

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 70

        anchors.top: parent.top
        anchors.topMargin: 65
        onClicked: {
            channelTemp+=qsTr("6");
            timer.restart();
        }
    }
    Button{
        id: set7
        text: qsTr("7")
        font.pointSize: 24
        width: 55
        height: 55

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -70

        anchors.top: parent.top
        anchors.topMargin:125
        onClicked: {
            channelTemp+=qsTr("7");
            timer.restart();
        }
    }
    Button{
        id: set8
        text: qsTr("8")
        font.pointSize: 24
        width: 55
        height: 55
        anchors.horizontalCenter: parent.horizontalCenter

        anchors.top: parent.top
        anchors.topMargin: 125
        onClicked: {
            channelTemp+=qsTr("8");
            timer.restart();
        }
    }
    Button{
        id: set9
        text: qsTr("9")
        font.pointSize: 24
        width: 55
        height: 55

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 70

        anchors.top: parent.top
        anchors.topMargin: 125
        onClicked: {
            channelTemp+=qsTr("9");
            timer.restart();
        }
    }
    Button{
        id: set0
        text: qsTr("0")
        font.pointSize: 24
        width: 55
        height: 55
          anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 185
        onClicked: {
            channelTemp+=qsTr("0");
            timer.restart();
        }
    }
    Button{
        id: volmeUp
        text: qsTr("+")
        font.pointSize: 24
        width: 55
        height: 55
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.horizontalCenterOffset: 70
        anchors.top: parent.top
        anchors.topMargin: 185
        onClicked: {
            if(volumeValue<100)
            {
                volumeValue+=10;
                volume.text= qsTr(volumeValue+"%")
            }
        }
    }
    Button{
        id: volmeDown
        text: qsTr("-")
        font.pointSize: 24
        width: 55
        height: 55
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.horizontalCenterOffset: 70
        anchors.top: parent.top
        anchors.topMargin: 238
        onClicked: {
            if(volumeValue>0)
            {
                volumeValue-=10;
                volume.text= qsTr(volumeValue+"%")
            }
        }
    }
    Button{
        id: channelNext
        text: qsTr("↑")
        font.pointSize: 24
        width: 55
        height: 55
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.horizontalCenterOffset: -70
        anchors.top: parent.top
        anchors.topMargin: 185
        onClicked: {
            if(channelValue<120)
            {
                channelValue++;
                channel.text= qsTr(channelValue+"")
            }
        }
    }
    Button{
        id: channelBack
        text: qsTr("↓")
        font.pointSize: 24
        width: 55
        height: 55
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.horizontalCenterOffset: -70
        anchors.top: parent.top
        anchors.topMargin: 238
        onClicked: {
            if(channelValue>1)
            {
                channelValue--;
                channel.text= qsTr(channelValue+"")
            }
        }
    }
    Text {
        text: qsTr("Display:")
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 300
    }
    Text {
        id: volume
        text: qsTr(volumeValue+"%")
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 340
    }
    Text {
        id: channel
        text: qsTr(channelValue+"")
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 380
    }
}

