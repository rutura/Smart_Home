import QtQuick
import AppConstants

ListModel {
    // Living Room
    ListElement {
        group: "Living Room"
        name: "Humidity Display"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_humidity_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "Temperature Display"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_temperature_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "Wifi"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_wifi_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "TV"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_tv_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "Thermostat"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_thermostat_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "Air Purifier"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_air_purifier_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "Homepod"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_homepod_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "Security Camera"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_security_camera_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "Fan"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_fan_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "Wifi Display"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_wifi_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Living Room"
        name: "Power Usage Display"
        enabled: function (isEnabled) {
            return (AppSettings.living_room_power_usage_display_enabled = isEnabled);
        }
    }
    // Bedroom
    ListElement {
        group: "Bed room"
        name: "Humidity Display"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_humidity_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "Temperature Display"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_temperature_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "Wifi"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_wifi_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "TV"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_tv_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "Thermostat"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_thermostat_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "Air Purifier"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_air_purifier_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "Homepod"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_homepod_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "Security Camera"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_security_camera_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "Fan"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_fan_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "Wifi Display"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_wifi_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Bed room"
        name: "Power Usage Display"
        enabled: function (isEnabled) {
            return (AppSettings.bed_room_power_usage_display_enabled = isEnabled);
        }
    }
    // Hallway
    ListElement {
        group: "Hallway"
        name: "Humidity Display"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_humidity_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "Temperature Display"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_temperature_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "Wifi"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_wifi_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "TV"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_tv_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "Thermostat"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_thermostat_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "Air Purifier"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_air_purifier_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "Homepod"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_homepod_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "Security Camera"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_security_camera_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "Fan"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_fan_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "Wifi Display"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_wifi_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Hallway"
        name: "Power Usage Display"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_power_usage_display_enabled = isEnabled);
        }
    }
    // Front Door
    ListElement {
        group: "Front Door"
        name: "Humidity Display"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_humidity_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "Temperature Display"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_temperature_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "Wifi"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_wifi_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "TV"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_tv_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "Thermostat"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_thermostat_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "Air Purifier"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_air_purifier_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "Homepod"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_homepod_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "Security Camera"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_security_camera_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "Fan"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_fan_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "Wifi Display"
        enabled: function (isEnabled) {
            return (AppSettings.front_door_wifi_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Front Door"
        name: "Power Usage Display"
        enabled: function (isEnabled) {
            return (AppSettings.hallway_power_usage_display_enabled = isEnabled);
        }
    }
    // Entrance
    ListElement {
        group: "Entrance"
        name: "Humidity Display"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_humidity_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "Temperature Display"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_temperature_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "Wifi"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_wifi_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "TV"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_tv_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "Thermostat"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_thermostat_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "Air Purifier"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_air_purifier_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "Homepod"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_homepod_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "Security Camera"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_security_camera_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "Fan"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_fan_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "Wifi Display"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_wifi_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Entrance"
        name: "Power Usage Display"
        enabled: function (isEnabled) {
            return (AppSettings.entrance_power_usage_display_enabled = isEnabled);
        }
    }
    // Backyard
    ListElement {
        group: "Backyard"
        name: "Humidity Display"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_humidity_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "Temperature Display"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_temperature_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "Wifi"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_wifi_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "TV"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_tv_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "Thermostat"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_thermostat_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "Air Purifier"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_air_purifier_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "Homepod"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_homepod_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "Security Camera"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_security_camera_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "Fan"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_fan_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "Wifi Display"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_wifi_display_enabled = isEnabled);
        }
    }
    ListElement {
        group: "Backyard"
        name: "Power Usage Display"
        enabled: function (isEnabled) {
            return (AppSettings.backyard_power_usage_display_enabled = isEnabled);
        }
    }
}

/*
import QtQuick
import AppConstants

ListModel {
    // Living Room
    ListElement {
        group: "Living Room"
        name: "Humidity Display"
        enabled: function(isEnabled = AppSettings.roomProperties[2].humidity_display_enabled){
            return (AppSettings.roomProperties[2].humidity_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "Temperature Display"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].temperature_display_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].temperature_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "Wifi"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].wifi_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].wifi_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "TV"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].tv_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].tv_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "Thermostat"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].thermostat_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].thermostat_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "Air Purifier"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].air_purifier_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].air_purifier_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "Homepod"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].homepod_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].homepod_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "Security Camera"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].security_camera_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].security_camera_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "Fan"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].fan_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].fan_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "Wifi Display"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].wifi_display_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].wifi_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Living Room"
        name: "Power Usage Display"
         enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.living_room_index].power_usage_display_enabled){
            return (AppSettings.roomProperties[AppSettings.living_room_index].power_usage_display_enabled = isEnabled)
        }
    }
    // Bedroom
    ListElement {
        group: "Bed room"
        name: "Humidity Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].humidity_display_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].humidity_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "Temperature Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].temperature_display_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].temperature_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "Wifi"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].wifi_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].wifi_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "TV"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].tv_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].tv_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "Thermostat"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].thermostat_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].thermostat_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "Air Purifier"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].air_purifier_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].air_purifier_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "Homepod"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].homepod_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].homepod_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "Security Camera"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].security_camera_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].security_camera_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "Fan"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].fan_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].fan_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "Wifi Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].wifi_display_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].wifi_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Bed room"
        name: "Power Usage Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.bedroom_index].power_usage_display_enabled){
            return (AppSettings.roomProperties[AppSettings.bedroom_index].power_usage_display_enabled = isEnabled)
        }
    }
    // Hallway
    ListElement {
        group: "Hallway"
        name: "Humidity Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].humidity_display_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].humidity_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "Temperature Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].temperature_display_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].temperature_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "Wifi"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].wifi_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].wifi_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "TV"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].tv_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].tv_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "Thermostat"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].thermostat_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].thermostat_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "Air Purifier"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].air_purifier_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].air_purifier_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "Homepod"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].homepod_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].homepod_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "Security Camera"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].security_camera_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].security_camera_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "Fan"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].fan_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].fan_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "Wifi Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].wifi_display_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].wifi_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Hallway"
        name: "Power Usage Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.hallway_index].power_usage_display_enabled){
            return (AppSettings.roomProperties[AppSettings.hallway_index].power_usage_display_enabled = isEnabled)
        }
    }
    // Front Door
    ListElement {
        group: "Front Door"
        name: "Humidity Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].humidity_display_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].humidity_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "Temperature Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].temperature_display_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].temperature_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "Wifi"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].wifi_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].wifi_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "TV"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].tv_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].tv_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "Thermostat"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].thermostat_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].thermostat_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "Air Purifier"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].air_purifier_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].air_purifier_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "Homepod"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].homepod_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].homepod_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "Security Camera"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].security_camera_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].security_camera_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "Fan"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].fan_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].fan_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "Wifi Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].wifi_display_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].wifi_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Front Door"
        name: "Power Usage Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.front_door_index].power_usage_display_enabled){
            return (AppSettings.roomProperties[AppSettings.front_door_index].power_usage_display_enabled = isEnabled)
        }
    }
    // Entrance
    ListElement {
        group: "Entrance"
        name: "Humidity Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].humidity_display_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].humidity_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "Temperature Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].temperature_display_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].temperature_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "Wifi"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].wifi_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].wifi_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "TV"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].tv_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].tv_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "Thermostat"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].thermostat_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].thermostat_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "Air Purifier"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].air_purifier_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].air_purifier_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "Homepod"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].homepod_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].homepod_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "Security Camera"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].security_camera_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].security_camera_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "Fan"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].fan_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].fan_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "Wifi Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].wifi_display_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].wifi_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Entrance"
        name: "Power Usage Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.entrance_index].power_usage_display_enabled){
            return (AppSettings.roomProperties[AppSettings.entrance_index].power_usage_display_enabled = isEnabled)
        }
    }
    // Backyard
    ListElement {
        group: "Backyard"
        name: "Humidity Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].humidity_display_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].humidity_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "Temperature Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].temperature_display_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].temperature_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "Wifi"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].wifi_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].wifi_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "TV"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].tv_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].tv_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "Thermostat"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].thermostat_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].thermostat_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "Air Purifier"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].air_purifier_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].air_purifier_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "Homepod"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].homepod_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].homepod_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "Security Camera"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].security_camera_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].security_camera_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "Fan"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].fan_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].fan_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "Wifi Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].wifi_display_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].wifi_display_enabled = isEnabled)
        }
    }
    ListElement {
        group: "Backyard"
        name: "Power Usage Display"
        enabled: function(isEnabled = AppSettings.roomProperties[AppSettings.backyard_index].power_usage_display_enabled){
            return (AppSettings.roomProperties[AppSettings.backyard_index].power_usage_display_enabled = isEnabled)
        }
    }
}

*/
