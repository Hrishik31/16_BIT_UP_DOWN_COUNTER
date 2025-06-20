simSetSimulator "-vcssv" -exec \
           "/home/student/HRISHIK_project/RTL2GDSII/rtl_simulation/simv" -args \
           "Verdi"
debImport "-dbdir" \
          "/home/student/HRISHIK_project/RTL2GDSII/rtl_simulation/simv.daidir"
debLoadSimResult \
           /home/student/HRISHIK_project/RTL2GDSII/rtl_simulation/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "27" "1366" "704"
verdiWindowResize -win $_Verdi_1 "0" "27" "1366" "704"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {8 13 2 1 1 1}
wvSelectGroup -win $_nWave2 {G1}
verdiSetActWin -win $_nWave2
wvAddSignal -win $_nWave2 "/up_down_counter_16bit_tb/Clock" \
           "/up_down_counter_16bit_tb/Reset" \
           "/up_down_counter_16bit_tb/Enable" \
           "/up_down_counter_16bit_tb/Up_Down"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
schCreateWindow -delim "." -win $_nSchema1 -scope "up_down_counter_16bit_tb"
verdiSetActWin -win $_nSchema_3
schCloseWindow -win $_nSchema3
verdiSetActWin -win $_nWave2
schCreateWindow -delim "." -win $_nSchema1 -scope "up_down_counter_16bit_tb"
verdiSetActWin -win $_nSchema_4
schSelect -win $_nSchema4 -signal "Clock"
schFocusConnection -win $_nSchema4
schSelect -win $_nSchema4 -inst "up_down_counter_16bit_tb:Always0:26:26:Combo"
schPushViewIn -win $_nSchema4
srcSelect -win $_nTrace1 -range {26 26 1 14 1 1}
schCreateWindow -delim "." -win $_nSchema1 -scope "up_down_counter_16bit_tb"
verdiSetActWin -win $_nSchema_5
schZoomOut -win $_nSchema5
schZoomOut -win $_nSchema5
schZoomIn -win $_nSchema5
schZoomIn -win $_nSchema5
schZoomOut -win $_nSchema5
schZoomIn -win $_nSchema5
schZoomIn -win $_nSchema5
schZoomOut -win $_nSchema5
schCloseWindow -win $_nSchema5
verdiSetActWin -win $_nSchema_4
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_4
verdiSetActWin -win $_nSchema_4
schDeselectAll -win $_nSchema4
schSelect -win $_nSchema4 -inst "uut"
schPushViewIn -win $_nSchema4
debExit
