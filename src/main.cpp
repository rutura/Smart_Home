#include <QGuiApplication>
#include <QQmlApplicationEngine>

/**
 * Entry point for the whole application
 * - Loads platform specific qml applications.
 * @param argc
 * @param argv
 * @return
 */
int main(int argc, char *argv[])
{
  // qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

  QGuiApplication app(argc, argv);
  /* Organization name and domain - optional requirements for persistent settings in the application */
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
  // Select application to load depending on the platform.
#if defined(Q_OS_ANDROID) || defined(Q_OS_IOS)
  engine.loadFromModule("Apps", "MobileApp");
#else
  engine.loadFromModule("Apps", "DesktopApp");
#endif

  return app.exec();
}
