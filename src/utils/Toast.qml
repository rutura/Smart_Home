import QtQuick

/*Source: https://gist.github.com/jonmcclung/bae669101d17b103e94790341301c129*/
/**
 * adapted from StackOverflow:
 * http://stackoverflow.com/questions/26879266/make-toast-in-android-by-qml
 */

/**
 * @brief An Android-like timed message text in a box that self-destroys when finished if desired
 */
Rectangle {

    /**
     * Public
     */

    /**
     * @brief Shows this Toast
     *
     * @param {string} text Text to show
     * @param {real} duration Duration to show in milliseconds, defaults to 3000
     */
    function show(text, duration) {
        message.text = text;
        if (typeof duration !== "undefined") { // checks if parameter was passed
            time = Math.max(duration, 2 * fadeTime);
        }
        else {
            time = defaultTime;
        }
        animation.start();
    }

    /**
     * Private
     */

    id: root

    readonly property real defaultTime: 3000
    property real time: defaultTime
    readonly property real fadeTime: 300

    property real margin: 10

    anchors {
        left: (parent != null) ? parent.left : undefined
        right: (parent != null) ? parent.right : undefined
        margins: margin
    }

    height: message.height + margin
    radius: margin

    opacity: 0
    color: "#222222"

    Text {
        id: message
        color: "white"
        wrapMode: Text.Wrap
        horizontalAlignment: Text.AlignHCenter
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            margins: margin / 2
        }
    }

    SequentialAnimation on opacity {
        id: animation
        running: false


        NumberAnimation {
            to: .9
            duration: fadeTime
        }

        PauseAnimation {
            duration: time - 2 * fadeTime
        }

        NumberAnimation {
            to: 0
            duration: fadeTime
        }

        onRunningChanged: {
            if (!running) {
                toast.model.remove(index);
            }

        }
    }
}
