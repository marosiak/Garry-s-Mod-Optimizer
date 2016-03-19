#ifndef SAVER_H
#define SAVER_H

#include <QObject>
#include <QUrl>
#include <QTextStream>
#include <QFile>
#include <stdio.h>

class Saver : public QObject
{
    Q_OBJECT
public:
    explicit Saver(QObject *parent = 0);

    Q_INVOKABLE QString save(QString output);
signals:

public slots:
};

#endif // SAVER_H
