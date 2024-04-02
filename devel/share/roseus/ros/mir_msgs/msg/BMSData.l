;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::BMSData)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'BMSData (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::BMSDATA")
  (make-package "MIR_MSGS::BMSDATA"))

(in-package "ROS")
;;//! \htmlinclude BMSData.msg.html


(intern "*DISCHARGING*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*DISCHARGING* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*DISCHARGING* 1)
(intern "*CHARGING*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*CHARGING* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*CHARGING* 2)
(intern "*OV*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*OV* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*OV* 4)
(intern "*UV*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*UV* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*UV* 8)
(intern "*COC*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*COC* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*COC* 16)
(intern "*DOC*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*DOC* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*DOC* 32)
(intern "*DOT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*DOT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*DOT* 64)
(intern "*DUT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*DUT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*DUT* 128)
(intern "*SC*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SC* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SC* 512)
(intern "*COT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*COT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*COT* 1024)
(intern "*CUT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*CUT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*CUT* 2048)
(intern "*FW_STATUS_MSK*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_MSK* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_MSK* 2031616)
(intern "*FW_STATUS_SHIFT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_SHIFT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_SHIFT* 16)
(intern "*FW_UPD_OK*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_OK* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_OK* 0)
(intern "*FW_UPD_RUNNING*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_RUNNING* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_RUNNING* 1)
(intern "*FW_UPD_FAILED_BOOT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_FAILED_BOOT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_FAILED_BOOT* 2)
(intern "*FW_UPD_FAILED_APP*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_FAILED_APP* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_FAILED_APP* 3)
(intern "*FW_UPD_FAILED_PARAM*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_FAILED_PARAM* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_FAILED_PARAM* 4)
(intern "*FW_STATUS_LOW_BATT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_LOW_BATT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_LOW_BATT* 5)
(intern "*FW_STATUS_FILE_CORRUPTED*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_FILE_CORRUPTED* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_FILE_CORRUPTED* 6)
(intern "*FW_STATUS_CURRENT_TO_HIGH*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_CURRENT_TO_HIGH* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_CURRENT_TO_HIGH* 7)
(intern "*FW_STATUS_NO_CAN*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_NO_CAN* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_NO_CAN* 8)
(intern "*FW_BATTERY_IMBALANCE_HIGH*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_BATTERY_IMBALANCE_HIGH* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_BATTERY_IMBALANCE_HIGH* 9)
(intern "*BATT_TYPE_UNKNOWN*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*BATT_TYPE_UNKNOWN* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*BATT_TYPE_UNKNOWN* 0)
(intern "*BATT_TYPE_BMZ*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*BATT_TYPE_BMZ* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*BATT_TYPE_BMZ* 1)
(intern "*BATT_TYPE_WST*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*BATT_TYPE_WST* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*BATT_TYPE_WST* 2)
(intern "*BATT_TYPE_SBS*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*BATT_TYPE_SBS* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*BATT_TYPE_SBS* 3)
(intern "*BATT_TYPE_SBS_SLIDE*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*BATT_TYPE_SBS_SLIDE* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*BATT_TYPE_SBS_SLIDE* 4)
(intern "*BATT_TYPE_NO_BMS*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*BATT_TYPE_NO_BMS* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*BATT_TYPE_NO_BMS* 255)
(intern "*SBS_INITSTATE1*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_INITSTATE1* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_INITSTATE1* 1)
(intern "*SBS_INITSTATE2*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_INITSTATE2* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_INITSTATE2* 2)
(intern "*SBS_INITSTATE3*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_INITSTATE3* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_INITSTATE3* 3)
(intern "*SBS_INITSTATE4*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_INITSTATE4* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_INITSTATE4* 4)
(intern "*SBS_IDLE*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_IDLE* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_IDLE* 5)
(intern "*SBS_DISCHARGE*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_DISCHARGE* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_DISCHARGE* 6)
(intern "*SBS_CHARGE*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_CHARGE* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_CHARGE* 7)
(intern "*SBS_FAULT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_FAULT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_FAULT* 10)
(intern "*SBS_CRITICALERROR*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_CRITICALERROR* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_CRITICALERROR* 11)
(intern "*SBS_PREPAREDEEPSLEEP*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_PREPAREDEEPSLEEP* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_PREPAREDEEPSLEEP* 99)
(intern "*SBS_DEEPSLEEP*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SBS_DEEPSLEEP* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SBS_DEEPSLEEP* 100)

(defun mir_msgs::BMSData-to-symbol (const)
  (cond
        ((= const 1) 'mir_msgs::BMSData::*DISCHARGING*)
        ((= const 2) 'mir_msgs::BMSData::*CHARGING*)
        ((= const 4) 'mir_msgs::BMSData::*OV*)
        ((= const 8) 'mir_msgs::BMSData::*UV*)
        ((= const 16) 'mir_msgs::BMSData::*COC*)
        ((= const 32) 'mir_msgs::BMSData::*DOC*)
        ((= const 64) 'mir_msgs::BMSData::*DOT*)
        ((= const 128) 'mir_msgs::BMSData::*DUT*)
        ((= const 512) 'mir_msgs::BMSData::*SC*)
        ((= const 1024) 'mir_msgs::BMSData::*COT*)
        ((= const 2048) 'mir_msgs::BMSData::*CUT*)
        ((= const 2031616) 'mir_msgs::BMSData::*FW_STATUS_MSK*)
        ((= const 16) 'mir_msgs::BMSData::*FW_STATUS_SHIFT*)
        ((= const 0) 'mir_msgs::BMSData::*FW_UPD_OK*)
        ((= const 1) 'mir_msgs::BMSData::*FW_UPD_RUNNING*)
        ((= const 2) 'mir_msgs::BMSData::*FW_UPD_FAILED_BOOT*)
        ((= const 3) 'mir_msgs::BMSData::*FW_UPD_FAILED_APP*)
        ((= const 4) 'mir_msgs::BMSData::*FW_UPD_FAILED_PARAM*)
        ((= const 5) 'mir_msgs::BMSData::*FW_STATUS_LOW_BATT*)
        ((= const 6) 'mir_msgs::BMSData::*FW_STATUS_FILE_CORRUPTED*)
        ((= const 7) 'mir_msgs::BMSData::*FW_STATUS_CURRENT_TO_HIGH*)
        ((= const 8) 'mir_msgs::BMSData::*FW_STATUS_NO_CAN*)
        ((= const 9) 'mir_msgs::BMSData::*FW_BATTERY_IMBALANCE_HIGH*)
        ((= const 0) 'mir_msgs::BMSData::*BATT_TYPE_UNKNOWN*)
        ((= const 1) 'mir_msgs::BMSData::*BATT_TYPE_BMZ*)
        ((= const 2) 'mir_msgs::BMSData::*BATT_TYPE_WST*)
        ((= const 3) 'mir_msgs::BMSData::*BATT_TYPE_SBS*)
        ((= const 4) 'mir_msgs::BMSData::*BATT_TYPE_SBS_SLIDE*)
        ((= const 255) 'mir_msgs::BMSData::*BATT_TYPE_NO_BMS*)
        ((= const 1) 'mir_msgs::BMSData::*SBS_InitState1*)
        ((= const 2) 'mir_msgs::BMSData::*SBS_InitState2*)
        ((= const 3) 'mir_msgs::BMSData::*SBS_InitState3*)
        ((= const 4) 'mir_msgs::BMSData::*SBS_InitState4*)
        ((= const 5) 'mir_msgs::BMSData::*SBS_Idle*)
        ((= const 6) 'mir_msgs::BMSData::*SBS_Discharge*)
        ((= const 7) 'mir_msgs::BMSData::*SBS_Charge*)
        ((= const 10) 'mir_msgs::BMSData::*SBS_Fault*)
        ((= const 11) 'mir_msgs::BMSData::*SBS_CriticalError*)
        ((= const 99) 'mir_msgs::BMSData::*SBS_PrepareDeepsleep*)
        ((= const 100) 'mir_msgs::BMSData::*SBS_Deepsleep*)
        (t nil)))

(defclass mir_msgs::BMSData
  :super ros::object
  :slots (_pack_voltage _charge_current _discharge_current _state_of_charge _remaining_time_to_full_charge _remaining_capacity _state_of_health _status_flags _temperature _cell_voltage _cell_voltage_diff _WST_serial _bmz_flag _battery_type _full_voltage _full_capacity _temperature2 _temperature_pcb _cycle_count _dsg_overcurrent_counter _chg_overcurrent_counter _hw_major _hw_minor _fw_major _fw_minor _fw_patch _fw_parameters_ok _rec_fw_major _rec_fw_minor _rec_fw_patch _bl_major _bl_minor _status_enabled _status_current_limitation _status_switch_off_warn1 _status_switch_off_warn2 _status_fully_discharged _status_nearly_discharged _status_chargefet_on _status_dischargefet_on _status_discharging _status_fully_charged _status_charging _status_temp_charging_err _status_cell_over_voltage _status_cell_under_voltage _status_charge_over_current _status_shortcircuit _status_discharge_over_current _status_chargefet_voltage _status_dischargefet_voltage _status_temp_discharging_err _status_charger_detected _mnfct_bms_revision _mnfct_asn_revision _mnfct_year _mnfct_week _mnfct_model _mnfct_serial _afe_i2c_error_count _app_error_count _fet_disable_state _last_battery_msg_time _SBS_battery_status _SBS_battery_status_raw _SBS_serial_1 _SBS_serial_2 _SBS_arti_nr_1 _SBS_arti_nr_2 _SBS_arti_nr_3 _SBS_curr_flow_passive_state _CHG_OC1_Count _CHG_OC2_Count _DSG_OC1_Count _DSG_OC2_Count _DSG_OC3_Count _AFE_OC1_Count _AFE_OC2_Count _CHG_LatchClear_Count _DSG_LatchClear_Count _chg_oc_warning _dsg_oc_warning ))

(defmethod mir_msgs::BMSData
  (:init
   (&key
    ((:pack_voltage __pack_voltage) 0.0)
    ((:charge_current __charge_current) 0.0)
    ((:discharge_current __discharge_current) 0.0)
    ((:state_of_charge __state_of_charge) 0.0)
    ((:remaining_time_to_full_charge __remaining_time_to_full_charge) 0.0)
    ((:remaining_capacity __remaining_capacity) 0)
    ((:state_of_health __state_of_health) 0)
    ((:status_flags __status_flags) 0)
    ((:temperature __temperature) 0)
    ((:cell_voltage __cell_voltage) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cell_voltage_diff __cell_voltage_diff) 0)
    ((:WST_serial __WST_serial) "")
    ((:bmz_flag __bmz_flag) 0)
    ((:battery_type __battery_type) 0)
    ((:full_voltage __full_voltage) 0.0)
    ((:full_capacity __full_capacity) 0)
    ((:temperature2 __temperature2) 0)
    ((:temperature_pcb __temperature_pcb) 0)
    ((:cycle_count __cycle_count) 0)
    ((:dsg_overcurrent_counter __dsg_overcurrent_counter) 0)
    ((:chg_overcurrent_counter __chg_overcurrent_counter) 0)
    ((:hw_major __hw_major) 0)
    ((:hw_minor __hw_minor) 0)
    ((:fw_major __fw_major) 0)
    ((:fw_minor __fw_minor) 0)
    ((:fw_patch __fw_patch) 0)
    ((:fw_parameters_ok __fw_parameters_ok) 0)
    ((:rec_fw_major __rec_fw_major) 0)
    ((:rec_fw_minor __rec_fw_minor) 0)
    ((:rec_fw_patch __rec_fw_patch) 0)
    ((:bl_major __bl_major) 0)
    ((:bl_minor __bl_minor) 0)
    ((:status_enabled __status_enabled) 0)
    ((:status_current_limitation __status_current_limitation) 0)
    ((:status_switch_off_warn1 __status_switch_off_warn1) 0)
    ((:status_switch_off_warn2 __status_switch_off_warn2) 0)
    ((:status_fully_discharged __status_fully_discharged) 0)
    ((:status_nearly_discharged __status_nearly_discharged) 0)
    ((:status_chargefet_on __status_chargefet_on) 0)
    ((:status_dischargefet_on __status_dischargefet_on) 0)
    ((:status_discharging __status_discharging) 0)
    ((:status_fully_charged __status_fully_charged) 0)
    ((:status_charging __status_charging) 0)
    ((:status_temp_charging_err __status_temp_charging_err) 0)
    ((:status_cell_over_voltage __status_cell_over_voltage) 0)
    ((:status_cell_under_voltage __status_cell_under_voltage) 0)
    ((:status_charge_over_current __status_charge_over_current) 0)
    ((:status_shortcircuit __status_shortcircuit) 0)
    ((:status_discharge_over_current __status_discharge_over_current) 0)
    ((:status_chargefet_voltage __status_chargefet_voltage) 0.0)
    ((:status_dischargefet_voltage __status_dischargefet_voltage) 0.0)
    ((:status_temp_discharging_err __status_temp_discharging_err) 0)
    ((:status_charger_detected __status_charger_detected) 0)
    ((:mnfct_bms_revision __mnfct_bms_revision) 0)
    ((:mnfct_asn_revision __mnfct_asn_revision) 0)
    ((:mnfct_year __mnfct_year) 0)
    ((:mnfct_week __mnfct_week) 0)
    ((:mnfct_model __mnfct_model) 0)
    ((:mnfct_serial __mnfct_serial) 0)
    ((:afe_i2c_error_count __afe_i2c_error_count) 0)
    ((:app_error_count __app_error_count) 0)
    ((:fet_disable_state __fet_disable_state) 0)
    ((:last_battery_msg_time __last_battery_msg_time) 0.0)
    ((:SBS_battery_status __SBS_battery_status) 0)
    ((:SBS_battery_status_raw __SBS_battery_status_raw) 0)
    ((:SBS_serial_1 __SBS_serial_1) "")
    ((:SBS_serial_2 __SBS_serial_2) "")
    ((:SBS_arti_nr_1 __SBS_arti_nr_1) 0)
    ((:SBS_arti_nr_2 __SBS_arti_nr_2) 0)
    ((:SBS_arti_nr_3 __SBS_arti_nr_3) 0)
    ((:SBS_curr_flow_passive_state __SBS_curr_flow_passive_state) 0)
    ((:CHG_OC1_Count __CHG_OC1_Count) 0)
    ((:CHG_OC2_Count __CHG_OC2_Count) 0)
    ((:DSG_OC1_Count __DSG_OC1_Count) 0)
    ((:DSG_OC2_Count __DSG_OC2_Count) 0)
    ((:DSG_OC3_Count __DSG_OC3_Count) 0)
    ((:AFE_OC1_Count __AFE_OC1_Count) 0)
    ((:AFE_OC2_Count __AFE_OC2_Count) 0)
    ((:CHG_LatchClear_Count __CHG_LatchClear_Count) 0)
    ((:DSG_LatchClear_Count __DSG_LatchClear_Count) 0)
    ((:chg_oc_warning __chg_oc_warning) 0)
    ((:dsg_oc_warning __dsg_oc_warning) 0)
    )
   (send-super :init)
   (setq _pack_voltage (float __pack_voltage))
   (setq _charge_current (float __charge_current))
   (setq _discharge_current (float __discharge_current))
   (setq _state_of_charge (float __state_of_charge))
   (setq _remaining_time_to_full_charge (float __remaining_time_to_full_charge))
   (setq _remaining_capacity (round __remaining_capacity))
   (setq _state_of_health (round __state_of_health))
   (setq _status_flags (round __status_flags))
   (setq _temperature (round __temperature))
   (setq _cell_voltage __cell_voltage)
   (setq _cell_voltage_diff (round __cell_voltage_diff))
   (setq _WST_serial (string __WST_serial))
   (setq _bmz_flag (round __bmz_flag))
   (setq _battery_type (round __battery_type))
   (setq _full_voltage (float __full_voltage))
   (setq _full_capacity (round __full_capacity))
   (setq _temperature2 (round __temperature2))
   (setq _temperature_pcb (round __temperature_pcb))
   (setq _cycle_count (round __cycle_count))
   (setq _dsg_overcurrent_counter (round __dsg_overcurrent_counter))
   (setq _chg_overcurrent_counter (round __chg_overcurrent_counter))
   (setq _hw_major (round __hw_major))
   (setq _hw_minor (round __hw_minor))
   (setq _fw_major (round __fw_major))
   (setq _fw_minor (round __fw_minor))
   (setq _fw_patch (round __fw_patch))
   (setq _fw_parameters_ok (round __fw_parameters_ok))
   (setq _rec_fw_major (round __rec_fw_major))
   (setq _rec_fw_minor (round __rec_fw_minor))
   (setq _rec_fw_patch (round __rec_fw_patch))
   (setq _bl_major (round __bl_major))
   (setq _bl_minor (round __bl_minor))
   (setq _status_enabled (round __status_enabled))
   (setq _status_current_limitation (round __status_current_limitation))
   (setq _status_switch_off_warn1 (round __status_switch_off_warn1))
   (setq _status_switch_off_warn2 (round __status_switch_off_warn2))
   (setq _status_fully_discharged (round __status_fully_discharged))
   (setq _status_nearly_discharged (round __status_nearly_discharged))
   (setq _status_chargefet_on (round __status_chargefet_on))
   (setq _status_dischargefet_on (round __status_dischargefet_on))
   (setq _status_discharging (round __status_discharging))
   (setq _status_fully_charged (round __status_fully_charged))
   (setq _status_charging (round __status_charging))
   (setq _status_temp_charging_err (round __status_temp_charging_err))
   (setq _status_cell_over_voltage (round __status_cell_over_voltage))
   (setq _status_cell_under_voltage (round __status_cell_under_voltage))
   (setq _status_charge_over_current (round __status_charge_over_current))
   (setq _status_shortcircuit (round __status_shortcircuit))
   (setq _status_discharge_over_current (round __status_discharge_over_current))
   (setq _status_chargefet_voltage (float __status_chargefet_voltage))
   (setq _status_dischargefet_voltage (float __status_dischargefet_voltage))
   (setq _status_temp_discharging_err (round __status_temp_discharging_err))
   (setq _status_charger_detected (round __status_charger_detected))
   (setq _mnfct_bms_revision (round __mnfct_bms_revision))
   (setq _mnfct_asn_revision (round __mnfct_asn_revision))
   (setq _mnfct_year (round __mnfct_year))
   (setq _mnfct_week (round __mnfct_week))
   (setq _mnfct_model (round __mnfct_model))
   (setq _mnfct_serial (round __mnfct_serial))
   (setq _afe_i2c_error_count (round __afe_i2c_error_count))
   (setq _app_error_count (round __app_error_count))
   (setq _fet_disable_state (round __fet_disable_state))
   (setq _last_battery_msg_time (float __last_battery_msg_time))
   (setq _SBS_battery_status (round __SBS_battery_status))
   (setq _SBS_battery_status_raw (round __SBS_battery_status_raw))
   (setq _SBS_serial_1 (string __SBS_serial_1))
   (setq _SBS_serial_2 (string __SBS_serial_2))
   (setq _SBS_arti_nr_1 (round __SBS_arti_nr_1))
   (setq _SBS_arti_nr_2 (round __SBS_arti_nr_2))
   (setq _SBS_arti_nr_3 (round __SBS_arti_nr_3))
   (setq _SBS_curr_flow_passive_state (round __SBS_curr_flow_passive_state))
   (setq _CHG_OC1_Count (round __CHG_OC1_Count))
   (setq _CHG_OC2_Count (round __CHG_OC2_Count))
   (setq _DSG_OC1_Count (round __DSG_OC1_Count))
   (setq _DSG_OC2_Count (round __DSG_OC2_Count))
   (setq _DSG_OC3_Count (round __DSG_OC3_Count))
   (setq _AFE_OC1_Count (round __AFE_OC1_Count))
   (setq _AFE_OC2_Count (round __AFE_OC2_Count))
   (setq _CHG_LatchClear_Count (round __CHG_LatchClear_Count))
   (setq _DSG_LatchClear_Count (round __DSG_LatchClear_Count))
   (setq _chg_oc_warning (round __chg_oc_warning))
   (setq _dsg_oc_warning (round __dsg_oc_warning))
   self)
  (:pack_voltage
   (&optional __pack_voltage)
   (if __pack_voltage (setq _pack_voltage __pack_voltage)) _pack_voltage)
  (:charge_current
   (&optional __charge_current)
   (if __charge_current (setq _charge_current __charge_current)) _charge_current)
  (:discharge_current
   (&optional __discharge_current)
   (if __discharge_current (setq _discharge_current __discharge_current)) _discharge_current)
  (:state_of_charge
   (&optional __state_of_charge)
   (if __state_of_charge (setq _state_of_charge __state_of_charge)) _state_of_charge)
  (:remaining_time_to_full_charge
   (&optional __remaining_time_to_full_charge)
   (if __remaining_time_to_full_charge (setq _remaining_time_to_full_charge __remaining_time_to_full_charge)) _remaining_time_to_full_charge)
  (:remaining_capacity
   (&optional __remaining_capacity)
   (if __remaining_capacity (setq _remaining_capacity __remaining_capacity)) _remaining_capacity)
  (:state_of_health
   (&optional __state_of_health)
   (if __state_of_health (setq _state_of_health __state_of_health)) _state_of_health)
  (:status_flags
   (&optional __status_flags)
   (if __status_flags (setq _status_flags __status_flags)) _status_flags)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:cell_voltage
   (&optional __cell_voltage)
   (if __cell_voltage (setq _cell_voltage __cell_voltage)) _cell_voltage)
  (:cell_voltage_diff
   (&optional __cell_voltage_diff)
   (if __cell_voltage_diff (setq _cell_voltage_diff __cell_voltage_diff)) _cell_voltage_diff)
  (:WST_serial
   (&optional __WST_serial)
   (if __WST_serial (setq _WST_serial __WST_serial)) _WST_serial)
  (:bmz_flag
   (&optional __bmz_flag)
   (if __bmz_flag (setq _bmz_flag __bmz_flag)) _bmz_flag)
  (:battery_type
   (&optional __battery_type)
   (if __battery_type (setq _battery_type __battery_type)) _battery_type)
  (:full_voltage
   (&optional __full_voltage)
   (if __full_voltage (setq _full_voltage __full_voltage)) _full_voltage)
  (:full_capacity
   (&optional __full_capacity)
   (if __full_capacity (setq _full_capacity __full_capacity)) _full_capacity)
  (:temperature2
   (&optional __temperature2)
   (if __temperature2 (setq _temperature2 __temperature2)) _temperature2)
  (:temperature_pcb
   (&optional __temperature_pcb)
   (if __temperature_pcb (setq _temperature_pcb __temperature_pcb)) _temperature_pcb)
  (:cycle_count
   (&optional __cycle_count)
   (if __cycle_count (setq _cycle_count __cycle_count)) _cycle_count)
  (:dsg_overcurrent_counter
   (&optional __dsg_overcurrent_counter)
   (if __dsg_overcurrent_counter (setq _dsg_overcurrent_counter __dsg_overcurrent_counter)) _dsg_overcurrent_counter)
  (:chg_overcurrent_counter
   (&optional __chg_overcurrent_counter)
   (if __chg_overcurrent_counter (setq _chg_overcurrent_counter __chg_overcurrent_counter)) _chg_overcurrent_counter)
  (:hw_major
   (&optional __hw_major)
   (if __hw_major (setq _hw_major __hw_major)) _hw_major)
  (:hw_minor
   (&optional __hw_minor)
   (if __hw_minor (setq _hw_minor __hw_minor)) _hw_minor)
  (:fw_major
   (&optional __fw_major)
   (if __fw_major (setq _fw_major __fw_major)) _fw_major)
  (:fw_minor
   (&optional __fw_minor)
   (if __fw_minor (setq _fw_minor __fw_minor)) _fw_minor)
  (:fw_patch
   (&optional __fw_patch)
   (if __fw_patch (setq _fw_patch __fw_patch)) _fw_patch)
  (:fw_parameters_ok
   (&optional __fw_parameters_ok)
   (if __fw_parameters_ok (setq _fw_parameters_ok __fw_parameters_ok)) _fw_parameters_ok)
  (:rec_fw_major
   (&optional __rec_fw_major)
   (if __rec_fw_major (setq _rec_fw_major __rec_fw_major)) _rec_fw_major)
  (:rec_fw_minor
   (&optional __rec_fw_minor)
   (if __rec_fw_minor (setq _rec_fw_minor __rec_fw_minor)) _rec_fw_minor)
  (:rec_fw_patch
   (&optional __rec_fw_patch)
   (if __rec_fw_patch (setq _rec_fw_patch __rec_fw_patch)) _rec_fw_patch)
  (:bl_major
   (&optional __bl_major)
   (if __bl_major (setq _bl_major __bl_major)) _bl_major)
  (:bl_minor
   (&optional __bl_minor)
   (if __bl_minor (setq _bl_minor __bl_minor)) _bl_minor)
  (:status_enabled
   (&optional __status_enabled)
   (if __status_enabled (setq _status_enabled __status_enabled)) _status_enabled)
  (:status_current_limitation
   (&optional __status_current_limitation)
   (if __status_current_limitation (setq _status_current_limitation __status_current_limitation)) _status_current_limitation)
  (:status_switch_off_warn1
   (&optional __status_switch_off_warn1)
   (if __status_switch_off_warn1 (setq _status_switch_off_warn1 __status_switch_off_warn1)) _status_switch_off_warn1)
  (:status_switch_off_warn2
   (&optional __status_switch_off_warn2)
   (if __status_switch_off_warn2 (setq _status_switch_off_warn2 __status_switch_off_warn2)) _status_switch_off_warn2)
  (:status_fully_discharged
   (&optional __status_fully_discharged)
   (if __status_fully_discharged (setq _status_fully_discharged __status_fully_discharged)) _status_fully_discharged)
  (:status_nearly_discharged
   (&optional __status_nearly_discharged)
   (if __status_nearly_discharged (setq _status_nearly_discharged __status_nearly_discharged)) _status_nearly_discharged)
  (:status_chargefet_on
   (&optional __status_chargefet_on)
   (if __status_chargefet_on (setq _status_chargefet_on __status_chargefet_on)) _status_chargefet_on)
  (:status_dischargefet_on
   (&optional __status_dischargefet_on)
   (if __status_dischargefet_on (setq _status_dischargefet_on __status_dischargefet_on)) _status_dischargefet_on)
  (:status_discharging
   (&optional __status_discharging)
   (if __status_discharging (setq _status_discharging __status_discharging)) _status_discharging)
  (:status_fully_charged
   (&optional __status_fully_charged)
   (if __status_fully_charged (setq _status_fully_charged __status_fully_charged)) _status_fully_charged)
  (:status_charging
   (&optional __status_charging)
   (if __status_charging (setq _status_charging __status_charging)) _status_charging)
  (:status_temp_charging_err
   (&optional __status_temp_charging_err)
   (if __status_temp_charging_err (setq _status_temp_charging_err __status_temp_charging_err)) _status_temp_charging_err)
  (:status_cell_over_voltage
   (&optional __status_cell_over_voltage)
   (if __status_cell_over_voltage (setq _status_cell_over_voltage __status_cell_over_voltage)) _status_cell_over_voltage)
  (:status_cell_under_voltage
   (&optional __status_cell_under_voltage)
   (if __status_cell_under_voltage (setq _status_cell_under_voltage __status_cell_under_voltage)) _status_cell_under_voltage)
  (:status_charge_over_current
   (&optional __status_charge_over_current)
   (if __status_charge_over_current (setq _status_charge_over_current __status_charge_over_current)) _status_charge_over_current)
  (:status_shortcircuit
   (&optional __status_shortcircuit)
   (if __status_shortcircuit (setq _status_shortcircuit __status_shortcircuit)) _status_shortcircuit)
  (:status_discharge_over_current
   (&optional __status_discharge_over_current)
   (if __status_discharge_over_current (setq _status_discharge_over_current __status_discharge_over_current)) _status_discharge_over_current)
  (:status_chargefet_voltage
   (&optional __status_chargefet_voltage)
   (if __status_chargefet_voltage (setq _status_chargefet_voltage __status_chargefet_voltage)) _status_chargefet_voltage)
  (:status_dischargefet_voltage
   (&optional __status_dischargefet_voltage)
   (if __status_dischargefet_voltage (setq _status_dischargefet_voltage __status_dischargefet_voltage)) _status_dischargefet_voltage)
  (:status_temp_discharging_err
   (&optional __status_temp_discharging_err)
   (if __status_temp_discharging_err (setq _status_temp_discharging_err __status_temp_discharging_err)) _status_temp_discharging_err)
  (:status_charger_detected
   (&optional __status_charger_detected)
   (if __status_charger_detected (setq _status_charger_detected __status_charger_detected)) _status_charger_detected)
  (:mnfct_bms_revision
   (&optional __mnfct_bms_revision)
   (if __mnfct_bms_revision (setq _mnfct_bms_revision __mnfct_bms_revision)) _mnfct_bms_revision)
  (:mnfct_asn_revision
   (&optional __mnfct_asn_revision)
   (if __mnfct_asn_revision (setq _mnfct_asn_revision __mnfct_asn_revision)) _mnfct_asn_revision)
  (:mnfct_year
   (&optional __mnfct_year)
   (if __mnfct_year (setq _mnfct_year __mnfct_year)) _mnfct_year)
  (:mnfct_week
   (&optional __mnfct_week)
   (if __mnfct_week (setq _mnfct_week __mnfct_week)) _mnfct_week)
  (:mnfct_model
   (&optional __mnfct_model)
   (if __mnfct_model (setq _mnfct_model __mnfct_model)) _mnfct_model)
  (:mnfct_serial
   (&optional __mnfct_serial)
   (if __mnfct_serial (setq _mnfct_serial __mnfct_serial)) _mnfct_serial)
  (:afe_i2c_error_count
   (&optional __afe_i2c_error_count)
   (if __afe_i2c_error_count (setq _afe_i2c_error_count __afe_i2c_error_count)) _afe_i2c_error_count)
  (:app_error_count
   (&optional __app_error_count)
   (if __app_error_count (setq _app_error_count __app_error_count)) _app_error_count)
  (:fet_disable_state
   (&optional __fet_disable_state)
   (if __fet_disable_state (setq _fet_disable_state __fet_disable_state)) _fet_disable_state)
  (:last_battery_msg_time
   (&optional __last_battery_msg_time)
   (if __last_battery_msg_time (setq _last_battery_msg_time __last_battery_msg_time)) _last_battery_msg_time)
  (:SBS_battery_status
   (&optional __SBS_battery_status)
   (if __SBS_battery_status (setq _SBS_battery_status __SBS_battery_status)) _SBS_battery_status)
  (:SBS_battery_status_raw
   (&optional __SBS_battery_status_raw)
   (if __SBS_battery_status_raw (setq _SBS_battery_status_raw __SBS_battery_status_raw)) _SBS_battery_status_raw)
  (:SBS_serial_1
   (&optional __SBS_serial_1)
   (if __SBS_serial_1 (setq _SBS_serial_1 __SBS_serial_1)) _SBS_serial_1)
  (:SBS_serial_2
   (&optional __SBS_serial_2)
   (if __SBS_serial_2 (setq _SBS_serial_2 __SBS_serial_2)) _SBS_serial_2)
  (:SBS_arti_nr_1
   (&optional __SBS_arti_nr_1)
   (if __SBS_arti_nr_1 (setq _SBS_arti_nr_1 __SBS_arti_nr_1)) _SBS_arti_nr_1)
  (:SBS_arti_nr_2
   (&optional __SBS_arti_nr_2)
   (if __SBS_arti_nr_2 (setq _SBS_arti_nr_2 __SBS_arti_nr_2)) _SBS_arti_nr_2)
  (:SBS_arti_nr_3
   (&optional __SBS_arti_nr_3)
   (if __SBS_arti_nr_3 (setq _SBS_arti_nr_3 __SBS_arti_nr_3)) _SBS_arti_nr_3)
  (:SBS_curr_flow_passive_state
   (&optional __SBS_curr_flow_passive_state)
   (if __SBS_curr_flow_passive_state (setq _SBS_curr_flow_passive_state __SBS_curr_flow_passive_state)) _SBS_curr_flow_passive_state)
  (:CHG_OC1_Count
   (&optional __CHG_OC1_Count)
   (if __CHG_OC1_Count (setq _CHG_OC1_Count __CHG_OC1_Count)) _CHG_OC1_Count)
  (:CHG_OC2_Count
   (&optional __CHG_OC2_Count)
   (if __CHG_OC2_Count (setq _CHG_OC2_Count __CHG_OC2_Count)) _CHG_OC2_Count)
  (:DSG_OC1_Count
   (&optional __DSG_OC1_Count)
   (if __DSG_OC1_Count (setq _DSG_OC1_Count __DSG_OC1_Count)) _DSG_OC1_Count)
  (:DSG_OC2_Count
   (&optional __DSG_OC2_Count)
   (if __DSG_OC2_Count (setq _DSG_OC2_Count __DSG_OC2_Count)) _DSG_OC2_Count)
  (:DSG_OC3_Count
   (&optional __DSG_OC3_Count)
   (if __DSG_OC3_Count (setq _DSG_OC3_Count __DSG_OC3_Count)) _DSG_OC3_Count)
  (:AFE_OC1_Count
   (&optional __AFE_OC1_Count)
   (if __AFE_OC1_Count (setq _AFE_OC1_Count __AFE_OC1_Count)) _AFE_OC1_Count)
  (:AFE_OC2_Count
   (&optional __AFE_OC2_Count)
   (if __AFE_OC2_Count (setq _AFE_OC2_Count __AFE_OC2_Count)) _AFE_OC2_Count)
  (:CHG_LatchClear_Count
   (&optional __CHG_LatchClear_Count)
   (if __CHG_LatchClear_Count (setq _CHG_LatchClear_Count __CHG_LatchClear_Count)) _CHG_LatchClear_Count)
  (:DSG_LatchClear_Count
   (&optional __DSG_LatchClear_Count)
   (if __DSG_LatchClear_Count (setq _DSG_LatchClear_Count __DSG_LatchClear_Count)) _DSG_LatchClear_Count)
  (:chg_oc_warning
   (&optional __chg_oc_warning)
   (if __chg_oc_warning (setq _chg_oc_warning __chg_oc_warning)) _chg_oc_warning)
  (:dsg_oc_warning
   (&optional __dsg_oc_warning)
   (if __dsg_oc_warning (setq _dsg_oc_warning __dsg_oc_warning)) _dsg_oc_warning)
  (:serialization-length
   ()
   (+
    ;; float64 _pack_voltage
    8
    ;; float64 _charge_current
    8
    ;; float64 _discharge_current
    8
    ;; float64 _state_of_charge
    8
    ;; float64 _remaining_time_to_full_charge
    8
    ;; int32 _remaining_capacity
    4
    ;; int32 _state_of_health
    4
    ;; int32 _status_flags
    4
    ;; int32 _temperature
    4
    ;; uint32[] _cell_voltage
    (* 4    (length _cell_voltage)) 4
    ;; uint32 _cell_voltage_diff
    4
    ;; string _WST_serial
    4 (length _WST_serial)
    ;; uint32 _bmz_flag
    4
    ;; uint32 _battery_type
    4
    ;; float64 _full_voltage
    8
    ;; int32 _full_capacity
    4
    ;; int32 _temperature2
    4
    ;; int32 _temperature_pcb
    4
    ;; int32 _cycle_count
    4
    ;; int32 _dsg_overcurrent_counter
    4
    ;; int32 _chg_overcurrent_counter
    4
    ;; int32 _hw_major
    4
    ;; int32 _hw_minor
    4
    ;; int32 _fw_major
    4
    ;; int32 _fw_minor
    4
    ;; int32 _fw_patch
    4
    ;; int32 _fw_parameters_ok
    4
    ;; int32 _rec_fw_major
    4
    ;; int32 _rec_fw_minor
    4
    ;; int32 _rec_fw_patch
    4
    ;; int32 _bl_major
    4
    ;; int32 _bl_minor
    4
    ;; uint32 _status_enabled
    4
    ;; uint32 _status_current_limitation
    4
    ;; uint32 _status_switch_off_warn1
    4
    ;; uint32 _status_switch_off_warn2
    4
    ;; uint32 _status_fully_discharged
    4
    ;; uint32 _status_nearly_discharged
    4
    ;; uint32 _status_chargefet_on
    4
    ;; uint32 _status_dischargefet_on
    4
    ;; uint32 _status_discharging
    4
    ;; uint32 _status_fully_charged
    4
    ;; uint32 _status_charging
    4
    ;; uint32 _status_temp_charging_err
    4
    ;; uint32 _status_cell_over_voltage
    4
    ;; uint32 _status_cell_under_voltage
    4
    ;; uint32 _status_charge_over_current
    4
    ;; uint32 _status_shortcircuit
    4
    ;; uint32 _status_discharge_over_current
    4
    ;; float64 _status_chargefet_voltage
    8
    ;; float64 _status_dischargefet_voltage
    8
    ;; uint32 _status_temp_discharging_err
    4
    ;; uint32 _status_charger_detected
    4
    ;; uint32 _mnfct_bms_revision
    4
    ;; uint32 _mnfct_asn_revision
    4
    ;; uint32 _mnfct_year
    4
    ;; uint32 _mnfct_week
    4
    ;; uint32 _mnfct_model
    4
    ;; uint32 _mnfct_serial
    4
    ;; uint32 _afe_i2c_error_count
    4
    ;; uint32 _app_error_count
    4
    ;; uint32 _fet_disable_state
    4
    ;; float64 _last_battery_msg_time
    8
    ;; uint32 _SBS_battery_status
    4
    ;; uint32 _SBS_battery_status_raw
    4
    ;; string _SBS_serial_1
    4 (length _SBS_serial_1)
    ;; string _SBS_serial_2
    4 (length _SBS_serial_2)
    ;; uint32 _SBS_arti_nr_1
    4
    ;; uint32 _SBS_arti_nr_2
    4
    ;; uint32 _SBS_arti_nr_3
    4
    ;; uint32 _SBS_curr_flow_passive_state
    4
    ;; uint8 _CHG_OC1_Count
    1
    ;; uint8 _CHG_OC2_Count
    1
    ;; uint8 _DSG_OC1_Count
    1
    ;; uint8 _DSG_OC2_Count
    1
    ;; uint8 _DSG_OC3_Count
    1
    ;; uint8 _AFE_OC1_Count
    1
    ;; uint8 _AFE_OC2_Count
    1
    ;; uint8 _CHG_LatchClear_Count
    1
    ;; uint8 _DSG_LatchClear_Count
    1
    ;; uint8 _chg_oc_warning
    1
    ;; uint8 _dsg_oc_warning
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pack_voltage
       (sys::poke _pack_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _charge_current
       (sys::poke _charge_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _discharge_current
       (sys::poke _discharge_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _state_of_charge
       (sys::poke _state_of_charge (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _remaining_time_to_full_charge
       (sys::poke _remaining_time_to_full_charge (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _remaining_capacity
       (write-long _remaining_capacity s)
     ;; int32 _state_of_health
       (write-long _state_of_health s)
     ;; int32 _status_flags
       (write-long _status_flags s)
     ;; int32 _temperature
       (write-long _temperature s)
     ;; uint32[] _cell_voltage
     (write-long (length _cell_voltage) s)
     (dotimes (i (length _cell_voltage))
       (write-long (elt _cell_voltage i) s)
       )
     ;; uint32 _cell_voltage_diff
       (write-long _cell_voltage_diff s)
     ;; string _WST_serial
       (write-long (length _WST_serial) s) (princ _WST_serial s)
     ;; uint32 _bmz_flag
       (write-long _bmz_flag s)
     ;; uint32 _battery_type
       (write-long _battery_type s)
     ;; float64 _full_voltage
       (sys::poke _full_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _full_capacity
       (write-long _full_capacity s)
     ;; int32 _temperature2
       (write-long _temperature2 s)
     ;; int32 _temperature_pcb
       (write-long _temperature_pcb s)
     ;; int32 _cycle_count
       (write-long _cycle_count s)
     ;; int32 _dsg_overcurrent_counter
       (write-long _dsg_overcurrent_counter s)
     ;; int32 _chg_overcurrent_counter
       (write-long _chg_overcurrent_counter s)
     ;; int32 _hw_major
       (write-long _hw_major s)
     ;; int32 _hw_minor
       (write-long _hw_minor s)
     ;; int32 _fw_major
       (write-long _fw_major s)
     ;; int32 _fw_minor
       (write-long _fw_minor s)
     ;; int32 _fw_patch
       (write-long _fw_patch s)
     ;; int32 _fw_parameters_ok
       (write-long _fw_parameters_ok s)
     ;; int32 _rec_fw_major
       (write-long _rec_fw_major s)
     ;; int32 _rec_fw_minor
       (write-long _rec_fw_minor s)
     ;; int32 _rec_fw_patch
       (write-long _rec_fw_patch s)
     ;; int32 _bl_major
       (write-long _bl_major s)
     ;; int32 _bl_minor
       (write-long _bl_minor s)
     ;; uint32 _status_enabled
       (write-long _status_enabled s)
     ;; uint32 _status_current_limitation
       (write-long _status_current_limitation s)
     ;; uint32 _status_switch_off_warn1
       (write-long _status_switch_off_warn1 s)
     ;; uint32 _status_switch_off_warn2
       (write-long _status_switch_off_warn2 s)
     ;; uint32 _status_fully_discharged
       (write-long _status_fully_discharged s)
     ;; uint32 _status_nearly_discharged
       (write-long _status_nearly_discharged s)
     ;; uint32 _status_chargefet_on
       (write-long _status_chargefet_on s)
     ;; uint32 _status_dischargefet_on
       (write-long _status_dischargefet_on s)
     ;; uint32 _status_discharging
       (write-long _status_discharging s)
     ;; uint32 _status_fully_charged
       (write-long _status_fully_charged s)
     ;; uint32 _status_charging
       (write-long _status_charging s)
     ;; uint32 _status_temp_charging_err
       (write-long _status_temp_charging_err s)
     ;; uint32 _status_cell_over_voltage
       (write-long _status_cell_over_voltage s)
     ;; uint32 _status_cell_under_voltage
       (write-long _status_cell_under_voltage s)
     ;; uint32 _status_charge_over_current
       (write-long _status_charge_over_current s)
     ;; uint32 _status_shortcircuit
       (write-long _status_shortcircuit s)
     ;; uint32 _status_discharge_over_current
       (write-long _status_discharge_over_current s)
     ;; float64 _status_chargefet_voltage
       (sys::poke _status_chargefet_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _status_dischargefet_voltage
       (sys::poke _status_dischargefet_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _status_temp_discharging_err
       (write-long _status_temp_discharging_err s)
     ;; uint32 _status_charger_detected
       (write-long _status_charger_detected s)
     ;; uint32 _mnfct_bms_revision
       (write-long _mnfct_bms_revision s)
     ;; uint32 _mnfct_asn_revision
       (write-long _mnfct_asn_revision s)
     ;; uint32 _mnfct_year
       (write-long _mnfct_year s)
     ;; uint32 _mnfct_week
       (write-long _mnfct_week s)
     ;; uint32 _mnfct_model
       (write-long _mnfct_model s)
     ;; uint32 _mnfct_serial
       (write-long _mnfct_serial s)
     ;; uint32 _afe_i2c_error_count
       (write-long _afe_i2c_error_count s)
     ;; uint32 _app_error_count
       (write-long _app_error_count s)
     ;; uint32 _fet_disable_state
       (write-long _fet_disable_state s)
     ;; float64 _last_battery_msg_time
       (sys::poke _last_battery_msg_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _SBS_battery_status
       (write-long _SBS_battery_status s)
     ;; uint32 _SBS_battery_status_raw
       (write-long _SBS_battery_status_raw s)
     ;; string _SBS_serial_1
       (write-long (length _SBS_serial_1) s) (princ _SBS_serial_1 s)
     ;; string _SBS_serial_2
       (write-long (length _SBS_serial_2) s) (princ _SBS_serial_2 s)
     ;; uint32 _SBS_arti_nr_1
       (write-long _SBS_arti_nr_1 s)
     ;; uint32 _SBS_arti_nr_2
       (write-long _SBS_arti_nr_2 s)
     ;; uint32 _SBS_arti_nr_3
       (write-long _SBS_arti_nr_3 s)
     ;; uint32 _SBS_curr_flow_passive_state
       (write-long _SBS_curr_flow_passive_state s)
     ;; uint8 _CHG_OC1_Count
       (write-byte _CHG_OC1_Count s)
     ;; uint8 _CHG_OC2_Count
       (write-byte _CHG_OC2_Count s)
     ;; uint8 _DSG_OC1_Count
       (write-byte _DSG_OC1_Count s)
     ;; uint8 _DSG_OC2_Count
       (write-byte _DSG_OC2_Count s)
     ;; uint8 _DSG_OC3_Count
       (write-byte _DSG_OC3_Count s)
     ;; uint8 _AFE_OC1_Count
       (write-byte _AFE_OC1_Count s)
     ;; uint8 _AFE_OC2_Count
       (write-byte _AFE_OC2_Count s)
     ;; uint8 _CHG_LatchClear_Count
       (write-byte _CHG_LatchClear_Count s)
     ;; uint8 _DSG_LatchClear_Count
       (write-byte _DSG_LatchClear_Count s)
     ;; uint8 _chg_oc_warning
       (write-byte _chg_oc_warning s)
     ;; uint8 _dsg_oc_warning
       (write-byte _dsg_oc_warning s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pack_voltage
     (setq _pack_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _charge_current
     (setq _charge_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _discharge_current
     (setq _discharge_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _state_of_charge
     (setq _state_of_charge (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _remaining_time_to_full_charge
     (setq _remaining_time_to_full_charge (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _remaining_capacity
     (setq _remaining_capacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state_of_health
     (setq _state_of_health (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status_flags
     (setq _status_flags (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _temperature
     (setq _temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _cell_voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell_voltage (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cell_voltage i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32 _cell_voltage_diff
     (setq _cell_voltage_diff (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _WST_serial
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _WST_serial (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _bmz_flag
     (setq _bmz_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _battery_type
     (setq _battery_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _full_voltage
     (setq _full_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _full_capacity
     (setq _full_capacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _temperature2
     (setq _temperature2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _temperature_pcb
     (setq _temperature_pcb (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cycle_count
     (setq _cycle_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dsg_overcurrent_counter
     (setq _dsg_overcurrent_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _chg_overcurrent_counter
     (setq _chg_overcurrent_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hw_major
     (setq _hw_major (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hw_minor
     (setq _hw_minor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fw_major
     (setq _fw_major (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fw_minor
     (setq _fw_minor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fw_patch
     (setq _fw_patch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fw_parameters_ok
     (setq _fw_parameters_ok (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rec_fw_major
     (setq _rec_fw_major (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rec_fw_minor
     (setq _rec_fw_minor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rec_fw_patch
     (setq _rec_fw_patch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _bl_major
     (setq _bl_major (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _bl_minor
     (setq _bl_minor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_enabled
     (setq _status_enabled (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_current_limitation
     (setq _status_current_limitation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_switch_off_warn1
     (setq _status_switch_off_warn1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_switch_off_warn2
     (setq _status_switch_off_warn2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_fully_discharged
     (setq _status_fully_discharged (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_nearly_discharged
     (setq _status_nearly_discharged (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_chargefet_on
     (setq _status_chargefet_on (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_dischargefet_on
     (setq _status_dischargefet_on (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_discharging
     (setq _status_discharging (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_fully_charged
     (setq _status_fully_charged (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_charging
     (setq _status_charging (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_temp_charging_err
     (setq _status_temp_charging_err (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_cell_over_voltage
     (setq _status_cell_over_voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_cell_under_voltage
     (setq _status_cell_under_voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_charge_over_current
     (setq _status_charge_over_current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_shortcircuit
     (setq _status_shortcircuit (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_discharge_over_current
     (setq _status_discharge_over_current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _status_chargefet_voltage
     (setq _status_chargefet_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _status_dischargefet_voltage
     (setq _status_dischargefet_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _status_temp_discharging_err
     (setq _status_temp_discharging_err (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_charger_detected
     (setq _status_charger_detected (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mnfct_bms_revision
     (setq _mnfct_bms_revision (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mnfct_asn_revision
     (setq _mnfct_asn_revision (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mnfct_year
     (setq _mnfct_year (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mnfct_week
     (setq _mnfct_week (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mnfct_model
     (setq _mnfct_model (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mnfct_serial
     (setq _mnfct_serial (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _afe_i2c_error_count
     (setq _afe_i2c_error_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _app_error_count
     (setq _app_error_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fet_disable_state
     (setq _fet_disable_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _last_battery_msg_time
     (setq _last_battery_msg_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _SBS_battery_status
     (setq _SBS_battery_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _SBS_battery_status_raw
     (setq _SBS_battery_status_raw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _SBS_serial_1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _SBS_serial_1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _SBS_serial_2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _SBS_serial_2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _SBS_arti_nr_1
     (setq _SBS_arti_nr_1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _SBS_arti_nr_2
     (setq _SBS_arti_nr_2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _SBS_arti_nr_3
     (setq _SBS_arti_nr_3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _SBS_curr_flow_passive_state
     (setq _SBS_curr_flow_passive_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _CHG_OC1_Count
     (setq _CHG_OC1_Count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CHG_OC2_Count
     (setq _CHG_OC2_Count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DSG_OC1_Count
     (setq _DSG_OC1_Count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DSG_OC2_Count
     (setq _DSG_OC2_Count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DSG_OC3_Count
     (setq _DSG_OC3_Count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AFE_OC1_Count
     (setq _AFE_OC1_Count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AFE_OC2_Count
     (setq _AFE_OC2_Count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CHG_LatchClear_Count
     (setq _CHG_LatchClear_Count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DSG_LatchClear_Count
     (setq _DSG_LatchClear_Count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _chg_oc_warning
     (setq _chg_oc_warning (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dsg_oc_warning
     (setq _dsg_oc_warning (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::BMSData :md5sum-) "64d9a6ee7004b0da6e7d451e7b57953b")
(setf (get mir_msgs::BMSData :datatype-) "mir_msgs/BMSData")
(setf (get mir_msgs::BMSData :definition-)
      "float64 pack_voltage
float64 charge_current
float64 discharge_current
float64 state_of_charge
float64 remaining_time_to_full_charge
int32 remaining_capacity
int32 state_of_health
int32 DISCHARGING=1 #bit 0
int32 CHARGING=2    #bit 1
int32 OV=4         #bit 2 Over voltage
int32 UV=8          #bit 3 Under voltage
int32 COC=16         #bit 4 Charge over current
int32 DOC=32         #bit 5 Discharge over current
int32 DOT=64         #bit 6 Discharge over temperature
int32 DUT=128         #bit 7 Discharge under temperature
int32  SC=512         #bit 9
int32 COT=1024         #bit 10 Charge over temperature
int32 CUT=2048         #bit 11 Charge under temperature
int32 FW_STATUS_MSK=2031616 # to get Battery_Firmware_Status  do the following:
int32 FW_STATUS_SHIFT=16    # batt_fw_stat=(status_flags & FW_STATUS_MSK)>>FW_STATUS_SHIFT
int32 FW_UPD_OK=0                  #Battery firmware update finished OK.
int32 FW_UPD_RUNNING=1             #Battery firmware update running.
int32 FW_UPD_FAILED_BOOT=2         #Battery firmware update failed in Bootloader (Robot must not drive)
int32 FW_UPD_FAILED_APP=3          #Battery firmware update failed updating the application (Robot can drive with old FW)
int32 FW_UPD_FAILED_PARAM=4        #Battery firmware update failed uploading parameters (Robot can drive with old fw and parameters.)
int32 FW_STATUS_LOW_BATT=5         #Battery firmware update skipped battery too low or high (Robot can drive with old parameters.)
int32 FW_STATUS_FILE_CORRUPTED=6   #Battery firmware file corrupted (Robot can drive with old parameters.)
int32 FW_STATUS_CURRENT_TO_HIGH=7  #Battery firmware file corrupted (Robot can drive with old parameters.)
int32 FW_STATUS_NO_CAN=8           #Battery firmware update skipped no CAN communication (Robot can drive with old fw and parameters.)
int32 FW_BATTERY_IMBALANCE_HIGH=9  #Battery firmware update is enforced and the battery will be shut off by the new firmware
int32 status_flags
int32 temperature
uint32[] cell_voltage # In Mk2 robots and above the BMS provides data for 8 battery cells. 2Gen robots have BMS for 13 battery cells
uint32 cell_voltage_diff

string WST_serial

# Exteded diagnosticts for BMZ battery
uint32 bmz_flag # Flag for enabling extended diagnosticts
uint32 battery_type
uint32 BATT_TYPE_UNKNOWN=0      #type is unknown / no communucation
uint32 BATT_TYPE_BMZ=1          #BMZ battery
uint32 BATT_TYPE_WST=2          #WST battery
uint32 BATT_TYPE_SBS=3          #SBS battery
uint32 BATT_TYPE_SBS_SLIDE=4    #SBS SLIDE battery
uint32 BATT_TYPE_NO_BMS=255       #WST No BMS battery
float64 full_voltage
int32 full_capacity
int32 temperature2
int32 temperature_pcb
int32 cycle_count
int32 dsg_overcurrent_counter
int32 chg_overcurrent_counter
int32 hw_major
int32 hw_minor
int32 fw_major
int32 fw_minor
int32 fw_patch
int32 fw_parameters_ok
int32 rec_fw_major
int32 rec_fw_minor
int32 rec_fw_patch
int32 bl_major
int32 bl_minor
uint32 status_enabled
uint32 status_current_limitation
uint32 status_switch_off_warn1
uint32 status_switch_off_warn2
uint32 status_fully_discharged
uint32 status_nearly_discharged
uint32 status_chargefet_on
uint32 status_dischargefet_on
uint32 status_discharging
uint32 status_fully_charged
uint32 status_charging
uint32 status_temp_charging_err
uint32 status_cell_over_voltage
uint32 status_cell_under_voltage
uint32 status_charge_over_current
uint32 status_shortcircuit
uint32 status_discharge_over_current
float64 status_chargefet_voltage
float64 status_dischargefet_voltage
uint32 status_temp_discharging_err
uint32 status_charger_detected
uint32 mnfct_bms_revision
uint32 mnfct_asn_revision
uint32 mnfct_year
uint32 mnfct_week
uint32 mnfct_model
uint32 mnfct_serial
uint32 afe_i2c_error_count
uint32 app_error_count
uint32 fet_disable_state

float64 last_battery_msg_time

# SBS battery states
uint32 SBS_battery_status
uint32 SBS_battery_status_raw
uint32 SBS_InitState1=1
uint32 SBS_InitState2=2
uint32 SBS_InitState3=3
uint32 SBS_InitState4=4
uint32 SBS_Idle=5
uint32 SBS_Discharge=6
uint32 SBS_Charge=7
uint32 SBS_Fault=10
uint32 SBS_CriticalError=11
uint32 SBS_PrepareDeepsleep=99
uint32 SBS_Deepsleep=100

string SBS_serial_1
string SBS_serial_2

uint32 SBS_arti_nr_1
uint32 SBS_arti_nr_2
uint32 SBS_arti_nr_3

uint32 SBS_curr_flow_passive_state

# Overcurrent counters
uint8 CHG_OC1_Count
uint8 CHG_OC2_Count
uint8 DSG_OC1_Count
uint8 DSG_OC2_Count
uint8 DSG_OC3_Count
uint8 AFE_OC1_Count
uint8 AFE_OC2_Count
uint8 CHG_LatchClear_Count
uint8 DSG_LatchClear_Count

uint8 chg_oc_warning
uint8 dsg_oc_warning

")



(provide :mir_msgs/BMSData "64d9a6ee7004b0da6e7d451e7b57953b")


