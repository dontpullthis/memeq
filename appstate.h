#ifndef APPSTATE_H
#define APPSTATE_H

#include <QImage>
#include <QObject>

class AppState : public QObject
{
    Q_OBJECT
public:
    explicit AppState(QObject *parent = nullptr);
    ~AppState();

    QImage *image = nullptr;

signals:

};

#endif // APPSTATE_H
