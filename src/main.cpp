#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
  qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

  QGuiApplication app(argc, argv);
  app.setOrganizationName("LearnQt.Guide");
  app.setOrganizationDomain("learnqt.guide");

  QQmlApplicationEngine engine;

  QObject::connect(
      &engine,
      &QQmlApplicationEngine::objectCreationFailed,
      &app,
      []() { QCoreApplication::exit(-1); },
      Qt::QueuedConnection);

  engine.addImportPath(":/");
#if defined(Q_OS_ANDROID) || defined(Q_OS_IOS)
   engine.loadFromModule("Apps", "MobileApp");
#else
   engine.loadFromModule("Apps", "DesktopApp");
#endif

  return app.exec();
}
