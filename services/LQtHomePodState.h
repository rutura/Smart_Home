//
// Created by koech on 3/10/24.
//

#ifndef SMARTHOME_LQTHOMEPODSTATE_H
#define SMARTHOME_LQTHOMEPODSTATE_H

#include <HomePodActuator.h>
#include <QObject>
#include <QtQmlIntegration>

class LQtHomePodState : public QObject
{
  Q_OBJECT
  QML_ELEMENT
  Q_PROPERTY(HomePodStates homePodState READ homePodState WRITE setHomePodState NOTIFY homePodStateChanged)
public:
  explicit LQtHomePodState(QObject *parent = nullptr);
  Q_ENUM(HomePodStates);
  HomePodStates homePodState() const;
  void setHomePodState(HomePodStates newHomePodState);
signals:
  void homePodStateChanged();

private:
  HomePodStates m_homePodState{HomePodStates::STOPPED};
};

#endif// SMARTHOME_LQTHOMEPODSTATE_H
