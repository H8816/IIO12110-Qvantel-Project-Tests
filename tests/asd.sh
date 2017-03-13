Xvfb :99 &
export DISPLAY=:99
sudo robot testi.txt
killall -v Xvfb
