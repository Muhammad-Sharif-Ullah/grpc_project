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
    {'1': 'IDLE', '2': 0},
    {'1': 'DOING', '2': 1},
    {'1': 'DONE', '2': 2},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSCAoESURMRRAAEgkKBURPSU5HEAESCAoERE9ORRAC');

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
    {'1': 'creat_user', '3': 10, '4': 1, '5': 11, '6': '.task.TaskUser', '10': 'creatUser'},
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
    'YnVmLlRpbWVzdGFtcFIMbGFzdFVwZGF0ZUF0Ei0KCmNyZWF0X3VzZXIYCiABKAsyDi50YXNrLl'
    'Rhc2tVc2VyUgljcmVhdFVzZXISMQoOYXNzaWduZWRfdXNlcnMYCyADKAsyCi50YXNrLlRhc2tS'
    'DWFzc2lnbmVkVXNlcnMSNgoRbGFzdF91cGRhdGVkX3VzZXIYDCABKAsyCi50YXNrLlVzZXJSD2'
    'xhc3RVcGRhdGVkVXNlchIpCghjb21tZW50cxgNIAMoCzINLnRhc2suQ29tbWVudFIIY29tbWVu'
    'dHMSJwoHcHJvamVjdBgOIAEoCzINLnRhc2suUHJvamVjdFIHcHJvamVjdA==');

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
    {'1': 'user', '3': 5, '4': 1, '5': 11, '6': '.task.User', '10': 'user'},
  ],
};

/// Descriptor for `Comment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDescriptor = $convert.base64Decode(
    'CgdDb21tZW50Eg4KAmlkGAEgASgFUgJpZBISCgR0ZXh0GAIgASgJUgR0ZXh0EjcKCWNyZWF0ZV'
    '9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGNyZWF0ZUF0EjcKCXVwZGF0'
    'ZV9hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHVwZGF0ZUF0Eh4KBHVzZX'
    'IYBSABKAsyCi50YXNrLlVzZXJSBHVzZXI=');

@$core.Deprecated('Use projectDescriptor instead')
const Project$json = {
  '1': 'Project',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'create_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createAt'},
    {'1': 'update_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateAt'},
    {'1': 'create_user', '3': 6, '4': 1, '5': 11, '6': '.task.User', '10': 'createUser'},
    {'1': 'tasks', '3': 7, '4': 3, '5': 5, '10': 'tasks'},
  ],
};

/// Descriptor for `Project`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectDescriptor = $convert.base64Decode(
    'CgdQcm9qZWN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaX'
    'B0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhI3CgljcmVhdGVfYXQYBCABKAsyGi5nb29nbGUucHJv'
    'dG9idWYuVGltZXN0YW1wUghjcmVhdGVBdBI3Cgl1cGRhdGVfYXQYBSABKAsyGi5nb29nbGUucH'
    'JvdG9idWYuVGltZXN0YW1wUgh1cGRhdGVBdBIrCgtjcmVhdGVfdXNlchgGIAEoCzIKLnRhc2su'
    'VXNlclIKY3JlYXRlVXNlchIUCgV0YXNrcxgHIAMoBVIFdGFza3M=');

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

@$core.Deprecated('Use taskListResponseDescriptor instead')
const TaskListResponse$json = {
  '1': 'TaskListResponse',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.task.Task', '10': 'tasks'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.task.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `TaskListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskListResponseDescriptor = $convert.base64Decode(
    'ChBUYXNrTGlzdFJlc3BvbnNlEiAKBXRhc2tzGAEgAygLMgoudGFzay5UYXNrUgV0YXNrcxIwCg'
    'pwYWdpbmF0aW9uGAIgASgLMhAudGFzay5QYWdpbmF0aW9uUgpwYWdpbmF0aW9u');

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse$json = {
  '1': 'GetTaskResponse',
  '2': [
    {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.task.Task', '10': 'task'},
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUYXNrUmVzcG9uc2USHgoEdGFzaxgBIAEoCzIKLnRhc2suVGFza1IEdGFzaw==');

@$core.Deprecated('Use taskFilterDescriptor instead')
const TaskFilter$json = {
  '1': 'TaskFilter',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '9': 1, '10': 'done', '17': true},
    {'1': 'priority', '3': 4, '4': 1, '5': 14, '6': '.task.Priority', '9': 2, '10': 'priority', '17': true},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.task.Status', '9': 3, '10': 'status', '17': true},
    {'1': 'assigned_user_id', '3': 8, '4': 1, '5': 5, '9': 4, '10': 'assignedUserId', '17': true},
    {'1': 'last_updated_user_id', '3': 9, '4': 1, '5': 5, '9': 5, '10': 'lastUpdatedUserId', '17': true},
    {'1': 'comment_user_id', '3': 10, '4': 1, '5': 5, '9': 6, '10': 'commentUserId', '17': true},
    {'1': 'comment_text', '3': 11, '4': 1, '5': 9, '9': 7, '10': 'commentText', '17': true},
    {'1': 'create_at', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 8, '10': 'createAt', '17': true},
    {'1': 'update_at', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 9, '10': 'updateAt', '17': true},
    {'1': 'last_update_at', '3': 14, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 10, '10': 'lastUpdateAt', '17': true},
  ],
  '8': [
    {'1': '_title'},
    {'1': '_done'},
    {'1': '_priority'},
    {'1': '_status'},
    {'1': '_assigned_user_id'},
    {'1': '_last_updated_user_id'},
    {'1': '_comment_user_id'},
    {'1': '_comment_text'},
    {'1': '_create_at'},
    {'1': '_update_at'},
    {'1': '_last_update_at'},
  ],
};

/// Descriptor for `TaskFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskFilterDescriptor = $convert.base64Decode(
    'CgpUYXNrRmlsdGVyEhkKBXRpdGxlGAEgASgJSABSBXRpdGxliAEBEhcKBGRvbmUYAyABKAhIAV'
    'IEZG9uZYgBARIvCghwcmlvcml0eRgEIAEoDjIOLnRhc2suUHJpb3JpdHlIAlIIcHJpb3JpdHmI'
    'AQESKQoGc3RhdHVzGAUgASgOMgwudGFzay5TdGF0dXNIA1IGc3RhdHVziAEBEi0KEGFzc2lnbm'
    'VkX3VzZXJfaWQYCCABKAVIBFIOYXNzaWduZWRVc2VySWSIAQESNAoUbGFzdF91cGRhdGVkX3Vz'
    'ZXJfaWQYCSABKAVIBVIRbGFzdFVwZGF0ZWRVc2VySWSIAQESKwoPY29tbWVudF91c2VyX2lkGA'
    'ogASgFSAZSDWNvbW1lbnRVc2VySWSIAQESJgoMY29tbWVudF90ZXh0GAsgASgJSAdSC2NvbW1l'
    'bnRUZXh0iAEBEjwKCWNyZWF0ZV9hdBgMIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbX'
    'BICFIIY3JlYXRlQXSIAQESPAoJdXBkYXRlX2F0GA0gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRp'
    'bWVzdGFtcEgJUgh1cGRhdGVBdIgBARJFCg5sYXN0X3VwZGF0ZV9hdBgOIAEoCzIaLmdvb2dsZS'
    '5wcm90b2J1Zi5UaW1lc3RhbXBIClIMbGFzdFVwZGF0ZUF0iAEBQggKBl90aXRsZUIHCgVfZG9u'
    'ZUILCglfcHJpb3JpdHlCCQoHX3N0YXR1c0ITChFfYXNzaWduZWRfdXNlcl9pZEIXChVfbGFzdF'
    '91cGRhdGVkX3VzZXJfaWRCEgoQX2NvbW1lbnRfdXNlcl9pZEIPCg1fY29tbWVudF90ZXh0QgwK'
    'Cl9jcmVhdGVfYXRCDAoKX3VwZGF0ZV9hdEIRCg9fbGFzdF91cGRhdGVfYXQ=');

@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = {
  '1': 'CreateTaskRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'create_user_id', '3': 3, '4': 1, '5': 5, '10': 'createUserId'},
    {'1': 'priority', '3': 4, '4': 1, '5': 14, '6': '.task.Priority', '10': 'priority'},
    {'1': 'project_id', '3': 5, '4': 1, '5': 5, '10': 'projectId'},
    {'1': 'assigned_user_id', '3': 6, '4': 3, '5': 5, '10': 'assignedUserId'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUYXNrUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSJQoLZGVzY3JpcHRpb2'
    '4YAiABKAlIAFILZGVzY3JpcHRpb26IAQESJAoOY3JlYXRlX3VzZXJfaWQYAyABKAVSDGNyZWF0'
    'ZVVzZXJJZBIqCghwcmlvcml0eRgEIAEoDjIOLnRhc2suUHJpb3JpdHlSCHByaW9yaXR5Eh0KCn'
    'Byb2plY3RfaWQYBSABKAVSCXByb2plY3RJZBIoChBhc3NpZ25lZF91c2VyX2lkGAYgAygFUg5h'
    'c3NpZ25lZFVzZXJJZEIOCgxfZGVzY3JpcHRpb24=');

@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = {
  '1': 'UpdateTaskRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '9': 2, '10': 'done', '17': true},
    {'1': 'priority', '3': 4, '4': 1, '5': 14, '6': '.task.Priority', '9': 3, '10': 'priority', '17': true},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.task.Status', '9': 4, '10': 'status', '17': true},
    {'1': 'updated_assigned_user_id', '3': 6, '4': 3, '5': 5, '10': 'updatedAssignedUserId'},
    {'1': 'last_updated_user_id', '3': 7, '4': 1, '5': 5, '10': 'lastUpdatedUserId'},
    {'1': 'id', '3': 8, '4': 1, '5': 5, '10': 'id'},
    {'1': 'project_id', '3': 9, '4': 1, '5': 5, '9': 5, '10': 'projectId', '17': true},
  ],
  '8': [
    {'1': '_title'},
    {'1': '_description'},
    {'1': '_done'},
    {'1': '_priority'},
    {'1': '_status'},
    {'1': '_project_id'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIZCgV0aXRsZRgBIAEoCUgAUgV0aXRsZYgBARIlCgtkZXNjcm'
    'lwdGlvbhgCIAEoCUgBUgtkZXNjcmlwdGlvbogBARIXCgRkb25lGAMgASgISAJSBGRvbmWIAQES'
    'LwoIcHJpb3JpdHkYBCABKA4yDi50YXNrLlByaW9yaXR5SANSCHByaW9yaXR5iAEBEikKBnN0YX'
    'R1cxgFIAEoDjIMLnRhc2suU3RhdHVzSARSBnN0YXR1c4gBARI3Chh1cGRhdGVkX2Fzc2lnbmVk'
    'X3VzZXJfaWQYBiADKAVSFXVwZGF0ZWRBc3NpZ25lZFVzZXJJZBIvChRsYXN0X3VwZGF0ZWRfdX'
    'Nlcl9pZBgHIAEoBVIRbGFzdFVwZGF0ZWRVc2VySWQSDgoCaWQYCCABKAVSAmlkEiIKCnByb2pl'
    'Y3RfaWQYCSABKAVIBVIJcHJvamVjdElkiAEBQggKBl90aXRsZUIOCgxfZGVzY3JpcHRpb25CBw'
    'oFX2RvbmVCCwoJX3ByaW9yaXR5QgkKB19zdGF0dXNCDQoLX3Byb2plY3RfaWQ=');

@$core.Deprecated('Use addOrUpdateCommentRequestDescriptor instead')
const AddOrUpdateCommentRequest$json = {
  '1': 'AddOrUpdateCommentRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 5, '10': 'taskId'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'project_id', '3': 4, '4': 1, '5': 5, '10': 'projectId'},
    {'1': 'is_update', '3': 5, '4': 1, '5': 8, '10': 'isUpdate'},
  ],
};

/// Descriptor for `AddOrUpdateCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOrUpdateCommentRequestDescriptor = $convert.base64Decode(
    'ChlBZGRPclVwZGF0ZUNvbW1lbnRSZXF1ZXN0EhcKB3Rhc2tfaWQYASABKAVSBnRhc2tJZBISCg'
    'R0ZXh0GAIgASgJUgR0ZXh0EhcKB3VzZXJfaWQYAyABKAVSBnVzZXJJZBIdCgpwcm9qZWN0X2lk'
    'GAQgASgFUglwcm9qZWN0SWQSGwoJaXNfdXBkYXRlGAUgASgIUghpc1VwZGF0ZQ==');

@$core.Deprecated('Use addOrRemoveUserToTaskRequestDescriptor instead')
const AddOrRemoveUserToTaskRequest$json = {
  '1': 'AddOrRemoveUserToTaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 5, '10': 'taskId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'project_id', '3': 3, '4': 1, '5': 5, '10': 'projectId'},
    {'1': 'is_remove', '3': 4, '4': 1, '5': 8, '10': 'isRemove'},
  ],
};

/// Descriptor for `AddOrRemoveUserToTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOrRemoveUserToTaskRequestDescriptor = $convert.base64Decode(
    'ChxBZGRPclJlbW92ZVVzZXJUb1Rhc2tSZXF1ZXN0EhcKB3Rhc2tfaWQYASABKAVSBnRhc2tJZB'
    'IXCgd1c2VyX2lkGAIgASgFUgZ1c2VySWQSHQoKcHJvamVjdF9pZBgDIAEoBVIJcHJvamVjdElk'
    'EhsKCWlzX3JlbW92ZRgEIAEoCFIIaXNSZW1vdmU=');

@$core.Deprecated('Use deleteTaskRequestDescriptor instead')
const DeleteTaskRequest$json = {
  '1': 'DeleteTaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 5, '10': 'taskId'},
    {'1': 'project_id', '3': 2, '4': 1, '5': 5, '10': 'projectId'},
  ],
};

/// Descriptor for `DeleteTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVUYXNrUmVxdWVzdBIXCgd0YXNrX2lkGAEgASgFUgZ0YXNrSWQSHQoKcHJvamVjdF'
    '9pZBgCIAEoBVIJcHJvamVjdElk');

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

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

@$core.Deprecated('Use createProjectRequestDescriptor instead')
const CreateProjectRequest$json = {
  '1': 'CreateProjectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `CreateProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProjectRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVQcm9qZWN0UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbm'
    'FtZRIlCgtkZXNjcmlwdGlvbhgDIAEoCUgAUgtkZXNjcmlwdGlvbogBAUIOCgxfZGVzY3JpcHRp'
    'b24=');

@$core.Deprecated('Use updateProjectRequestDescriptor instead')
const UpdateProjectRequest$json = {
  '1': 'UpdateProjectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
  ],
};

/// Descriptor for `UpdateProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProjectRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQcm9qZWN0UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSFwoEbmFtZRgCIAEoCUgAUg'
    'RuYW1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBQgcKBV9uYW1l'
    'Qg4KDF9kZXNjcmlwdGlvbg==');

@$core.Deprecated('Use deleteProjectRequestDescriptor instead')
const DeleteProjectRequest$json = {
  '1': 'DeleteProjectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteProjectRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVQcm9qZWN0UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use getProjectRequestDescriptor instead')
const GetProjectRequest$json = {
  '1': 'GetProjectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectRequestDescriptor = $convert.base64Decode(
    'ChFHZXRQcm9qZWN0UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use projectListResponseDescriptor instead')
const ProjectListResponse$json = {
  '1': 'ProjectListResponse',
  '2': [
    {'1': 'projects', '3': 1, '4': 1, '5': 11, '6': '.task.Project', '10': 'projects'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.task.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `ProjectListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectListResponseDescriptor = $convert.base64Decode(
    'ChNQcm9qZWN0TGlzdFJlc3BvbnNlEikKCHByb2plY3RzGAEgASgLMg0udGFzay5Qcm9qZWN0Ug'
    'hwcm9qZWN0cxIwCgpwYWdpbmF0aW9uGAIgASgLMhAudGFzay5QYWdpbmF0aW9uUgpwYWdpbmF0'
    'aW9u');

