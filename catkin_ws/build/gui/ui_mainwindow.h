/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 4.8.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QGroupBox>
#include <QtGui/QHeaderView>
#include <QtGui/QMainWindow>
#include <QtGui/QMenuBar>
#include <QtGui/QPushButton>
#include <QtGui/QStatusBar>
#include <QtGui/QToolBar>
#include <QtGui/QWidget>
#include "qcustomplot.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QCustomPlot *headingPlot;
    QCustomPlot *velocityPlot;
    QCustomPlot *satelliteView;
    QGroupBox *obstInterfaceWindow;
    QPushButton *pushButton;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(1714, 1103);
        MainWindow->setAutoFillBackground(false);
        MainWindow->setStyleSheet(QString::fromUtf8("background-color: rgb(64, 64, 64);"));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        headingPlot = new QCustomPlot(centralWidget);
        headingPlot->setObjectName(QString::fromUtf8("headingPlot"));
        headingPlot->setGeometry(QRect(0, 230, 861, 201));
        velocityPlot = new QCustomPlot(centralWidget);
        velocityPlot->setObjectName(QString::fromUtf8("velocityPlot"));
        velocityPlot->setGeometry(QRect(10, 10, 851, 201));
        satelliteView = new QCustomPlot(centralWidget);
        satelliteView->setObjectName(QString::fromUtf8("satelliteView"));
        satelliteView->setGeometry(QRect(880, 10, 821, 1001));
        obstInterfaceWindow = new QGroupBox(centralWidget);
        obstInterfaceWindow->setObjectName(QString::fromUtf8("obstInterfaceWindow"));
        obstInterfaceWindow->setGeometry(QRect(460, 450, 401, 561));
        obstInterfaceWindow->setStyleSheet(QString::fromUtf8("color: rgb(125, 125, 125);\n"
"background-color: rgb(0, 0, 0);\n"
"background-color: rgb(48, 48, 48);"));
        pushButton = new QPushButton(obstInterfaceWindow);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));
        pushButton->setGeometry(QRect(0, 30, 115, 32));
        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1714, 26));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QString::fromUtf8("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QString::fromUtf8("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0, QApplication::UnicodeUTF8));
        obstInterfaceWindow->setTitle(QApplication::translate("MainWindow", "Obstacle Control", 0, QApplication::UnicodeUTF8));
        pushButton->setText(QApplication::translate("MainWindow", "PushButton", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
