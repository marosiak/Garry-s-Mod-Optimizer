#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "./class/states.h"
#include "./class/commandsgenerator.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    States states;
        engine.rootContext()->setContextProperty("States", &states);
    CommandsGenerator cmdsg;
        engine.rootContext()->setContextProperty("CommandsGenerator", &cmdsg);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
