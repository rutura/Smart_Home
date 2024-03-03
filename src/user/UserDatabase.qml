pragma Singleton

import QtQml
import QtQuick.LocalStorage

QtObject {
    id: root

    property var _db

    function _database() {
        if (_db)
            return _db

        try {
            let db = LocalStorage.openDatabaseSync("SmartHome", "1.0", "Smart Home Users")

            db.transaction(function (tx) {
                tx.executeSql(`CREATE TABLE IF NOT EXISTS users (
                    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
                    user_name TEXT NOT NULL CHECK(user_name != ''),
                    user_email TEXT NOT NULL CHECK(user_email != ''),
                    user_password TEXT NOT NULL CHECK(user_password != '')
                )`);
            })
            _db = db
        } catch (error) {
            console.log("Error opening database: " + error)
        };

        return _db
    }

    function newUser(user_name, user_email, user_password) {
        let results
        root._database().transaction(function (tx) {
            results = tx.executeSql("INSERT INTO users (user_name, user_email, user_password) VALUES(?, ?, ?)", [user_name, user_email, user_password])
        })
        return results
    }

    function getUserByNameAndPassword(user_name, user_password){
        let results
        root._database().transaction(function (tx) {
            results = tx.executeSql("SELECT * FROM users WHERE user_name = ? AND user_password = ?", [user_name, user_password])
        })
        return results
    }

    function updateUserName(user_name, user_email) {
        root._database().transaction(function (tx) {
            tx.executeSql("UPDATE users set user_name=? WHERE user_email=?", [user_name, user_email])
        })
    }

    function updateUserPassword(user_new_password, user_email, user_password ) {
        root._database().transaction(function (tx) {
            tx.executeSql("UPDATE users set user_password=? WHERE user_email =? AND user_password =?", [user_new_password, user_email, user_password])
        })
    }

    function updateUserEmail(user_new_email, user_name, user_password){
        root._database().transaction(function (tx) {
            tx.executeSql("UPDATE users set user_email=? WHERE user_name =? AND user_password =?", [user_new_email, user_name, user_password])
        })
    }

    function deleteUser(user_name, user_email, user_password) {
        root._database().transaction(function (tx) {
            deleteAllTasks(projectId)
            tx.executeSql("DELETE FROM users WHERE user_name = ? AND user_email =? AND user_password = ?", [user_name, user_email, user_password])
        })
    }
}
