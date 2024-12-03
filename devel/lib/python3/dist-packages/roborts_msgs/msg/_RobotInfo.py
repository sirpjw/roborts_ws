# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roborts_msgs/RobotInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RobotInfo(genpy.Message):
  _md5sum = "42151e01fd01be2567ca9939a7e62df3"
  _type = "roborts_msgs/RobotInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#robot status
uint8 id
uint8 level
uint16 remain_hp
uint16 max_hp

uint16 remain_bullets
uint16 max_bullets

uint8 robot_color

# devices enable
bool chassis_enable
bool shooter_enable
bool fricwheel_enable

# color Defined Value
uint8 RED = 1
uint8 BLUE = 2
uint8 UNKONWN = 0"""
  # Pseudo-constants
  RED = 1
  BLUE = 2
  UNKONWN = 0

  __slots__ = ['id','level','remain_hp','max_hp','remain_bullets','max_bullets','robot_color','chassis_enable','shooter_enable','fricwheel_enable']
  _slot_types = ['uint8','uint8','uint16','uint16','uint16','uint16','uint8','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,level,remain_hp,max_hp,remain_bullets,max_bullets,robot_color,chassis_enable,shooter_enable,fricwheel_enable

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.level is None:
        self.level = 0
      if self.remain_hp is None:
        self.remain_hp = 0
      if self.max_hp is None:
        self.max_hp = 0
      if self.remain_bullets is None:
        self.remain_bullets = 0
      if self.max_bullets is None:
        self.max_bullets = 0
      if self.robot_color is None:
        self.robot_color = 0
      if self.chassis_enable is None:
        self.chassis_enable = False
      if self.shooter_enable is None:
        self.shooter_enable = False
      if self.fricwheel_enable is None:
        self.fricwheel_enable = False
    else:
      self.id = 0
      self.level = 0
      self.remain_hp = 0
      self.max_hp = 0
      self.remain_bullets = 0
      self.max_bullets = 0
      self.robot_color = 0
      self.chassis_enable = False
      self.shooter_enable = False
      self.fricwheel_enable = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2B4H4B().pack(_x.id, _x.level, _x.remain_hp, _x.max_hp, _x.remain_bullets, _x.max_bullets, _x.robot_color, _x.chassis_enable, _x.shooter_enable, _x.fricwheel_enable))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 14
      (_x.id, _x.level, _x.remain_hp, _x.max_hp, _x.remain_bullets, _x.max_bullets, _x.robot_color, _x.chassis_enable, _x.shooter_enable, _x.fricwheel_enable,) = _get_struct_2B4H4B().unpack(str[start:end])
      self.chassis_enable = bool(self.chassis_enable)
      self.shooter_enable = bool(self.shooter_enable)
      self.fricwheel_enable = bool(self.fricwheel_enable)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2B4H4B().pack(_x.id, _x.level, _x.remain_hp, _x.max_hp, _x.remain_bullets, _x.max_bullets, _x.robot_color, _x.chassis_enable, _x.shooter_enable, _x.fricwheel_enable))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 14
      (_x.id, _x.level, _x.remain_hp, _x.max_hp, _x.remain_bullets, _x.max_bullets, _x.robot_color, _x.chassis_enable, _x.shooter_enable, _x.fricwheel_enable,) = _get_struct_2B4H4B().unpack(str[start:end])
      self.chassis_enable = bool(self.chassis_enable)
      self.shooter_enable = bool(self.shooter_enable)
      self.fricwheel_enable = bool(self.fricwheel_enable)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B4H4B = None
def _get_struct_2B4H4B():
    global _struct_2B4H4B
    if _struct_2B4H4B is None:
        _struct_2B4H4B = struct.Struct("<2B4H4B")
    return _struct_2B4H4B