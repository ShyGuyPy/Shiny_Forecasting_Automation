import win32com.client
import win32gui as wg
import win32con
import time
#
prog_ID ="Extend.application"
win_ID = "ExtendSim"

program_handle = win32com.client.Dispatch(prog_ID)
app_ID = wg.FindWindow(None, win_ID)
print(app_ID)
#wg.ShowWindow(app_ID, win32con.SW_MAXIMIZE)
#wg.SetActiveWindow(app_ID)

#time.sleep(60)

program_handle = win32com.client.Dispatch(prog_ID)
app_ID = wg.FindWindow(None, win_ID)
# sets the setting parameters into a string that can be fed into the MODL execute
execute_input = """SetRunParameters({}, {}, {}, {})""".format(SetEndTime, SetStartTime, SetNumSim, SetNumStep)
program_handle.Execute(execute_input)

time.sleep(60)

program_handle = win32com.client.Dispatch(prog_ID)
app_ID = wg.FindWindow(None, win_ID)
program_handle.Execute("""ExecuteMenuCommand(6000)""")