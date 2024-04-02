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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/inexbot/NSAI_new/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/inexbot/NSAI_new/install/lib/python3/dist-packages:/home/inexbot/NSAI_new/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/inexbot/NSAI_new/build" \
    "/usr/bin/python3" \
    "/home/inexbot/NSAI_new/src/Official_package/MIR/mir_robot/mir_driver/setup.py" \
     \
    build --build-base "/home/inexbot/NSAI_new/build/Official_package/MIR/mir_robot/mir_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/inexbot/NSAI_new/install" --install-scripts="/home/inexbot/NSAI_new/install/bin"
