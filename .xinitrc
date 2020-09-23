xrandr --output DisplayPort-0 --mode 1920x1080 --refresh 144 --primary --gamma .85:.85:.85
xrandr --output DisplayPort-1 --mode 1920x1080 --refresh 60 --left-of DisplayPort-0 --gamma .85:.85:.85
xrandr --output DisplayPort-2 --mode 1920x1080 --refresh 60 --above DisplayPort-0 --gamma .85:.85:.85
xrandr --output HDMI-A-0 --mode 1920x1080 --refresh 60 --right-of DisplayPort-0 --gamma .85:.85:.85
xrdb ~/.Xresources
exec bspwm
