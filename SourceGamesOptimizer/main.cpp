#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "./class/saver.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    Saver sv;
        engine.rootContext()->setContextProperty("Saver", &sv);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
