
"use strict";

let SoundEvent = require('./SoundEvent.js');
let ChargingState = require('./ChargingState.js');
let PlanSegment = require('./PlanSegment.js');
let HookExtendedStatus = require('./HookExtendedStatus.js');
let BMSData = require('./BMSData.js');
let ExternalRobots = require('./ExternalRobots.js');
let PlanSegments = require('./PlanSegments.js');
let RobotStatus = require('./RobotStatus.js');
let Gpio = require('./Gpio.js');
let Events = require('./Events.js');
let ResourceState = require('./ResourceState.js');
let LocalMapStat = require('./LocalMapStat.js');
let Error = require('./Error.js');
let SkidDetectionDiff = require('./SkidDetectionDiff.js');
let SafetyStatus = require('./SafetyStatus.js');
let JoystickVel = require('./JoystickVel.js');
let UserPrompt = require('./UserPrompt.js');
let WorldModel = require('./WorldModel.js');
let SkidDetectionStampedFloat = require('./SkidDetectionStampedFloat.js');
let BatteryCurrents = require('./BatteryCurrents.js');
let TimeDebug = require('./TimeDebug.js');
let HookStatus = require('./HookStatus.js');
let PowerBoardMotorStatus = require('./PowerBoardMotorStatus.js');
let MirLocalPlannerPathTypes = require('./MirLocalPlannerPathTypes.js');
let ExternalRobot = require('./ExternalRobot.js');
let ResourcesAcquisition = require('./ResourcesAcquisition.js');
let WebPath = require('./WebPath.js');
let StampedEncoders = require('./StampedEncoders.js');
let Path = require('./Path.js');
let ServiceResponseHeader = require('./ServiceResponseHeader.js');
let MovingState = require('./MovingState.js');
let MissionCtrlCommand = require('./MissionCtrlCommand.js');
let Encoders = require('./Encoders.js');
let MirExtra = require('./MirExtra.js');
let Trolley = require('./Trolley.js');
let GripperState = require('./GripperState.js');
let Event = require('./Event.js');
let HookData = require('./HookData.js');
let AngleMeasurment = require('./AngleMeasurment.js');
let WorldMap = require('./WorldMap.js');
let HeightState = require('./HeightState.js');
let Pose2D = require('./Pose2D.js');
let IOs = require('./IOs.js');
let EncoderTestEntry = require('./EncoderTestEntry.js');
let BrakeState = require('./BrakeState.js');
let Device = require('./Device.js');
let MissionCtrlState = require('./MissionCtrlState.js');
let RobotMode = require('./RobotMode.js');
let RobotState = require('./RobotState.js');
let Twist2D = require('./Twist2D.js');
let Proximity = require('./Proximity.js');
let ResourcesState = require('./ResourcesState.js');
let PalletLifterStatus = require('./PalletLifterStatus.js');
let Pendant = require('./Pendant.js');
let Devices = require('./Devices.js');
let PrecisionDockingStatus = require('./PrecisionDockingStatus.js');
let Serial = require('./Serial.js');

module.exports = {
  SoundEvent: SoundEvent,
  ChargingState: ChargingState,
  PlanSegment: PlanSegment,
  HookExtendedStatus: HookExtendedStatus,
  BMSData: BMSData,
  ExternalRobots: ExternalRobots,
  PlanSegments: PlanSegments,
  RobotStatus: RobotStatus,
  Gpio: Gpio,
  Events: Events,
  ResourceState: ResourceState,
  LocalMapStat: LocalMapStat,
  Error: Error,
  SkidDetectionDiff: SkidDetectionDiff,
  SafetyStatus: SafetyStatus,
  JoystickVel: JoystickVel,
  UserPrompt: UserPrompt,
  WorldModel: WorldModel,
  SkidDetectionStampedFloat: SkidDetectionStampedFloat,
  BatteryCurrents: BatteryCurrents,
  TimeDebug: TimeDebug,
  HookStatus: HookStatus,
  PowerBoardMotorStatus: PowerBoardMotorStatus,
  MirLocalPlannerPathTypes: MirLocalPlannerPathTypes,
  ExternalRobot: ExternalRobot,
  ResourcesAcquisition: ResourcesAcquisition,
  WebPath: WebPath,
  StampedEncoders: StampedEncoders,
  Path: Path,
  ServiceResponseHeader: ServiceResponseHeader,
  MovingState: MovingState,
  MissionCtrlCommand: MissionCtrlCommand,
  Encoders: Encoders,
  MirExtra: MirExtra,
  Trolley: Trolley,
  GripperState: GripperState,
  Event: Event,
  HookData: HookData,
  AngleMeasurment: AngleMeasurment,
  WorldMap: WorldMap,
  HeightState: HeightState,
  Pose2D: Pose2D,
  IOs: IOs,
  EncoderTestEntry: EncoderTestEntry,
  BrakeState: BrakeState,
  Device: Device,
  MissionCtrlState: MissionCtrlState,
  RobotMode: RobotMode,
  RobotState: RobotState,
  Twist2D: Twist2D,
  Proximity: Proximity,
  ResourcesState: ResourcesState,
  PalletLifterStatus: PalletLifterStatus,
  Pendant: Pendant,
  Devices: Devices,
  PrecisionDockingStatus: PrecisionDockingStatus,
  Serial: Serial,
};
