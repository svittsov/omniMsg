#ifndef OMNITHREAD_H
#define OMNITHREAD_H

#include <QThread>

class OmniThread : public QThread
{
    Q_OBJECT

public:
    OmniThread(int argc, char **argv, QObject *parent = 0);
    ~OmniThread();

protected:
    void run();
    int _argc;
    char **_argv;
};

#endif
