/****************************************************************************
** Meta object code from reading C++ file 'states.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../SourceGamesOptimizer/class/states.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'states.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_States_t {
    QByteArrayData data[5];
    char stringdata0[32];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_States_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_States_t qt_meta_stringdata_States = {
    {
QT_MOC_LITERAL(0, 0, 6), // "States"
QT_MOC_LITERAL(1, 7, 7), // "getBool"
QT_MOC_LITERAL(2, 15, 0), // ""
QT_MOC_LITERAL(3, 16, 1), // "a"
QT_MOC_LITERAL(4, 18, 13) // "getConnection"

    },
    "States\0getBool\0\0a\0getConnection"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_States[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x02 /* Public */,
       4,    0,   27,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Bool, QMetaType::Bool,    3,
    QMetaType::Bool,

       0        // eod
};

void States::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        States *_t = static_cast<States *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: { bool _r = _t->getBool((*reinterpret_cast< bool(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 1: { bool _r = _t->getConnection();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObject States::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_States.data,
      qt_meta_data_States,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *States::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *States::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_States.stringdata0))
        return static_cast<void*>(const_cast< States*>(this));
    return QObject::qt_metacast(_clname);
}

int States::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE