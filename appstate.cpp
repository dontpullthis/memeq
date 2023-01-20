#include "appstate.h"

AppState::AppState(QObject *parent)
    : QObject{parent}
{

}


AppState::~AppState()
{
    delete image;
}
