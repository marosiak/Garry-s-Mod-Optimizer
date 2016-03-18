#ifndef STATES_H
#define STATES_H

#include <QObject>

class States : public QObject
{
    Q_OBJECT
public:
    explicit States(QObject *parent = 0);

private:
    bool connection;
    bool sprays;
    bool shadows;
    bool facial;
    bool ragdolls;
    bool gibs;
    bool sky3d;
    bool rope;

public slots:
};

#endif // STATES_H
