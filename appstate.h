#ifndef APPSTATE_H
#define APPSTATE_H

#include <QCoreApplication>
#include <QImage>
#include <QNetworkReply>
#include <QObject>

class AppState : public QObject
{
    Q_OBJECT
public:
    explicit AppState(QObject *parent = nullptr);
    ~AppState();

    Q_INVOKABLE void loadImageFromPath(QString path);
    Q_INVOKABLE void onImportFromUrlClicked(QString url);

    Q_PROPERTY(QImage image READ getImage WRITE setImage NOTIFY onImageChanged)
    Q_PROPERTY(bool isImageLoaded READ getIsImageLoaded WRITE setIsImageLoaded NOTIFY onIsImageLoadedChanged)

    QImage getImage();
    QString getImageUrl();
    bool getIsImageLoaded();
    void setImage(QImage image);
    void setIsImageLoaded(bool value);

private:
    bool isImageLoaded;
    QImage image;

signals:
    void onImageChanged();
    void onIsImageLoadedChanged();
};

#endif // APPSTATE_H
