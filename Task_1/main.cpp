#include <QApplication>
#include <QPushButton>
#include "./ui_task_1.h"
#include "taskmainwindow.h"

int main(int argc, char *argv[]) {
    QApplication a(argc, argv);
    TaskMainWindow wind(nullptr);
    Ui::MainWindow calc;
    calc.setupUi(&wind);
    wind.lineEdit= calc.lineEdit;
    wind.resize(480, 640);
    wind.show();
    return QApplication::exec();
}
