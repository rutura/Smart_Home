#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
  qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;

  QObject::connect(
      &engine,
      &QQmlApplicationEngine::objectCreationFailed,
      &app,
      []() { QCoreApplication::exit(-1); },
      Qt::QueuedConnection);

#if defined(Q_OS_ANDROID) || defined(Q_OS_IOS)
  // const QUrl url(u"qrc:/SmartHome/qml/MobileApp.qml"_qs);
   engine.loadFromModule("SmartHome", "MobileApp");
#else
  // const QUrl url(u"qrc:/SmartHome/qml/DesktopApp.qml"_qs);
   engine.loadFromModule("SmartHome", "DesktopApp");
#endif
  // engine.load(url);

  return app.exec();
}
