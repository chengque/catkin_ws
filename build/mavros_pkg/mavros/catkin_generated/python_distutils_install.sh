#!/bin/sh -x

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

cd "/home/chengque/catkin_ws/src/mavros_pkg/mavros"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
/usr/bin/env \
    PYTHONPATH="/opt/ros/jade/lib/python2.7/dist-packages:/home/chengque/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/chengque/catkin_ws/build" \
    "/usr/bin/python" \
    "/home/chengque/catkin_ws/src/mavros_pkg/mavros/setup.py" \
    build --build-base "/home/chengque/catkin_ws/build/mavros_pkg/mavros" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/opt/ros/jade" --install-scripts="/opt/ros/jade/bin"
