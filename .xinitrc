feh --bg-scale Downloads/Wallpapers/366639.jpg

# 드디어 한글은 입력할 수 있어요
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx5 &

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &
dwmblocks &
picom &
dunst &
exec dwm
