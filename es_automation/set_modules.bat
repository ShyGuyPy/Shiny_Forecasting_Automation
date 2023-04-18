
echo "python requirements loading. wating 5 seconds"
pip install -r requirements.txt
::timeout 5
::echo "python requirements loaded. Running ExtendSim10"
::python es_automation/es_run_all.py


