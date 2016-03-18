#ifndef COMMANDSGENERATOR_H
#define COMMANDSGENERATOR_H

#include <QObject>

class CommandsGenerator : public QObject
{
    Q_OBJECT
public:
    explicit CommandsGenerator(QObject *parent = 0);

signals:

public slots:
};

#endif // COMMANDSGENERATOR_H