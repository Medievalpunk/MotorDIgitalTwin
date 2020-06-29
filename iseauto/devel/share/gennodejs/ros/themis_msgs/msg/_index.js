
"use strict";

let Generator = require('./Generator.js');
let DriveControl = require('./DriveControl.js');
let VehicleMode = require('./VehicleMode.js');
let SystemControl = require('./SystemControl.js');
let Feedback = require('./Feedback.js');
let Battery = require('./Battery.js');
let State = require('./State.js');
let Sevcon = require('./Sevcon.js');
let Error = require('./Error.js');
let ModeControl = require('./ModeControl.js');
let ControlMsg = require('./ControlMsg.js');
let Track = require('./Track.js');
let Vehicle = require('./Vehicle.js');
let Emcy = require('./Emcy.js');
let GeneratorPdm = require('./GeneratorPdm.js');
let RpmMessage = require('./RpmMessage.js');
let TrackPdm = require('./TrackPdm.js');

module.exports = {
  Generator: Generator,
  DriveControl: DriveControl,
  VehicleMode: VehicleMode,
  SystemControl: SystemControl,
  Feedback: Feedback,
  Battery: Battery,
  State: State,
  Sevcon: Sevcon,
  Error: Error,
  ModeControl: ModeControl,
  ControlMsg: ControlMsg,
  Track: Track,
  Vehicle: Vehicle,
  Emcy: Emcy,
  GeneratorPdm: GeneratorPdm,
  RpmMessage: RpmMessage,
  TrackPdm: TrackPdm,
};
