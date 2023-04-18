py get-pip.py
timeout 10
pip install --upgrade pip
timeout 20
pip install virtualenv
timeout 10
virtualenv -p python3 es_run_env
es_run_env/Scripts/activate
pip install -r requirements.txt