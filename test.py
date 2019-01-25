# -*- coding: utf-8 -*-

import ctypes
import platform

if platform.system() == "Windows":
    d = ctypes.CDLL("./deps/win64/libdss_capi_v7.dll")
elif platform.system() == "Linux":
    d = ctypes.CDLL("./deps/linux/libdss_capi_v7.so")
else:
    d = ctypes.CDLL("./deps/apple/libdss_capi_v7.dylib")

d.DSS_Start(0)
d.Text_Set_Command(b"Redirect ./examples/8500-Node/Run_8500Node.dss")
d.Text_Get_Result.restype = ctypes.c_char_p
assert d.Text_Get_Result() == b""

p = ctypes.pointer(ctypes.POINTER(ctypes.c_char_p)())
vi = (ctypes.c_int * 2)()

d.Circuit_Get_AllBusNames(p, vi)

print("Number of buses = {}".format(vi[0]))

for i in range(0, 3):
    print(p.contents[i])
