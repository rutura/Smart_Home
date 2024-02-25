#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
  qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;
#if defined(Q_OS_ANDROID) || defined(Q_OS_IOS)
  const QUrl url(u"qrc:/SmartHome/qml/MobileApp.qml"_qs);
#else
  const QUrl url(u"qrc:/SmartHome/qml/DesktopApp.qml"_qs);
#endif
  QObject::connect(
    &engine,
    &QQmlApplicationEngine::objectCreationFailed,
    &app,
    []() { QCoreApplication::exit(-1); },
    Qt::QueuedConnection);
  engine.load(url);

  return app.exec();
}
