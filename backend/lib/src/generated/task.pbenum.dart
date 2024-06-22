//
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// / The priority of the task.
class Priority extends $pb.ProtobufEnum {
  static const Priority LOW = Priority._(0, _omitEnumNames ? '' : 'LOW');
  static const Priority MEDIUM = Priority._(1, _omitEnumNames ? '' : 'MEDIUM');
  static const Priority HIGH = Priority._(2, _omitEnumNames ? '' : 'HIGH');

  static const $core.List<Priority> values = <Priority> [
    LOW,
    MEDIUM,
    HIGH,
  ];

  static final $core.Map<$core.int, Priority> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Priority? valueOf($core.int value) => _byValue[value];

  const Priority._($core.int v, $core.String n) : super(v, n);
}

/// / The status of the task.
class Status extends $pb.ProtobufEnum {
  static const Status IDLE = Status._(0, _omitEnumNames ? '' : 'IDLE');
  static const Status DOING = Status._(1, _omitEnumNames ? '' : 'DOING');
  static const Status DONE = Status._(2, _omitEnumNames ? '' : 'DONE');

  static const $core.List<Status> values = <Status> [
    IDLE,
    DOING,
    DONE,
  ];

  static final $core.Map<$core.int, Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status? valueOf($core.int value) => _byValue[value];

  const Status._($core.int v, $core.String n) : super(v, n);
}

/// / Permissions for the task.
class Permissions extends $pb.ProtobufEnum {
  static const Permissions can_edit = Permissions._(0, _omitEnumNames ? '' : 'can_edit');
  static const Permissions can_delete = Permissions._(1, _omitEnumNames ? '' : 'can_delete');
  static const Permissions can_assign = Permissions._(2, _omitEnumNames ? '' : 'can_assign');
  static const Permissions can_change_status = Permissions._(3, _omitEnumNames ? '' : 'can_change_status');
  static const Permissions can_change_priority = Permissions._(4, _omitEnumNames ? '' : 'can_change_priority');

  static const $core.List<Permissions> values = <Permissions> [
    can_edit,
    can_delete,
    can_assign,
    can_change_status,
    can_change_priority,
  ];

  static final $core.Map<$core.int, Permissions> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Permissions? valueOf($core.int value) => _byValue[value];

  const Permissions._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
