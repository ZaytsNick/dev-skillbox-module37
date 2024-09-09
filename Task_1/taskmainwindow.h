#ifndef TASKMAINWINDOW_H
#define TASKMAINWINDOW_H

#include <QMainWindow>
#include <QLineEdit>

#include <iostream>
#include <string>
#include <stdlib.h>

struct example
       {
    int a=0;
    int b=0;
    char act='0';
};

class TaskMainWindow : public QMainWindow{
    example exam;
    Q_OBJECT
public:

    QLineEdit* lineEdit = nullptr;

    TaskMainWindow(QWidget* parent=nullptr):QMainWindow(parent){}
//    Second(){}
public slots:
    void add0(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"0");};
    void add1(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"1");};
    void add2(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"2");};
    void add3(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"3");};
    void add4(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"4");};
    void add5(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"5");};
    void add6(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"6");};
    void add7(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"7");};
    void add8(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"8");};
    void add9(){if(exam.b!=0){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';}lineEdit->setText(lineEdit->text()+"9");};
    void clear(){lineEdit->setText("");exam.a=0;exam.b=0;exam.act='0';};
    example plus(){
        if(exam.a==0 && lineEdit->text().size()>0)
        {
            exam.a=lineEdit->text().toInt();
            lineEdit->setText("");
            exam.act='+';
        }
    };
    example minus(){
        if(exam.a==0 && lineEdit->text().size()>0)
        {
            exam.a=lineEdit->text().toInt();
            lineEdit->setText("");
            exam.act='-';
        }
    };
    example multiplication(){
        if(exam.a==0 && lineEdit->text().size()>0)
        {
            exam.a=lineEdit->text().toInt();
            lineEdit->setText("");
            exam.act='*';
        }
    };
    example division(){
        if(exam.a==0 && lineEdit->text().size()>0)
        {
            exam.a=lineEdit->text().toInt();
            lineEdit->setText("");
            exam.act='/';
        }
    };
    void total(){

        if(exam.a!=0 && exam.act!='0' && lineEdit->text().size()>0)
        {
            exam.b=lineEdit->text().toInt();
//            lineEdit->setText("");
//            exam.act='+';
            switch (exam.act) {

            case '+':
                lineEdit->setText("Total: "+QString::number(exam.a+exam.b));
                break;
            case '-':
                lineEdit->setText("Total: "+QString::number(exam.a-exam.b));
                break;
            case '*':
                lineEdit->setText("Total: "+QString::number(exam.a*exam.b));
                break;
            case '/':
                lineEdit->setText("Total: "+QString::number(exam.a/exam.b));
                break;
            }
        }
    };
};
#endif // TASKMAINWINDOW_H
