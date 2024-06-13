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

import 'google/protobuf/timestamp.pb.dart' as $1;
import 'task.pbenum.dart';

export 'task.pbenum.dart';

class Task extends $pb.GeneratedMessage {
  factory Task({
    $core.int? id,
    $core.String? title,
    $core.String? description,
    $core.bool? done,
    Priority? priority,
    Status? status,
    $1.Timestamp? createAt,
    $1.Timestamp? updateAt,
    $1.Timestamp? lastUpdateAt,
    TaskUser? user,
    $core.Iterable<Task>? assignedUsers,
    User? lastUpdatedUser,
    $core.Iterable<Comment>? comments,
    Project? project,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (done != null) {
      $result.done = done;
    }
    if (priority != null) {
      $result.priority = priority;
    }
    if (status != null) {
      $result.status = status;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    if (updateAt != null) {
      $result.updateAt = updateAt;
    }
    if (lastUpdateAt != null) {
      $result.lastUpdateAt = lastUpdateAt;
    }
    if (user != null) {
      $result.user = user;
    }
    if (assignedUsers != null) {
      $result.assignedUsers.addAll(assignedUsers);
    }
    if (lastUpdatedUser != null) {
      $result.lastUpdatedUser = lastUpdatedUser;
    }
    if (comments != null) {
      $result.comments.addAll(comments);
    }
    if (project != null) {
      $result.project = project;
    }
    return $result;
  }
  Task._() : super();
  factory Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'done')
    ..e<Priority>(5, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: Priority.LOW, valueOf: Priority.valueOf, enumValues: Priority.values)
    ..e<Status>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.TODO, valueOf: Status.valueOf, enumValues: Status.values)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'createAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(8, _omitFieldNames ? '' : 'updateAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(9, _omitFieldNames ? '' : 'lastUpdateAt', subBuilder: $1.Timestamp.create)
    ..aOM<TaskUser>(10, _omitFieldNames ? '' : 'user', subBuilder: TaskUser.create)
    ..pc<Task>(11, _omitFieldNames ? '' : 'assignedUsers', $pb.PbFieldType.PM, subBuilder: Task.create)
    ..aOM<User>(12, _omitFieldNames ? '' : 'lastUpdatedUser', subBuilder: User.create)
    ..pc<Comment>(13, _omitFieldNames ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: Comment.create)
    ..aOM<Project>(14, _omitFieldNames ? '' : 'project', subBuilder: Project.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task clone() => Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task copyWith(void Function(Task) updates) => super.copyWith((message) => updates(message as Task)) as Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task create() => Task._();
  Task createEmptyInstance() => create();
  static $pb.PbList<Task> createRepeated() => $pb.PbList<Task>();
  @$core.pragma('dart2js:noInline')
  static Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task>(create);
  static Task? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get done => $_getBF(3);
  @$pb.TagNumber(4)
  set done($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDone() => $_has(3);
  @$pb.TagNumber(4)
  void clearDone() => clearField(4);

  /// The priority of the task.
  @$pb.TagNumber(5)
  Priority get priority => $_getN(4);
  @$pb.TagNumber(5)
  set priority(Priority v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearPriority() => clearField(5);

  @$pb.TagNumber(6)
  Status get status => $_getN(5);
  @$pb.TagNumber(6)
  set status(Status v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  $1.Timestamp get createAt => $_getN(6);
  @$pb.TagNumber(7)
  set createAt($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreateAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreateAt() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureCreateAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.Timestamp get updateAt => $_getN(7);
  @$pb.TagNumber(8)
  set updateAt($1.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdateAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdateAt() => clearField(8);
  @$pb.TagNumber(8)
  $1.Timestamp ensureUpdateAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $1.Timestamp get lastUpdateAt => $_getN(8);
  @$pb.TagNumber(9)
  set lastUpdateAt($1.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastUpdateAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastUpdateAt() => clearField(9);
  @$pb.TagNumber(9)
  $1.Timestamp ensureLastUpdateAt() => $_ensure(8);

  /// The user who created the task.
  @$pb.TagNumber(10)
  TaskUser get user => $_getN(9);
  @$pb.TagNumber(10)
  set user(TaskUser v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUser() => $_has(9);
  @$pb.TagNumber(10)
  void clearUser() => clearField(10);
  @$pb.TagNumber(10)
  TaskUser ensureUser() => $_ensure(9);

  /// / list of assigned user to the task.
  @$pb.TagNumber(11)
  $core.List<Task> get assignedUsers => $_getList(10);

  /// / last user who updated the task.
  @$pb.TagNumber(12)
  User get lastUpdatedUser => $_getN(11);
  @$pb.TagNumber(12)
  set lastUpdatedUser(User v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasLastUpdatedUser() => $_has(11);
  @$pb.TagNumber(12)
  void clearLastUpdatedUser() => clearField(12);
  @$pb.TagNumber(12)
  User ensureLastUpdatedUser() => $_ensure(11);

  /// list of comments on the task.
  @$pb.TagNumber(13)
  $core.List<Comment> get comments => $_getList(12);

  @$pb.TagNumber(14)
  Project get project => $_getN(13);
  @$pb.TagNumber(14)
  set project(Project v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasProject() => $_has(13);
  @$pb.TagNumber(14)
  void clearProject() => clearField(14);
  @$pb.TagNumber(14)
  Project ensureProject() => $_ensure(13);
}

/// The user who created the task.
class User extends $pb.GeneratedMessage {
  factory User({
    $core.int? id,
    $core.String? name,
    $core.String? email,
    $core.String? password,
    $core.String? avatar,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'password')
    ..aOS(5, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);
}

/// / Permissions for the task.
class Permissions extends $pb.GeneratedMessage {
  factory Permissions({
    $core.bool? canEdit,
    $core.bool? canDelete,
    $core.bool? canAssign,
    $core.bool? canChangeStatus,
    $core.bool? canChangePriority,
  }) {
    final $result = create();
    if (canEdit != null) {
      $result.canEdit = canEdit;
    }
    if (canDelete != null) {
      $result.canDelete = canDelete;
    }
    if (canAssign != null) {
      $result.canAssign = canAssign;
    }
    if (canChangeStatus != null) {
      $result.canChangeStatus = canChangeStatus;
    }
    if (canChangePriority != null) {
      $result.canChangePriority = canChangePriority;
    }
    return $result;
  }
  Permissions._() : super();
  factory Permissions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Permissions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Permissions', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'canEdit')
    ..aOB(2, _omitFieldNames ? '' : 'canDelete')
    ..aOB(3, _omitFieldNames ? '' : 'canAssign')
    ..aOB(4, _omitFieldNames ? '' : 'canChangeStatus')
    ..aOB(5, _omitFieldNames ? '' : 'canChangePriority')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Permissions clone() => Permissions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Permissions copyWith(void Function(Permissions) updates) => super.copyWith((message) => updates(message as Permissions)) as Permissions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Permissions create() => Permissions._();
  Permissions createEmptyInstance() => create();
  static $pb.PbList<Permissions> createRepeated() => $pb.PbList<Permissions>();
  @$core.pragma('dart2js:noInline')
  static Permissions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Permissions>(create);
  static Permissions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get canEdit => $_getBF(0);
  @$pb.TagNumber(1)
  set canEdit($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCanEdit() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanEdit() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get canDelete => $_getBF(1);
  @$pb.TagNumber(2)
  set canDelete($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCanDelete() => $_has(1);
  @$pb.TagNumber(2)
  void clearCanDelete() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get canAssign => $_getBF(2);
  @$pb.TagNumber(3)
  set canAssign($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCanAssign() => $_has(2);
  @$pb.TagNumber(3)
  void clearCanAssign() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get canChangeStatus => $_getBF(3);
  @$pb.TagNumber(4)
  set canChangeStatus($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCanChangeStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearCanChangeStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get canChangePriority => $_getBF(4);
  @$pb.TagNumber(5)
  set canChangePriority($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCanChangePriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearCanChangePriority() => clearField(5);
}

/// /TaskUser is a user with permissions.
class TaskUser extends $pb.GeneratedMessage {
  factory TaskUser({
    User? user,
    $core.Iterable<Permissions>? permissions,
  }) {
    final $result = create();
    if (user != null) {
      $result.user = user;
    }
    if (permissions != null) {
      $result.permissions.addAll(permissions);
    }
    return $result;
  }
  TaskUser._() : super();
  factory TaskUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..aOM<User>(1, _omitFieldNames ? '' : 'user', subBuilder: User.create)
    ..pc<Permissions>(2, _omitFieldNames ? '' : 'permissions', $pb.PbFieldType.PM, subBuilder: Permissions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskUser clone() => TaskUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskUser copyWith(void Function(TaskUser) updates) => super.copyWith((message) => updates(message as TaskUser)) as TaskUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskUser create() => TaskUser._();
  TaskUser createEmptyInstance() => create();
  static $pb.PbList<TaskUser> createRepeated() => $pb.PbList<TaskUser>();
  @$core.pragma('dart2js:noInline')
  static TaskUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskUser>(create);
  static TaskUser? _defaultInstance;

  @$pb.TagNumber(1)
  User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Permissions> get permissions => $_getList(1);
}

/// / Comments on the task.
class Comment extends $pb.GeneratedMessage {
  factory Comment({
    $core.int? id,
    $core.String? text,
    $1.Timestamp? createAt,
    $1.Timestamp? updateAt,
    TaskUser? user,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (text != null) {
      $result.text = text;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    if (updateAt != null) {
      $result.updateAt = updateAt;
    }
    if (user != null) {
      $result.user = user;
    }
    return $result;
  }
  Comment._() : super();
  factory Comment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Comment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Comment', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'createAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updateAt', subBuilder: $1.Timestamp.create)
    ..aOM<TaskUser>(5, _omitFieldNames ? '' : 'user', subBuilder: TaskUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Comment clone() => Comment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Comment copyWith(void Function(Comment) updates) => super.copyWith((message) => updates(message as Comment)) as Comment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Comment create() => Comment._();
  Comment createEmptyInstance() => create();
  static $pb.PbList<Comment> createRepeated() => $pb.PbList<Comment>();
  @$core.pragma('dart2js:noInline')
  static Comment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Comment>(create);
  static Comment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $1.Timestamp get createAt => $_getN(2);
  @$pb.TagNumber(3)
  set createAt($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateAt() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreateAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get updateAt => $_getN(3);
  @$pb.TagNumber(4)
  set updateAt($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateAt() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureUpdateAt() => $_ensure(3);

  @$pb.TagNumber(5)
  TaskUser get user => $_getN(4);
  @$pb.TagNumber(5)
  set user(TaskUser v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUser() => $_has(4);
  @$pb.TagNumber(5)
  void clearUser() => clearField(5);
  @$pb.TagNumber(5)
  TaskUser ensureUser() => $_ensure(4);
}

/// / Project of the task.
class Project extends $pb.GeneratedMessage {
  factory Project({
    $core.int? id,
    $core.String? name,
    $core.String? description,
    $1.Timestamp? createAt,
    $1.Timestamp? updateAt,
    $core.Iterable<TaskUser>? user,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    if (updateAt != null) {
      $result.updateAt = updateAt;
    }
    if (user != null) {
      $result.user.addAll(user);
    }
    return $result;
  }
  Project._() : super();
  factory Project.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Project.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Project', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'createAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'updateAt', subBuilder: $1.Timestamp.create)
    ..pc<TaskUser>(6, _omitFieldNames ? '' : 'user', $pb.PbFieldType.PM, subBuilder: TaskUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Project clone() => Project()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Project copyWith(void Function(Project) updates) => super.copyWith((message) => updates(message as Project)) as Project;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Project create() => Project._();
  Project createEmptyInstance() => create();
  static $pb.PbList<Project> createRepeated() => $pb.PbList<Project>();
  @$core.pragma('dart2js:noInline')
  static Project getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Project>(create);
  static Project? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get createAt => $_getN(3);
  @$pb.TagNumber(4)
  set createAt($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreateAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreateAt() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreateAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Timestamp get updateAt => $_getN(4);
  @$pb.TagNumber(5)
  set updateAt($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdateAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdateAt() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureUpdateAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<TaskUser> get user => $_getList(5);
}

/// / Pagination for the tasks.
class Pagination extends $pb.GeneratedMessage {
  factory Pagination({
    $core.int? page,
    $core.int? limit,
    $core.int? total,
    $core.int? pages,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (total != null) {
      $result.total = total;
    }
    if (pages != null) {
      $result.pages = pages;
    }
    return $result;
  }
  Pagination._() : super();
  factory Pagination.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pagination.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Pagination', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'total', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'pages', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pagination clone() => Pagination()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pagination copyWith(void Function(Pagination) updates) => super.copyWith((message) => updates(message as Pagination)) as Pagination;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pagination create() => Pagination._();
  Pagination createEmptyInstance() => create();
  static $pb.PbList<Pagination> createRepeated() => $pb.PbList<Pagination>();
  @$core.pragma('dart2js:noInline')
  static Pagination getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pagination>(create);
  static Pagination? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get total => $_getIZ(2);
  @$pb.TagNumber(3)
  set total($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pages => $_getIZ(3);
  @$pb.TagNumber(4)
  set pages($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPages() => $_has(3);
  @$pb.TagNumber(4)
  void clearPages() => clearField(4);
}

/// / List of tasks.
class TaskList extends $pb.GeneratedMessage {
  factory TaskList({
    $core.Iterable<Task>? tasks,
    Pagination? pagination,
  }) {
    final $result = create();
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  TaskList._() : super();
  factory TaskList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskList', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..pc<Task>(1, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: Task.create)
    ..aOM<Pagination>(2, _omitFieldNames ? '' : 'pagination', subBuilder: Pagination.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskList clone() => TaskList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskList copyWith(void Function(TaskList) updates) => super.copyWith((message) => updates(message as TaskList)) as TaskList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskList create() => TaskList._();
  TaskList createEmptyInstance() => create();
  static $pb.PbList<TaskList> createRepeated() => $pb.PbList<TaskList>();
  @$core.pragma('dart2js:noInline')
  static TaskList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskList>(create);
  static TaskList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Task> get tasks => $_getList(0);

  @$pb.TagNumber(2)
  Pagination get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination(Pagination v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  Pagination ensurePagination() => $_ensure(1);
}

/// / Filter for the tasks.
class TaskFilter extends $pb.GeneratedMessage {
  factory TaskFilter({
    $core.String? title,
    $core.bool? done,
    Priority? priority,
    Status? status,
    $core.int? assignedUserId,
    $core.int? lastUpdatedUserId,
    $core.int? commentUserId,
    $core.String? commentText,
    $1.Timestamp? createAt,
    $1.Timestamp? updateAt,
    $1.Timestamp? lastUpdateAt,
    $1.Timestamp? commentCreateAt,
    $1.Timestamp? commentUpdateAt,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (done != null) {
      $result.done = done;
    }
    if (priority != null) {
      $result.priority = priority;
    }
    if (status != null) {
      $result.status = status;
    }
    if (assignedUserId != null) {
      $result.assignedUserId = assignedUserId;
    }
    if (lastUpdatedUserId != null) {
      $result.lastUpdatedUserId = lastUpdatedUserId;
    }
    if (commentUserId != null) {
      $result.commentUserId = commentUserId;
    }
    if (commentText != null) {
      $result.commentText = commentText;
    }
    if (createAt != null) {
      $result.createAt = createAt;
    }
    if (updateAt != null) {
      $result.updateAt = updateAt;
    }
    if (lastUpdateAt != null) {
      $result.lastUpdateAt = lastUpdateAt;
    }
    if (commentCreateAt != null) {
      $result.commentCreateAt = commentCreateAt;
    }
    if (commentUpdateAt != null) {
      $result.commentUpdateAt = commentUpdateAt;
    }
    return $result;
  }
  TaskFilter._() : super();
  factory TaskFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..e<Priority>(4, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: Priority.LOW, valueOf: Priority.valueOf, enumValues: Priority.values)
    ..e<Status>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.TODO, valueOf: Status.valueOf, enumValues: Status.values)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'assignedUserId', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'lastUpdatedUserId', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'commentUserId', $pb.PbFieldType.O3)
    ..aOS(11, _omitFieldNames ? '' : 'commentText')
    ..aOM<$1.Timestamp>(12, _omitFieldNames ? '' : 'createAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(13, _omitFieldNames ? '' : 'updateAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(14, _omitFieldNames ? '' : 'lastUpdateAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(15, _omitFieldNames ? '' : 'commentCreateAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(16, _omitFieldNames ? '' : 'commentUpdateAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskFilter clone() => TaskFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskFilter copyWith(void Function(TaskFilter) updates) => super.copyWith((message) => updates(message as TaskFilter)) as TaskFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskFilter create() => TaskFilter._();
  TaskFilter createEmptyInstance() => create();
  static $pb.PbList<TaskFilter> createRepeated() => $pb.PbList<TaskFilter>();
  @$core.pragma('dart2js:noInline')
  static TaskFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskFilter>(create);
  static TaskFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(1);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(1);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);

  @$pb.TagNumber(4)
  Priority get priority => $_getN(2);
  @$pb.TagNumber(4)
  set priority(Priority v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPriority() => $_has(2);
  @$pb.TagNumber(4)
  void clearPriority() => clearField(4);

  @$pb.TagNumber(5)
  Status get status => $_getN(3);
  @$pb.TagNumber(5)
  set status(Status v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(8)
  $core.int get assignedUserId => $_getIZ(4);
  @$pb.TagNumber(8)
  set assignedUserId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(8)
  $core.bool hasAssignedUserId() => $_has(4);
  @$pb.TagNumber(8)
  void clearAssignedUserId() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get lastUpdatedUserId => $_getIZ(5);
  @$pb.TagNumber(9)
  set lastUpdatedUserId($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastUpdatedUserId() => $_has(5);
  @$pb.TagNumber(9)
  void clearLastUpdatedUserId() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get commentUserId => $_getIZ(6);
  @$pb.TagNumber(10)
  set commentUserId($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasCommentUserId() => $_has(6);
  @$pb.TagNumber(10)
  void clearCommentUserId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get commentText => $_getSZ(7);
  @$pb.TagNumber(11)
  set commentText($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasCommentText() => $_has(7);
  @$pb.TagNumber(11)
  void clearCommentText() => clearField(11);

  @$pb.TagNumber(12)
  $1.Timestamp get createAt => $_getN(8);
  @$pb.TagNumber(12)
  set createAt($1.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCreateAt() => $_has(8);
  @$pb.TagNumber(12)
  void clearCreateAt() => clearField(12);
  @$pb.TagNumber(12)
  $1.Timestamp ensureCreateAt() => $_ensure(8);

  @$pb.TagNumber(13)
  $1.Timestamp get updateAt => $_getN(9);
  @$pb.TagNumber(13)
  set updateAt($1.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdateAt() => $_has(9);
  @$pb.TagNumber(13)
  void clearUpdateAt() => clearField(13);
  @$pb.TagNumber(13)
  $1.Timestamp ensureUpdateAt() => $_ensure(9);

  @$pb.TagNumber(14)
  $1.Timestamp get lastUpdateAt => $_getN(10);
  @$pb.TagNumber(14)
  set lastUpdateAt($1.Timestamp v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasLastUpdateAt() => $_has(10);
  @$pb.TagNumber(14)
  void clearLastUpdateAt() => clearField(14);
  @$pb.TagNumber(14)
  $1.Timestamp ensureLastUpdateAt() => $_ensure(10);

  @$pb.TagNumber(15)
  $1.Timestamp get commentCreateAt => $_getN(11);
  @$pb.TagNumber(15)
  set commentCreateAt($1.Timestamp v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasCommentCreateAt() => $_has(11);
  @$pb.TagNumber(15)
  void clearCommentCreateAt() => clearField(15);
  @$pb.TagNumber(15)
  $1.Timestamp ensureCommentCreateAt() => $_ensure(11);

  @$pb.TagNumber(16)
  $1.Timestamp get commentUpdateAt => $_getN(12);
  @$pb.TagNumber(16)
  set commentUpdateAt($1.Timestamp v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasCommentUpdateAt() => $_has(12);
  @$pb.TagNumber(16)
  void clearCommentUpdateAt() => clearField(16);
  @$pb.TagNumber(16)
  $1.Timestamp ensureCommentUpdateAt() => $_ensure(12);
}

/// / Request to create a task.
class CreateTaskRequest extends $pb.GeneratedMessage {
  factory CreateTaskRequest({
    $core.String? title,
    $core.String? description,
    $core.bool? done,
    Priority? priority,
    $core.int? userId,
    $core.int? projectId,
    $core.Iterable<$core.int>? assignedUserId,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (done != null) {
      $result.done = done;
    }
    if (priority != null) {
      $result.priority = priority;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (assignedUserId != null) {
      $result.assignedUserId.addAll(assignedUserId);
    }
    return $result;
  }
  CreateTaskRequest._() : super();
  factory CreateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..e<Priority>(4, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: Priority.LOW, valueOf: Priority.valueOf, enumValues: Priority.values)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.O3)
    ..p<$core.int>(8, _omitFieldNames ? '' : 'assignedUserId', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskRequest clone() => CreateTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskRequest copyWith(void Function(CreateTaskRequest) updates) => super.copyWith((message) => updates(message as CreateTaskRequest)) as CreateTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest create() => CreateTaskRequest._();
  CreateTaskRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTaskRequest> createRepeated() => $pb.PbList<CreateTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskRequest>(create);
  static CreateTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);

  @$pb.TagNumber(4)
  Priority get priority => $_getN(3);
  @$pb.TagNumber(4)
  set priority(Priority v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPriority() => $_has(3);
  @$pb.TagNumber(4)
  void clearPriority() => clearField(4);

  @$pb.TagNumber(6)
  $core.int get userId => $_getIZ(4);
  @$pb.TagNumber(6)
  set userId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserId() => $_has(4);
  @$pb.TagNumber(6)
  void clearUserId() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get projectId => $_getIZ(5);
  @$pb.TagNumber(7)
  set projectId($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasProjectId() => $_has(5);
  @$pb.TagNumber(7)
  void clearProjectId() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get assignedUserId => $_getList(6);
}

/// / Request to update a task.
class UpdateTaskRequest extends $pb.GeneratedMessage {
  factory UpdateTaskRequest({
    $core.int? id,
    $core.String? title,
    $core.String? description,
    $core.bool? done,
    Priority? priority,
    Status? status,
    $core.Iterable<$core.int>? assignedUserId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (done != null) {
      $result.done = done;
    }
    if (priority != null) {
      $result.priority = priority;
    }
    if (status != null) {
      $result.status = status;
    }
    if (assignedUserId != null) {
      $result.assignedUserId.addAll(assignedUserId);
    }
    return $result;
  }
  UpdateTaskRequest._() : super();
  factory UpdateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'done')
    ..e<Priority>(5, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: Priority.LOW, valueOf: Priority.valueOf, enumValues: Priority.values)
    ..e<Status>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.TODO, valueOf: Status.valueOf, enumValues: Status.values)
    ..p<$core.int>(9, _omitFieldNames ? '' : 'assignedUserId', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskRequest clone() => UpdateTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskRequest copyWith(void Function(UpdateTaskRequest) updates) => super.copyWith((message) => updates(message as UpdateTaskRequest)) as UpdateTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskRequest create() => UpdateTaskRequest._();
  UpdateTaskRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskRequest> createRepeated() => $pb.PbList<UpdateTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskRequest>(create);
  static UpdateTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get done => $_getBF(3);
  @$pb.TagNumber(4)
  set done($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDone() => $_has(3);
  @$pb.TagNumber(4)
  void clearDone() => clearField(4);

  @$pb.TagNumber(5)
  Priority get priority => $_getN(4);
  @$pb.TagNumber(5)
  set priority(Priority v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearPriority() => clearField(5);

  @$pb.TagNumber(6)
  Status get status => $_getN(5);
  @$pb.TagNumber(6)
  set status(Status v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(9)
  $core.List<$core.int> get assignedUserId => $_getList(6);
}

/// / Request to delete a task.
class DeleteTaskRequest extends $pb.GeneratedMessage {
  factory DeleteTaskRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteTaskRequest._() : super();
  factory DeleteTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskRequest clone() => DeleteTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskRequest copyWith(void Function(DeleteTaskRequest) updates) => super.copyWith((message) => updates(message as DeleteTaskRequest)) as DeleteTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskRequest create() => DeleteTaskRequest._();
  DeleteTaskRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTaskRequest> createRepeated() => $pb.PbList<DeleteTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTaskRequest>(create);
  static DeleteTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

/// / Request to get a task.
class GetTaskRequest extends $pb.GeneratedMessage {
  factory GetTaskRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetTaskRequest._() : super();
  factory GetTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskRequest clone() => GetTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskRequest copyWith(void Function(GetTaskRequest) updates) => super.copyWith((message) => updates(message as GetTaskRequest)) as GetTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskRequest create() => GetTaskRequest._();
  GetTaskRequest createEmptyInstance() => create();
  static $pb.PbList<GetTaskRequest> createRepeated() => $pb.PbList<GetTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskRequest>(create);
  static GetTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

/// The request message containing the user's name.
class HelloRequest extends $pb.GeneratedMessage {
  factory HelloRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  HelloRequest._() : super();
  factory HelloRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HelloRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloRequest clone() => HelloRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloRequest copyWith(void Function(HelloRequest) updates) => super.copyWith((message) => updates(message as HelloRequest)) as HelloRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloRequest create() => HelloRequest._();
  HelloRequest createEmptyInstance() => create();
  static $pb.PbList<HelloRequest> createRepeated() => $pb.PbList<HelloRequest>();
  @$core.pragma('dart2js:noInline')
  static HelloRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloRequest>(create);
  static HelloRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// The response message containing the greetings
class HelloReply extends $pb.GeneratedMessage {
  factory HelloReply({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  HelloReply._() : super();
  factory HelloReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HelloReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'task'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloReply clone() => HelloReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloReply copyWith(void Function(HelloReply) updates) => super.copyWith((message) => updates(message as HelloReply)) as HelloReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloReply create() => HelloReply._();
  HelloReply createEmptyInstance() => create();
  static $pb.PbList<HelloReply> createRepeated() => $pb.PbList<HelloReply>();
  @$core.pragma('dart2js:noInline')
  static HelloReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloReply>(create);
  static HelloReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
