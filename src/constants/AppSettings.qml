pragma Singleton
import QtCore

Settings {
    category: "all"
    property int currentTheme: Colors.CurrentTheme.LIGHT
    property string room_state: "2"
    readonly property string security_camera_video_feed: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
    // TODO: we can do better than this but functionality first
    // living_room
    property bool living_room_humidity_display_enabled: true
    property bool living_room_temperature_display_enabled: true
    property bool living_room_wifi_enabled: true
    property bool living_room_tv_enabled: true
    property bool living_room_thermostat_enabled: true
    property bool living_room_air_purifier_enabled: true
    property bool living_room_homepod_enabled: true
    property bool living_room_security_camera_enabled: true
    property bool living_room_fan_enabled: true
    property bool living_room_wifi_display_enabled: true
    property bool living_room_power_usage_display_enabled: true
    // bed_room
    property bool bed_room_humidity_display_enabled: true
    property bool bed_room_temperature_display_enabled: true
    property bool bed_room_wifi_enabled: true
    property bool bed_room_tv_enabled: true
    property bool bed_room_thermostat_enabled: true
    property bool bed_room_air_purifier_enabled: true
    property bool bed_room_homepod_enabled: true
    property bool bed_room_security_camera_enabled: false
    property bool bed_room_fan_enabled: true
    property bool bed_room_wifi_display_enabled: true
    property bool bed_room_power_usage_display_enabled: true
    // hallway
    property bool hallway_humidity_display_enabled: true
    property bool hallway_temperature_display_enabled: true
    property bool hallway_wifi_enabled: true
    property bool hallway_tv_enabled: true
    property bool hallway_thermostat_enabled: true
    property bool hallway_air_purifier_enabled: true
    property bool hallway_homepod_enabled: true
    property bool hallway_security_camera_enabled: true
    property bool hallway_fan_enabled: true
    property bool hallway_wifi_display_enabled: true
    property bool hallway_power_usage_display_enabled: true
    // front_door
    property bool front_door_humidity_display_enabled: true
    property bool front_door_temperature_display_enabled: true
    property bool front_door_wifi_enabled: true
    property bool front_door_tv_enabled: true
    property bool front_door_thermostat_enabled: true
    property bool front_door_air_purifier_enabled: true
    property bool front_door_homepod_enabled: true
    property bool front_door_security_camera_enabled: true
    property bool front_door_fan_enabled: true
    property bool front_door_wifi_display_enabled: true
    property bool front_door_power_usage_display_enabled: true
    // entrance
    property bool entrance_humidity_display_enabled: true
    property bool entrance_temperature_display_enabled: true
    property bool entrance_wifi_enabled: true
    property bool entrance_tv_enabled: true
    property bool entrance_thermostat_enabled: true
    property bool entrance_air_purifier_enabled: true
    property bool entrance_homepod_enabled: true
    property bool entrance_security_camera_enabled: true
    property bool entrance_fan_enabled: true
    property bool entrance_wifi_display_enabled: true
    property bool entrance_power_usage_display_enabled: true
    // backyard
    property bool backyard_humidity_display_enabled: true
    property bool backyard_temperature_display_enabled: true
    property bool backyard_wifi_enabled: true
    property bool backyard_tv_enabled: true
    property bool backyard_thermostat_enabled: true
    property bool backyard_air_purifier_enabled: true
    property bool backyard_homepod_enabled: true
    property bool backyard_security_camera_enabled: true
    property bool backyard_fan_enabled: true
    property bool backyard_wifi_display_enabled: true
    property bool backyard_power_usage_display_enabled: true

    readonly property int entrance_index: 0
    readonly property int backyard_index: 1
    readonly property int living_room_index: 2
    readonly property int hallway_index: 3
    readonly property int bedroom_index: 4
    readonly property int front_door_index: 5

    // property array for easier and generic access from the room and usage controls .
    property var roomProperties: [
        // entrance
        {
            humidity_display_enabled: entrance_humidity_display_enabled,
            temperature_display_enabled: entrance_temperature_display_enabled,
            wifi_enabled: entrance_wifi_enabled,
            tv_enabled: entrance_tv_enabled,
            thermostat_enabled: entrance_thermostat_enabled,
            air_purifier_enabled: entrance_air_purifier_enabled,
            homepod_enabled: entrance_homepod_enabled,
            security_camera_enabled: entrance_security_camera_enabled,
            fan_enabled: entrance_fan_enabled,
            wifi_display_enabled: entrance_wifi_display_enabled,
            power_usage_display_enabled: entrance_power_usage_display_enabled
        },
        // backyard
        {
            humidity_display_enabled: backyard_humidity_display_enabled,
            temperature_display_enabled: backyard_temperature_display_enabled,
            wifi_enabled: backyard_wifi_enabled,
            tv_enabled: backyard_tv_enabled,
            thermostat_enabled: backyard_thermostat_enabled,
            air_purifier_enabled: backyard_air_purifier_enabled,
            homepod_enabled: backyard_homepod_enabled,
            security_camera_enabled: backyard_security_camera_enabled,
            fan_enabled: backyard_fan_enabled,
            wifi_display_enabled: backyard_wifi_display_enabled,
            power_usage_display_enabled: backyard_power_usage_display_enabled
        },
        // living_room
        {
            humidity_display_enabled: living_room_humidity_display_enabled,
            temperature_display_enabled: living_room_temperature_display_enabled,
            wifi_enabled: living_room_wifi_enabled,
            tv_enabled: living_room_tv_enabled,
            thermostat_enabled: living_room_thermostat_enabled,
            air_purifier_enabled: living_room_air_purifier_enabled,
            homepod_enabled: living_room_homepod_enabled,
            security_camera_enabled: living_room_security_camera_enabled,
            fan_enabled: living_room_fan_enabled,
            wifi_display_enabled: living_room_wifi_display_enabled,
            power_usage_display_enabled: living_room_power_usage_display_enabled
        },
        // hallway
        {
            humidity_display_enabled: hallway_humidity_display_enabled,
            temperature_display_enabled: hallway_temperature_display_enabled,
            wifi_enabled: hallway_wifi_enabled,
            tv_enabled: hallway_tv_enabled,
            thermostat_enabled: hallway_thermostat_enabled,
            air_purifier_enabled: hallway_air_purifier_enabled,
            homepod_enabled: hallway_homepod_enabled,
            security_camera_enabled: hallway_security_camera_enabled,
            fan_enabled: hallway_fan_enabled,
            wifi_display_enabled: hallway_wifi_display_enabled,
            power_usage_display_enabled: hallway_power_usage_display_enabled
        },
        // bed_room
        {
            humidity_display_enabled: bed_room_humidity_display_enabled,
            temperature_display_enabled: bed_room_temperature_display_enabled,
            wifi_enabled: bed_room_wifi_enabled,
            tv_enabled: bed_room_tv_enabled,
            thermostat_enabled: bed_room_thermostat_enabled,
            air_purifier_enabled: bed_room_air_purifier_enabled,
            homepod_enabled: bed_room_homepod_enabled,
            security_camera_enabled: bed_room_security_camera_enabled,
            fan_enabled: bed_room_fan_enabled,
            wifi_display_enabled: bed_room_wifi_display_enabled,
            power_usage_display_enabled: bed_room_power_usage_display_enabled
        },
        // front_door
        {
            humidity_display_enabled: front_door_humidity_display_enabled,
            temperature_display_enabled: front_door_temperature_display_enabled,
            wifi_enabled: front_door_wifi_enabled,
            tv_enabled: front_door_tv_enabled,
            thermostat_enabled: front_door_thermostat_enabled,
            air_purifier_enabled: front_door_air_purifier_enabled,
            homepod_enabled: front_door_homepod_enabled,
            security_camera_enabled: front_door_security_camera_enabled,
            fan_enabled: front_door_fan_enabled,
            wifi_display_enabled: front_door_wifi_display_enabled,
            power_usage_display_enabled: front_door_power_usage_display_enabled
        }]
    /*
    // rooms
    property var roomProperties: [
        // entrance
        {
            humidity_display_enabled: true,
            temperature_display_enabled: true,
            wifi_enabled: true,
            tv_enabled: true,
            thermostat_enabled: true,
            air_purifier_enabled: true,
            homepod_enabled: true,
            security_camera_enabled: true,
            fan_enabled: true,
            wifi_display_enabled: true,
            power_usage_display_enabled: true
        },
        // backyard
        {
            humidity_display_enabled: true,
            temperature_display_enabled: true,
            wifi_enabled: true,
            tv_enabled: true,
            thermostat_enabled: true,
            air_purifier_enabled: true,
            homepod_enabled: true,
            security_camera_enabled: true,
            fan_enabled: true,
            wifi_display_enabled: true,
            power_usage_display_enabled: true
        },
        // living_room
        {
            humidity_display_enabled: true,
            temperature_display_enabled: true,
            wifi_enabled: true,
            tv_enabled: true,
            thermostat_enabled: true,
            air_purifier_enabled: true,
            homepod_enabled: true,
            security_camera_enabled: true,
            fan_enabled: true,
            wifi_display_enabled: true,
            power_usage_display_enabled: true
        },
        // hallway
        {
            humidity_display_enabled: true,
            temperature_display_enabled: true,
            wifi_enabled: true,
            tv_enabled: true,
            thermostat_enabled: true,
            air_purifier_enabled: true,
            homepod_enabled: true,
            security_camera_enabled: true,
            fan_enabled: true,
            wifi_display_enabled: true,
            power_usage_display_enabled: true
        },
        // bed_room
        {
            humidity_display_enabled: true,
            temperature_display_enabled: true,
            wifi_enabled: true,
            tv_enabled: true,
            thermostat_enabled: true,
            air_purifier_enabled: true,
            homepod_enabled: true,
            security_camera_enabled: true,
            fan_enabled: true,
            wifi_display_enabled: true,
            power_usage_display_enabled: true
        },
        // front_door
        {
            humidity_display_enabled: true,
            temperature_display_enabled: true,
            wifi_enabled: true,
            tv_enabled: true,
            thermostat_enabled: true,
            air_purifier_enabled: true,
            homepod_enabled: true,
            security_camera_enabled: true,
            fan_enabled: true,
            wifi_display_enabled: true,
            power_usage_display_enabled: true
        }
    ]
    */
}
