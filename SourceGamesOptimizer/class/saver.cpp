#include "saver.h"

Saver::Saver(QObject *parent) : QObject(parent){

}

QString Saver::save(QString output){

    QFile file("C:/Program Files (x86)/Steam/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg");
    file.open(QIODevice::WriteOnly | QIODevice::Text);
    QTextStream out(&file);
    QString convertedOutput(output);
    out << convertedOutput;
    file.close();
    return "test";
}
