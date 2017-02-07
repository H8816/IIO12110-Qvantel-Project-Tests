Xvfb :99 &
export DISPLAY=:99
ps
sudo robot locatortest.txt
sudo killall -v Xvfb
