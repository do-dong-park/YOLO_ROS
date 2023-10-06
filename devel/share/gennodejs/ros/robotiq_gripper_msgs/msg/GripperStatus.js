// Auto-generated. Do not edit!

// (in-package robotiq_gripper_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GripperStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.g_act = null;
      this.g_gto = null;
      this.g_sta = null;
      this.g_obj = null;
      this.g_flt = null;
      this.g_pr = null;
      this.g_po = null;
      this.g_cu = null;
    }
    else {
      if (initObj.hasOwnProperty('g_act')) {
        this.g_act = initObj.g_act
      }
      else {
        this.g_act = 0;
      }
      if (initObj.hasOwnProperty('g_gto')) {
        this.g_gto = initObj.g_gto
      }
      else {
        this.g_gto = 0;
      }
      if (initObj.hasOwnProperty('g_sta')) {
        this.g_sta = initObj.g_sta
      }
      else {
        this.g_sta = 0;
      }
      if (initObj.hasOwnProperty('g_obj')) {
        this.g_obj = initObj.g_obj
      }
      else {
        this.g_obj = 0;
      }
      if (initObj.hasOwnProperty('g_flt')) {
        this.g_flt = initObj.g_flt
      }
      else {
        this.g_flt = 0;
      }
      if (initObj.hasOwnProperty('g_pr')) {
        this.g_pr = initObj.g_pr
      }
      else {
        this.g_pr = 0;
      }
      if (initObj.hasOwnProperty('g_po')) {
        this.g_po = initObj.g_po
      }
      else {
        this.g_po = 0;
      }
      if (initObj.hasOwnProperty('g_cu')) {
        this.g_cu = initObj.g_cu
      }
      else {
        this.g_cu = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperStatus
    // Serialize message field [g_act]
    bufferOffset = _serializer.uint8(obj.g_act, buffer, bufferOffset);
    // Serialize message field [g_gto]
    bufferOffset = _serializer.uint8(obj.g_gto, buffer, bufferOffset);
    // Serialize message field [g_sta]
    bufferOffset = _serializer.uint8(obj.g_sta, buffer, bufferOffset);
    // Serialize message field [g_obj]
    bufferOffset = _serializer.uint8(obj.g_obj, buffer, bufferOffset);
    // Serialize message field [g_flt]
    bufferOffset = _serializer.uint8(obj.g_flt, buffer, bufferOffset);
    // Serialize message field [g_pr]
    bufferOffset = _serializer.uint8(obj.g_pr, buffer, bufferOffset);
    // Serialize message field [g_po]
    bufferOffset = _serializer.uint8(obj.g_po, buffer, bufferOffset);
    // Serialize message field [g_cu]
    bufferOffset = _serializer.uint8(obj.g_cu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperStatus
    let len;
    let data = new GripperStatus(null);
    // Deserialize message field [g_act]
    data.g_act = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [g_gto]
    data.g_gto = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [g_sta]
    data.g_sta = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [g_obj]
    data.g_obj = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [g_flt]
    data.g_flt = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [g_pr]
    data.g_pr = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [g_po]
    data.g_po = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [g_cu]
    data.g_cu = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotiq_gripper_msgs/GripperStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae882ea5fd2ea006815a4db0a359f9f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 g_act
    uint8 g_gto
    uint8 g_sta
    uint8 g_obj
    uint8 g_flt
    uint8 g_pr
    uint8 g_po
    uint8 g_cu
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperStatus(null);
    if (msg.g_act !== undefined) {
      resolved.g_act = msg.g_act;
    }
    else {
      resolved.g_act = 0
    }

    if (msg.g_gto !== undefined) {
      resolved.g_gto = msg.g_gto;
    }
    else {
      resolved.g_gto = 0
    }

    if (msg.g_sta !== undefined) {
      resolved.g_sta = msg.g_sta;
    }
    else {
      resolved.g_sta = 0
    }

    if (msg.g_obj !== undefined) {
      resolved.g_obj = msg.g_obj;
    }
    else {
      resolved.g_obj = 0
    }

    if (msg.g_flt !== undefined) {
      resolved.g_flt = msg.g_flt;
    }
    else {
      resolved.g_flt = 0
    }

    if (msg.g_pr !== undefined) {
      resolved.g_pr = msg.g_pr;
    }
    else {
      resolved.g_pr = 0
    }

    if (msg.g_po !== undefined) {
      resolved.g_po = msg.g_po;
    }
    else {
      resolved.g_po = 0
    }

    if (msg.g_cu !== undefined) {
      resolved.g_cu = msg.g_cu;
    }
    else {
      resolved.g_cu = 0
    }

    return resolved;
    }
};

module.exports = GripperStatus;
