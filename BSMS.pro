
QMAKE_CXXFLAGS += /arch:AVX
QT += core gui serialbus network concurrent opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += c++17
QMAKE_CXXFLAGS += -std:c++17 -Zc:__cplusplus
TARGET = BSMS
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

win32:QMAKE_LFLAGS += /bigobj
win32:QMAKE_CXXFLAGS += /bigobj

QMAKE_PROJECT_DEPTH = 0

SOURCES += \
    create_ballscrew.cpp \
    display_point_cloud_rendering.cpp \
    display_point_size_setting.cpp \
    enroll.cpp \
    filter_circle.cpp \
    filter_conditional.cpp \
    filter_cylinder.cpp \
    filter_passthrough.cpp \
    filter_plane.cpp \
    filter_projection.cpp \
    filter_radius.cpp \
    filter_statistical.cpp \
    filter_uniform.cpp \
    filter_voxelgrid.cpp \
    fitting_circle.cpp \
    fitting_cylinder.cpp \
    fitting_plane.cpp \
    gror_pre.cpp \
    login.cpp \
    main.cpp \
    mainwindow.cpp \
    measure_leadangle.cpp \
    measure_point_to_line.cpp \
    measure_point_to_point.cpp \
    pcl_function.cpp \
    reconstruction_greed_triangulation.cpp \
    enroll.cpp \
    registration_fpcs.cpp \
    registration_gror.cpp \
    registration_icp_po2pl.cpp \
    registration_icp_po2po.cpp \
    registration_ticp.cpp \
    resetpw.cpp \
    select_point_in_box.cpp

HEADERS += \
    create_ballscrew.h \
    display_point_cloud_rendering.h \
    display_point_size_setting.h \
    enroll.h \
    filter_circle.h \
    filter_conditional.h \
    filter_cylinder.h \
    filter_passthrough.h \
    filter_plane.h \
    filter_projection.h \
    filter_radius.h \
    filter_statistical.h \
    filter_uniform.h \
    filter_voxelgrid.h \
    fitting_circle.h \
    fitting_cylinder.h \
    fitting_plane.h \
    gror_common.h \
    gror_pre.h \
    ia_gror.h \
    ia_gror.hpp \
    login.h \
    mainwindow.h \
    measure_leadangle.h \
    measure_point_to_line.h \
    measure_point_to_point.h \
    pcl_function.h \
    reconstruction_greed_triangulation.h \
    enroll.h \
    registration_fpcs.h \
    registration_gror.h \
    registration_icp_po2pl.h \
    registration_icp_po2po.h \
    registration_ticp.h \
    resetpw.h \
    select_point_in_box.h

FORMS += \
    create_ballscrew.ui \
    display_point_cloud_rendering.ui \
    display_point_size_setting.ui \
    enroll.ui \
    filter_circle.ui \
    filter_conditional.ui \
    filter_cylinder.ui \
    filter_passthrough.ui \
    filter_plane.ui \
    filter_projection.ui \
    filter_radius.ui \
    filter_statistical.ui \
    filter_uniform.ui \
    filter_voxelgrid.ui \
    fitting_circle.ui \
    fitting_cylinder.ui \
    fitting_plane.ui \
    login.ui \
    mainwindow.ui \
    measure_leadangle.ui \
    measure_point_to_line.ui \
    measure_point_to_point.ui \
    reconstruction_greed_triangulation.ui \
    enroll.ui \
    registration_fpcs.ui \
    registration_gror.ui \
    registration_icp_po2pl.ui \
    registration_icp_po2po.ui \
    registration_ticp.ui \
    resetpw.ui \
    select_point_in_box.ui

RESOURCES += \
    res.qrc

RC_ICONS = icon\ballscrew.ico

INCLUDEPATH += $$PWD/.
DEPENDPATH += $$PWD/.

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

include(pcl.pri)
