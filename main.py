import sys
import sysconfig

gill_enabled = sys._is_gil_enabled()
Py_GIL_DISABLED = sysconfig.get_config_var("Py_GIL_DISABLED")

print(f"sys._is_gil_enabled(): {gill_enabled}")
print(f"sysconfig.get_config_var(\"Py_GIL_DISABLED\"): {Py_GIL_DISABLED}")
