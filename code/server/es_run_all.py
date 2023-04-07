##this is a workaronud to an issue were win32com module would not 
#import properly whe run through r reticulate module

import win32com.client
import win32gui as wg
import win32con
import time


if (__name__ == '__main__'):

  def open_and_ID(prog_ID, win_ID):
      program_handle = win32com.client.Dispatch(prog_ID)
      app_ID = wg.FindWindow(None, win_ID)
      wg.ShowWindow(app_ID, win32con.SW_MAXIMIZE)
      wg.SetActiveWindow(app_ID)
      #wg.SetForegroundWindow(app_ID)
      #print(program_handle)
      print(app_ID)
      return program_handle

  def run_by_id(prog_ID, win_ID):
      program_handle = win32com.client.Dispatch(prog_ID)
      app_ID = wg.FindWindow(None, win_ID)
      program_handle.Execute("""ExecuteMenuCommand(6000)""")

  def set_and_run(prog_ID, win_ID, SetEndTime, SetStartTime, SetNumSim, SetNumStep):
      program_handle = win32com.client.Dispatch(prog_ID)
      app_ID = wg.FindWindow(None, win_ID)
      # sets the setting parameters into a string that can be fed into the MODL execute
      execute_input = """SetRunParameters({}, {}, {}, {})""".format(SetEndTime, SetStartTime, SetNumSim, SetNumStep)
      program_handle.Execute(execute_input)

  def wait_time(x):
      time.sleep(x)

  def test_click():
      print("click works")


  def run_all():

    #open model
    es_handle = open_and_ID("Extend.application", "ExtendSim")

    wait_time(2)


    #sets run parameters and then runt he model
    set_and_run("Extend.application", "ExtendSim", 1000, 0 , 1, 1)

    #run open model
    run_by_id("Extend.application", "ExtendSim")

print("working")

run_all()
