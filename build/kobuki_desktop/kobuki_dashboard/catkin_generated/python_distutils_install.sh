#!/bin/sh

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

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/lzw/turtlebot2/src/kobuki_desktop/kobuki_dashboard"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/lzw/turtlebot2/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/lzw/turtlebot2/install/lib/python2.7/dist-packages:/home/lzw/turtlebot2/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/lzw/turtlebot2/build" \
    "/usr/bin/python2" \
    "/home/lzw/turtlebot2/src/kobuki_desktop/kobuki_dashboard/setup.py" \
    build --build-base "/home/lzw/turtlebot2/build/kobuki_desktop/kobuki_dashboard" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/lzw/turtlebot2/install" --install-scripts="/home/lzw/turtlebot2/install/bin"
