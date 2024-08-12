; Configuration file for Duet 3 MB 6HC (firmware version 3.3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.3.16 on Thu Sep 14 2023 21:11:13 GMT+0900 (日本標準時)

M954 A1 ; set CAN ID = 1

; General preferences
G90                                                     ; send absolute coordinates...
M83                                                     ; ...but relative extruder moves
M550 P"OpenPnP_CoreXY_6HC"                                  ; set printer name
;M669 K1                                                 ; select CoreXY mode
M453                                                    ; CNC machine mode
G21                                                     ; Set Units to Millimeters
M595 Q1 P60                                            ; movement queue length

; Network
M552 P192.168.1.121 S1                                  ; enable network and set IP address
M553 P255.255.255.0                                     ; set netmask
M554 P192.168.1.5                                       ; set gateway
M586 P0 S1                                              ; enable HTTP
M586 P1 S0                                              ; disable FTP
M586 P2 S0                                              ; disable Telnet

; global variables
;global Zhome = 0                                        ; set Head Z axis home position (mm)
;global Zmin = -62                                       ; set Head Z axis minimum position (mm)
;global Zmax = 62                                        ; set Head Z axis maximum position (mm)
;
;global Amin = -360000                                   ; set platform Y axis minimum position (mm)
;global Amax = 360000                                    ; set platform Y axis maximum position (mm)
;
;global Bmin = -360000                                   ; set platform Y axis minimum position (mm)
;global Bmax = 360000                                    ; set platform Y axis maximum position (mm)
;
;global Uhome = 0                                        ; set Head Z axis home position (mm)
;global Umin = -62                                       ; set Head Z axis minimum position (mm)
;global Umax = 62                                        ; set Head Z axis maximum position (mm)
;
;global Vmin = -360000                                   ; set platform Y axis minimum position (mm)
;global Vmax = 360000                                    ; set platform Y axis maximum position (mm)
;
;global Wmin = -360000                                   ; set platform Y axis minimum position (mm)
;global Wmax = 360000                                    ; set platform Y axis maximum position (mm)

; Drives
M18                                                      ; motors off
M569 P1.0 S1 D3 V5 H5                                    ; physical drive 1.0 goes forwards
M915 P1.0 T0                                             ; set tpwmthrs = 0 for TMC2160
M569 P1.1 S1 D3 V5 H5                                    ; physical drive 1.1 goes forwards
M915 P1.1 T0                                             ; set tpwmthrs = 0 for TMC2160
M569 P1.2 S1 D3 V5 H5                                    ; physical drive 1.2 goes forwards
M915 P1.2 T0                                             ; set tpwmthrs = 0 for TMC2160
M569 P1.3 S1 D3 V5 H5                                    ; physical drive 1.3 goes forwards
M915 P1.3 T0                                             ; set tpwmthrs = 0 for TMC2160
M569 P1.4 S1 D3 V5 H5                                    ; physical drive 1.4 goes forwards
M915 P1.4 T0                                             ; set tpwmthrs = 0 for TMC2160
M569 P1.5 S1 D3 V5 H5                                    ; physical drive 1.5 goes forwards
M915 P1.5 T0                                             ; set tpwmthrs = 0 for TMC2160

; set drive mapping
M584 Z1.0 S0                                          ; Z LIN
M584 A1.1 S0                                          ; A ROT
M584 B1.2 S0                                          ; B ROT
M584 U1.3 S0                                          ; U LIN
M584 V1.4 S0                                          ; V ROT
M584 W1.5 S0                                          ; W ROT

M350 Z16 A16 B16 U16 V16 W16 I1                           ; configure microstepping with interpolation
M92 Z80.00 A8.888 B8.888 U80.00 V8.888 W8.888             ; set steps per mm
M566 Z900.00 A120.00 B120.00 U900.00 V120.00 W120.00      ; set maximum instantaneous speed changes (mm/min)
M203 Z83000.00 A80000.00 B80000.00 U83000.00 V80000.00 W80000.00 ; set maximum speeds (mm/min)
M201 Z30000.00 A5000.00 B5000.00 U30000.00 V5000.00 W5000.00       ; set accelerations (mm/s^2)
M906 Z680 A600 B600 U680 V600 W600 I30                      ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                                  ; Set idle timeout

; Axis Limits
;M208 Z{global.Zmin} A{global.Amin} B{global.Bmin} U{global.Umin} V{global.Vmin} W{global.Wmin} S1         ; set axis minima
;M208 Z{global.Zmax} A{global.Amax} B{global.Bmax} U{global.Umax} V{global.Vmax} W{global.Wmax} S0         ; set axis maxima

; Endstops
M574 Z1 S1 P"^1.io0.in"                                   ; configure switch-type (e.g. microswitch) endstop for high end on Z0 via pin ^io0.in
M574 U1 S1 P"^1.io1.in"                                   ; configure switch-type (e.g. microswitch) endstop for high end on Z1 via pin ^io1.in

; Custom settings
;***IO
;***Outputs
M950 P0 C"out0" Q20000                                  ;
M950 P1 C"out1" Q20000                                  ;
M950 P2 C"out2" Q20000                                  ;
M950 P3 C"out3" Q20000                                  ;
M950 P4 C"out4" Q20000                                  ;
M950 P5 C"out5" Q20000                                  ;
M950 P6 C"out6" Q20000                                  ;
M950 P7 C"out7" Q20000                                  ;
M950 P8 C"out8" Q20000                                  ;
M950 S9 C"out9"                                         ;Nozzle Changer Servo

;M42 P5 S1                                               ;LED DN Disable
;M42 P6 S0												;Room Lamp Disable
M280 P9 S120                                            ;Servo InitialPosition(Open)
