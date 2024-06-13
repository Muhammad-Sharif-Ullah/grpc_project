//
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'google/protobuf/timestamp.pbjson.dart' as $0;

@$core.Deprecated('Use priorityDescriptor instead')
const Priority$json = {
  '1': 'Priority',
  '2': [
    {'1': 'LOW', '2': 0},
    {'1': 'MEDIUM', '2': 1},
    {'1': 'HIGH', '2': 2},
  ],
};

/// Descriptor for `Priority`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List priorityDescriptor = $convert.base64Decode(
    'CghQcmlvcml0eRIHCgNMT1cQABIKCgZNRURJVU0QARIICgRISUdIEAI=');

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'TODO', '2': 0},
    {'1': 'DOING', '2': 1},
    {'1': 'DONE', '2': 2},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSCAoEVE9ETxAAEgkKBURPSU5HEAESCAoERE9ORRAC');

@$core.Deprecated('Use taskDescriptor instead')
const Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'done', '3': 4, '4': 1, '5': 8, '10': 'done'},
    {'1': 'priority', '3': 5, '4': 1, '5': 14, '6': '.task.Priority', '10': 'priority'},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.task.Status', '10': 'status'},
    {'1': 'create_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createAt'},
    {'1': 'update_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateAt'},
    {'1': 'last_update_at', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastUpdateAt'},
    {'1': 'user', '3': 10, '4': 1, '5': 11, '6': '.task.TaskUser', '10': 'user'},
    {'1': 'assigned_users', '3': 11, '4': 3, '5': 11, '6': '.task.Task', '10': 'assignedUsers'},
    {'1': 'last_updated_user', '3': 12, '4': 1, '5': 11, '6': '.task.User', '10': 'lastUpdatedUser'},
    {'1': 'comments', '3': 13, '4': 3, '5': 11, '6': '.task.Comment', '10': 'comments'},
    {'1': 'project', '3': 14, '4': 1, '5': 11, '6': '.task.Project', '10': 'project'},
  ],
};

/// Descriptor for `Task`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskDescriptor = $convert.base64Decode(
    'CgRUYXNrEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcH'
    'Rpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhIKBGRvbmUYBCABKAhSBGRvbmUSKgoIcHJpb3JpdHkY'
    'BSABKA4yDi50YXNrLlByaW9yaXR5Ughwcmlvcml0eRIkCgZzdGF0dXMYBiABKA4yDC50YXNrLl'
    'N0YXR1c1IGc3RhdHVzEjcKCWNyZWF0ZV9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1l'
    'c3RhbXBSCGNyZWF0ZUF0EjcKCXVwZGF0ZV9hdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW'
    '1lc3RhbXBSCHVwZGF0ZUF0EkAKDmxhc3RfdXBkYXRlX2F0GAkgASgLMhouZ29vZ2xlLnByb3Rv'
    'YnVmLlRpbWVzdGFtcFIMbGFzdFVwZGF0ZUF0EiIKBHVzZXIYCiABKAsyDi50YXNrLlRhc2tVc2'
    'VyUgR1c2VyEjEKDmFzc2lnbmVkX3VzZXJzGAsgAygLMgoudGFzay5UYXNrUg1hc3NpZ25lZFVz'
    'ZXJzEjYKEWxhc3RfdXBkYXRlZF91c2VyGAwgASgLMgoudGFzay5Vc2VyUg9sYXN0VXBkYXRlZF'
    'VzZXISKQoIY29tbWVudHMYDSADKAsyDS50YXNrLkNvbW1lbnRSCGNvbW1lbnRzEicKB3Byb2pl'
    'Y3QYDiABKAsyDS50YXNrLlByb2plY3RSB3Byb2plY3Q=');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    {'1': 'avatar', '3': 5, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWVtYWlsGAMgAS'
    'gJUgVlbWFpbBIaCghwYXNzd29yZBgEIAEoCVIIcGFzc3dvcmQSFgoGYXZhdGFyGAUgASgJUgZh'
    'dmF0YXI=');

@$core.Deprecated('Use permissionsDescriptor instead')
const Permissions$json = {
  '1': 'Permissions',
  '2': [
    {'1': 'can_edit', '3': 1, '4': 1, '5': 8, '10': 'canEdit'},
    {'1': 'can_delete', '3': 2, '4': 1, '5': 8, '10': 'canDelete'},
    {'1': 'can_assign', '3': 3, '4': 1, '5': 8, '10': 'canAssign'},
    {'1': 'can_change_status', '3': 4, '4': 1, '5': 8, '10': 'canChangeStatus'},
    {'1': 'can_change_priority', '3': 5, '4': 1, '5': 8, '10': 'canChangePriority'},
  ],
};

/// Descriptor for `Permissions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List permissionsDescriptor = $convert.base64Decode(
    'CgtQZXJtaXNzaW9ucxIZCghjYW5fZWRpdBgBIAEoCFIHY2FuRWRpdBIdCgpjYW5fZGVsZXRlGA'
    'IgASgIUgljYW5EZWxldGUSHQoKY2FuX2Fzc2lnbhgDIAEoCFIJY2FuQXNzaWduEioKEWNhbl9j'
    'aGFuZ2Vfc3RhdHVzGAQgASgIUg9jYW5DaGFuZ2VTdGF0dXMSLgoTY2FuX2NoYW5nZV9wcmlvcm'
    'l0eRgFIAEoCFIRY2FuQ2hhbmdlUHJpb3JpdHk=');

@$core.Deprecated('Use taskUserDescriptor instead')
const TaskUser$json = {
  '1': 'TaskUser',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.task.User', '10': 'user'},
    {'1': 'permissions', '3': 2, '4': 3, '5': 11, '6': '.task.Permissions', '10': 'permissions'},
  ],
};

/// Descriptor for `TaskUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskUserDescriptor = $convert.base64Decode(
    'CghUYXNrVXNlchIeCgR1c2VyGAEgASgLMgoudGFzay5Vc2VyUgR1c2VyEjMKC3Blcm1pc3Npb2'
    '5zGAIgAygLMhEudGFzay5QZXJtaXNzaW9uc1ILcGVybWlzc2lvbnM=');

@$core.Deprecated('Use commentDescriptor instead')
const Comment$json = {
  '1': 'Comment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'create_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createAt'},
    {'1': 'update_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateAt'},
    {'1': 'user', '3': 5, '4': 1, '5': 11, '6': '.task.TaskUser', '10': 'user'},
  ],
};

/// Descriptor for `Comment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDescriptor = $convert.base64Decode(
    'CgdDb21tZW50Eg4KAmlkGAEgASgFUgJpZBISCgR0ZXh0GAIgASgJUgR0ZXh0EjcKCWNyZWF0ZV'
    '9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGNyZWF0ZUF0EjcKCXVwZGF0'
    'ZV9hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHVwZGF0ZUF0EiIKBHVzZX'
    'IYBSABKAsyDi50YXNrLlRhc2tVc2VyUgR1c2Vy');

@$core.Deprecated('Use projectDescriptor instead')
const Project$json = {
  '1': 'Project',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'create_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createAt'},
    {'1': 'update_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateAt'},
    {'1': 'user', '3': 6, '4': 3, '5': 11, '6': '.task.TaskUser', '10': 'user'},
  ],
};

/// Descriptor for `Project`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectDescriptor = $convert.base64Decode(
    'CgdQcm9qZWN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaX'
    'B0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhI3CgljcmVhdGVfYXQYBCABKAsyGi5nb29nbGUucHJv'
    'dG9idWYuVGltZXN0YW1wUghjcmVhdGVBdBI3Cgl1cGRhdGVfYXQYBSABKAsyGi5nb29nbGUucH'
    'JvdG9idWYuVGltZXN0YW1wUgh1cGRhdGVBdBIiCgR1c2VyGAYgAygLMg4udGFzay5UYXNrVXNl'
    'clIEdXNlcg==');

@$core.Deprecated('Use paginationDescriptor instead')
const Pagination$json = {
  '1': 'Pagination',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'total', '3': 3, '4': 1, '5': 5, '10': 'total'},
    {'1': 'pages', '3': 4, '4': 1, '5': 5, '10': 'pages'},
  ],
};

/// Descriptor for `Pagination`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paginationDescriptor = $convert.base64Decode(
    'CgpQYWdpbmF0aW9uEhIKBHBhZ2UYASABKAVSBHBhZ2USFAoFbGltaXQYAiABKAVSBWxpbWl0Eh'
    'QKBXRvdGFsGAMgASgFUgV0b3RhbBIUCgVwYWdlcxgEIAEoBVIFcGFnZXM=');

@$core.Deprecated('Use taskListDescriptor instead')
const TaskList$json = {
  '1': 'TaskList',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.task.Task', '10': 'tasks'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.task.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `TaskList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskListDescriptor = $convert.base64Decode(
    'CghUYXNrTGlzdBIgCgV0YXNrcxgBIAMoCzIKLnRhc2suVGFza1IFdGFza3MSMAoKcGFnaW5hdG'
    'lvbhgCIAEoCzIQLnRhc2suUGFnaW5hdGlvblIKcGFnaW5hdGlvbg==');

@$core.Deprecated('Use taskFilterDescriptor instead')
const TaskFilter$json = {
  '1': 'TaskFilter',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '9': 1, '10': 'done', '17': true},
    {'1': 'priority', '3': 4, '4': 1, '5': 14, '6': '.task.Priority', '9': 2, '10': 'priority', '17': true},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.task.Status', '9': 3, '10': 'status', '17': true},
    {'1': 'assigned_user_id', '3': 8, '4': 1, '5': 5, '10': 'assignedUserId'},
    {'1': 'last_updated_user_id', '3': 9, '4': 1, '5': 5, '10': 'lastUpdatedUserId'},
    {'1': 'comment_user_id', '3': 10, '4': 1, '5': 5, '10': 'commentUserId'},
    {'1': 'comment_text', '3': 11, '4': 1, '5': 9, '10': 'commentText'},
    {'1': 'create_at', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createAt'},
    {'1': 'update_at', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateAt'},
    {'1': 'last_update_at', '3': 14, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastUpdateAt'},
    {'1': 'comment_create_at', '3': 15, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'commentCreateAt'},
    {'1': 'comment_update_at', '3': 16, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'commentUpdateAt'},
  ],
  '8': [
    {'1': '_title'},
    {'1': '_done'},
    {'1': '_priority'},
    {'1': '_status'},
  ],
};

/// Descriptor for `TaskFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskFilterDescriptor = $convert.base64Decode(
    'CgpUYXNrRmlsdGVyEhkKBXRpdGxlGAEgASgJSABSBXRpdGxliAEBEhcKBGRvbmUYAyABKAhIAV'
    'IEZG9uZYgBARIvCghwcmlvcml0eRgEIAEoDjIOLnRhc2suUHJpb3JpdHlIAlIIcHJpb3JpdHmI'
    'AQESKQoGc3RhdHVzGAUgASgOMgwudGFzay5TdGF0dXNIA1IGc3RhdHVziAEBEigKEGFzc2lnbm'
    'VkX3VzZXJfaWQYCCABKAVSDmFzc2lnbmVkVXNlcklkEi8KFGxhc3RfdXBkYXRlZF91c2VyX2lk'
    'GAkgASgFUhFsYXN0VXBkYXRlZFVzZXJJZBImCg9jb21tZW50X3VzZXJfaWQYCiABKAVSDWNvbW'
    '1lbnRVc2VySWQSIQoMY29tbWVudF90ZXh0GAsgASgJUgtjb21tZW50VGV4dBI3CgljcmVhdGVf'
    'YXQYDCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghjcmVhdGVBdBI3Cgl1cGRhdG'
    'VfYXQYDSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgh1cGRhdGVBdBJACg5sYXN0'
    'X3VwZGF0ZV9hdBgOIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDGxhc3RVcGRhdG'
    'VBdBJGChFjb21tZW50X2NyZWF0ZV9hdBgPIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBSD2NvbW1lbnRDcmVhdGVBdBJGChFjb21tZW50X3VwZGF0ZV9hdBgQIAEoCzIaLmdvb2dsZS'
    '5wcm90b2J1Zi5UaW1lc3RhbXBSD2NvbW1lbnRVcGRhdGVBdEIICgZfdGl0bGVCBwoFX2RvbmVC'
    'CwoJX3ByaW9yaXR5QgkKB19zdGF0dXM=');

@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = {
  '1': 'CreateTaskRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
    {'1': 'priority', '3': 4, '4': 1, '5': 14, '6': '.task.Priority', '10': 'priority'},
    {'1': 'user_id', '3': 6, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'project_id', '3': 7, '4': 1, '5': 5, '10': 'projectId'},
    {'1': 'assigned_user_id', '3': 8, '4': 3, '5': 5, '10': 'assignedUserId'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUYXNrUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb2'
    '4YAiABKAlSC2Rlc2NyaXB0aW9uEhIKBGRvbmUYAyABKAhSBGRvbmUSKgoIcHJpb3JpdHkYBCAB'
    'KA4yDi50YXNrLlByaW9yaXR5Ughwcmlvcml0eRIXCgd1c2VyX2lkGAYgASgFUgZ1c2VySWQSHQ'
    'oKcHJvamVjdF9pZBgHIAEoBVIJcHJvamVjdElkEigKEGFzc2lnbmVkX3VzZXJfaWQYCCADKAVS'
    'DmFzc2lnbmVkVXNlcklk');

@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = {
  '1': 'UpdateTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'done', '3': 4, '4': 1, '5': 8, '9': 2, '10': 'done', '17': true},
    {'1': 'priority', '3': 5, '4': 1, '5': 14, '6': '.task.Priority', '9': 3, '10': 'priority', '17': true},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.task.Status', '9': 4, '10': 'status', '17': true},
    {'1': 'assigned_user_id', '3': 9, '4': 3, '5': 5, '10': 'assignedUserId'},
  ],
  '8': [
    {'1': '_title'},
    {'1': '_description'},
    {'1': '_done'},
    {'1': '_priority'},
    {'1': '_status'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSGQoFdGl0bGUYAiABKAlIAFIFdG'
    'l0bGWIAQESJQoLZGVzY3JpcHRpb24YAyABKAlIAVILZGVzY3JpcHRpb26IAQESFwoEZG9uZRgE'
    'IAEoCEgCUgRkb25liAEBEi8KCHByaW9yaXR5GAUgASgOMg4udGFzay5Qcmlvcml0eUgDUghwcm'
    'lvcml0eYgBARIpCgZzdGF0dXMYBiABKA4yDC50YXNrLlN0YXR1c0gEUgZzdGF0dXOIAQESKAoQ'
    'YXNzaWduZWRfdXNlcl9pZBgJIAMoBVIOYXNzaWduZWRVc2VySWRCCAoGX3RpdGxlQg4KDF9kZX'
    'NjcmlwdGlvbkIHCgVfZG9uZUILCglfcHJpb3JpdHlCCQoHX3N0YXR1cw==');

@$core.Deprecated('Use deleteTaskRequestDescriptor instead')
const DeleteTaskRequest$json = {
  '1': 'DeleteTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use getTaskRequestDescriptor instead')
const GetTaskRequest$json = {
  '1': 'GetTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRUYXNrUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use taskRequestDescriptor instead')
const TaskRequest$json = {
  '1': 'TaskRequest',
  '2': [
    {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.task.Task', '10': 'task'},
  ],
};

/// Descriptor for `TaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskRequestDescriptor = $convert.base64Decode(
    'CgtUYXNrUmVxdWVzdBIeCgR0YXNrGAEgASgLMgoudGFzay5UYXNrUgR0YXNr');

@$core.Deprecated('Use addResponseDescriptor instead')
const AddResponse$json = {
  '1': 'AddResponse',
  '2': [
    {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.task.Task', '10': 'task'},
  ],
};

/// Descriptor for `AddResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addResponseDescriptor = $convert.base64Decode(
    'CgtBZGRSZXNwb25zZRIeCgR0YXNrGAEgASgLMgoudGFzay5UYXNrUgR0YXNr');

@$core.Deprecated('Use getResponseDescriptor instead')
const GetResponse$json = {
  '1': 'GetResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResponseDescriptor = $convert.base64Decode(
    'CgtHZXRSZXNwb25zZRIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use udpateResponseDescriptor instead')
const UdpateResponse$json = {
  '1': 'UdpateResponse',
  '2': [
    {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.task.Task', '10': 'task'},
  ],
};

/// Descriptor for `UdpateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List udpateResponseDescriptor = $convert.base64Decode(
    'Cg5VZHBhdGVSZXNwb25zZRIeCgR0YXNrGAEgASgLMgoudGFzay5UYXNrUgR0YXNr');

@$core.Deprecated('Use deleteResponseDescriptor instead')
const DeleteResponse$json = {
  '1': 'DeleteResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResponseDescriptor = $convert.base64Decode(
    'Cg5EZWxldGVSZXNwb25zZRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');

const $core.Map<$core.String, $core.dynamic> TaskGrpcServiceBase$json = {
  '1': 'TaskGrpcService',
  '2': [
    {'1': 'AddTask', '2': '.task.TaskRequest', '3': '.task.AddResponse'},
    {'1': 'GetTask', '2': '.task.TaskRequest', '3': '.task.GetResponse'},
    {'1': 'UpdateTask', '2': '.task.TaskRequest', '3': '.task.UdpateResponse'},
    {'1': 'DeleteTask', '2': '.task.TaskRequest', '3': '.task.DeleteResponse'},
  ],
};

@$core.Deprecated('Use taskGrpcServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TaskGrpcServiceBase$messageJson = {
  '.task.TaskRequest': TaskRequest$json,
  '.task.Task': Task$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.task.TaskUser': TaskUser$json,
  '.task.User': User$json,
  '.task.Permissions': Permissions$json,
  '.task.Comment': Comment$json,
  '.task.Project': Project$json,
  '.task.AddResponse': AddResponse$json,
  '.task.GetResponse': GetResponse$json,
  '.task.UdpateResponse': UdpateResponse$json,
  '.task.DeleteResponse': DeleteResponse$json,
};

/// Descriptor for `TaskGrpcService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List taskGrpcServiceDescriptor = $convert.base64Decode(
    'Cg9UYXNrR3JwY1NlcnZpY2USLwoHQWRkVGFzaxIRLnRhc2suVGFza1JlcXVlc3QaES50YXNrLk'
    'FkZFJlc3BvbnNlEi8KB0dldFRhc2sSES50YXNrLlRhc2tSZXF1ZXN0GhEudGFzay5HZXRSZXNw'
    'b25zZRI1CgpVcGRhdGVUYXNrEhEudGFzay5UYXNrUmVxdWVzdBoULnRhc2suVWRwYXRlUmVzcG'
    '9uc2USNQoKRGVsZXRlVGFzaxIRLnRhc2suVGFza1JlcXVlc3QaFC50YXNrLkRlbGV0ZVJlc3Bv'
    'bnNl');

