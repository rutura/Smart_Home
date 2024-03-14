//
// Created by koech on 3/10/24.
//

#ifndef SMARTHOME_LQTHOMEPODSTATE_H
#define SMARTHOME_LQTHOMEPODSTATE_H

#include <HomePodActuator.h>
#include <QObject>
#include <QtQmlIntegration>
/**
 * @brief LQtHomePodState class manages home pod states
 * - HomePod states type is not primitive type hence the need for a qml creatable class
 */
class LQtHomePodState : public QObject
{
  Q_OBJECT
  QML_ELEMENT
  Q_PROPERTY(_HomePodStates homePodState READ homePodState WRITE setHomePodState NOTIFY homePodStateChanged)
public:
  explicit LQtHomePodState(QObject *parent = nullptr);
  // A bridge-enum that is qml accessible and links to homepod actuator driver enum.
  enum _HomePodStates {
    STOPPED = HomePodStates::STOPPED,
    PLAYING = HomePodStates::PLAYING,
    PAUSED = HomePodStates::PAUSED
  };
  Q_ENUM(_HomePodStates);
  _HomePodStates homePodState() const;
  /**
   * @brief Convert QML-accessible bridge enumeration to driver enumeration.
   * @return returns driver enumeration type.
   */
  HomePodStates getHomePodState() const;
  void setHomePodState(_HomePodStates newHomePodState);
signals:
  void homePodStateChanged();

private:
  _HomePodStates m_homePodState{ LQtHomePodState::STOPPED };
};

#endif// SMARTHOME_LQTHOMEPODSTATE_H
