#include "appstate.h"

AppState::AppState(QObject *parent)
    : QObject{parent},
      isImageLoaded(false)
{

}


AppState::~AppState()
{

}

void AppState::loadImageFromPath(QString path)
{
    this->setImage(QImage(path));
}

void AppState::onImportFromUrlClicked(QString url)
{
    QEventLoop eventLoop;
    QNetworkAccessManager mgr;
    QObject::connect(&mgr, SIGNAL(finished(QNetworkReply*)), &eventLoop, SLOT(quit()));
    QNetworkReply *reply = mgr.get(QNetworkRequest(QUrl(url)));
    eventLoop.exec();
    QByteArray content = reply->readAll();

    this->setImage(QImage(content));
}

void AppState::onPastedFromClipboard()
{
    QClipboard *clipboard = QGuiApplication::clipboard();
    this->setImage(clipboard->image());
}

QImage AppState::getImage()
{
    return QImage();
}

void AppState::setImage(QImage image)
{
    this->image = image;
    this->setIsImageLoaded(true);
    emit onIsImageLoadedChanged();
}

bool AppState::getIsImageLoaded()
{
    return this->isImageLoaded;
}

void AppState::setIsImageLoaded(bool value)
{
    this->isImageLoaded = value;
}
