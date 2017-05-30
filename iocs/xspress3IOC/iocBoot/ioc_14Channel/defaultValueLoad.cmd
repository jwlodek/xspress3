#############
# Setup IOC with default values
#############

#Enable Array Callbacks, set Attributes file
dbpf("$(PREFIX)det1:ArrayCallbacks","Enable")
dbpf("$(PREFIX)det1:NDAttributesFile", "XSP3.xml")

#Configure HDF Plugin
dbpf("$(PREFIX)HDF1:FileTemplate", "%s%s%d.hdf5")
dbpf("$(PREFIX)HDF1:FileWriteMode", "Stream")
dbpf("$(PREFIX)HDF1:EnableCallbacks", "Enable")
dbpf("$(PREFIX)HDF1:Compression", "zlib")
dbpf("$(PREFIX)HDF1:ZLevel", "1")
dbpf("$(PREFIX)HDF1:AutoIncrement", "Yes")

#Configure PROC plugin spectra summing
dbpf("$(PREFIX)Proc1:EnableFilter", "Enable")
dbpf("$(PREFIX)Proc1:FilterType", "Sum")
dbpf("$(PREFIX)Proc1:EnableCallbacks", "Enable")

#Configure and connect to Xspress3
dbpf("$(PREFIX)det1:CONFIG_PATH", "/home/xspress3/xspress3_settings/")
dbpf("$(PREFIX)det1:RUN_FLAGS","0")
dbpf("$(PREFIX)det1:NUM_CHANNELS","4")
dbpf("$(PREFIX)det1:NumImages", 1)
dbpf("$(PREFIX)det1:AcquireTime", 1.0)
dbpf("$(PREFIX)det1:CONNECT","1")
dbpf("$(PREFIX)det1:CTRL_DTC",  "Disable")
dbpf("$(PREFIX)det1:TriggerMode","Internal")

#Setup Channel 1
epicsEnvSet("CHAN",   "1")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "0")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "0")

#Setup Channel 2
epicsEnvSet("CHAN",   "2")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "1")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "1")

#Setup Channel 3
epicsEnvSet("CHAN",   "3")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "2")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "2")

#Setup Channel 4
epicsEnvSet("CHAN",   "4")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "3")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "3")

#Setup Channel 5
epicsEnvSet("CHAN",   "5")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "4")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "4")

#Setup Channel 6
epicsEnvSet("CHAN",   "6")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "5")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "5")

#Setup Channel 7
epicsEnvSet("CHAN",   "7")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "6")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "6")

#Setup Channel 8
epicsEnvSet("CHAN",   "8")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "7")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "7")

#Setup Channel 9
epicsEnvSet("CHAN",   "9")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "8")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "8")

#Setup Channel 10
epicsEnvSet("CHAN",   "10")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "9")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "9")

#Setup Channel 11
epicsEnvSet("CHAN",   "11")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "10")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "10")

#Setup Channel 12
epicsEnvSet("CHAN",   "12")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "11")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "11")

#Setup Channel 13
epicsEnvSet("CHAN",   "13")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "12")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "12")

#Setup Channel 14
epicsEnvSet("CHAN",   "14")
<defaultValuesChan.cmd

dbpf("$(PREFIX)ROI$(CHAN):MinY",    "13")
dbpf("$(PREFIX)ROISUM$(CHAN):MinY", "13")
