mkdir -p ~/web

python3 -m venv <venv>
source venv/bin/activate
pip install gunicorn
sudo touch /etc/systemd/system/gunicorn.service

