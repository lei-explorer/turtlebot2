
"use strict";

let KeyboardInput = require('./KeyboardInput.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let BumperEvent = require('./BumperEvent.js');
let ControllerInfo = require('./ControllerInfo.js');
let Sound = require('./Sound.js');
let ScanAngle = require('./ScanAngle.js');
let Led = require('./Led.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let ExternalPower = require('./ExternalPower.js');
let DigitalOutput = require('./DigitalOutput.js');
let MotorPower = require('./MotorPower.js');
let CliffEvent = require('./CliffEvent.js');
let SensorState = require('./SensorState.js');
let DockInfraRed = require('./DockInfraRed.js');
let VersionInfo = require('./VersionInfo.js');
let ButtonEvent = require('./ButtonEvent.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingResult = require('./AutoDockingResult.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');

module.exports = {
  KeyboardInput: KeyboardInput,
  DigitalInputEvent: DigitalInputEvent,
  RobotStateEvent: RobotStateEvent,
  BumperEvent: BumperEvent,
  ControllerInfo: ControllerInfo,
  Sound: Sound,
  ScanAngle: ScanAngle,
  Led: Led,
  WheelDropEvent: WheelDropEvent,
  PowerSystemEvent: PowerSystemEvent,
  ExternalPower: ExternalPower,
  DigitalOutput: DigitalOutput,
  MotorPower: MotorPower,
  CliffEvent: CliffEvent,
  SensorState: SensorState,
  DockInfraRed: DockInfraRed,
  VersionInfo: VersionInfo,
  ButtonEvent: ButtonEvent,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingAction: AutoDockingAction,
  AutoDockingResult: AutoDockingResult,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingActionResult: AutoDockingActionResult,
};
