verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/student/Downloads/project/RTL2GDSII/rtl_simulation/simv" \
           -args
debImport "-dbdir" \
          "/home/student/Downloads/project/RTL2GDSII/rtl_simulation/simv.daidir"
debLoadSimResult \
           /home/student/Downloads/project/RTL2GDSII/rtl_simulation/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "233" "27" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {8 16 1 1 2 1}
wvAddSignal -win $_nWave2 "/magComp_tb/Clock" "/magComp_tb/A\[7:0\]" \
           "/magComp_tb/B\[7:0\]" "/magComp_tb/Gt" "/magComp_tb/Lt" \
           "/magComp_tb/Eq"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetCursor -win $_nWave2 7.166390 -snap {("G1" 5)}
srcActiveTrace "magComp_tb.Lt" -TraceByDConWave -TraceTime 0 -TraceValue x -win \
           $_nTrace1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 4.802739 10.133527
verdiWindowResize -win $_Verdi_1 "7" "27" "1126" "700"
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10.855803 -snap {("G1" 5)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 48.280010 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 51.728582 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 69.737792 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 89.471288 -snap {("G1" 1)}
srcHBSelect "magComp_tb" -win $_nTrace1
srcSetScope "magComp_tb" -delim "." -win $_nTrace1
srcHBSelect "magComp_tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
schCreateWindow -delim "." -win $_nSchema1 -scope "magComp_tb"
schCreateWindow -delim "." -win $_nSchema1 -scope "magComp_tb"
verdiSetActWin -win $_nSchema_4
verdiWindowResize -win $_Verdi_1 "7" "27" "1354" "700"
verdiSetActWin -win $_nWave2
schLastView -win $_nSchema4
verdiSetActWin -win $_nSchema_4
schLastView -win $_nSchema4
schPopViewUp -win $_nSchema4
schPopViewUp -win $_nSchema4
schLastView -win $_nSchema4
schSelect -win $_nSchema4 -inst "dut"
schPushViewIn -win $_nSchema4
debExit
