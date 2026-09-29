// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_scheduler_schedule_group`.
const Set<String> _awsSchedulerScheduleGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_scheduler_schedule_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class SchedulerScheduleGroupName {
  const SchedulerScheduleGroupName();

  /// Sets `name`.
  const factory SchedulerScheduleGroupName.name(TfArg<String> name) =
      SchedulerScheduleGroupNameChoice;

  /// Sets `name_prefix`.
  const factory SchedulerScheduleGroupName.namePrefix(
    TfArg<String> namePrefix,
  ) = SchedulerScheduleGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SchedulerScheduleGroupName.name] choice: sets `name`.
final class SchedulerScheduleGroupNameChoice
    extends SchedulerScheduleGroupName {
  const SchedulerScheduleGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SchedulerScheduleGroupName.namePrefix] choice: sets `name_prefix`.
final class SchedulerScheduleGroupNamePrefix
    extends SchedulerScheduleGroupName {
  const SchedulerScheduleGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_scheduler_schedule_group`.
final class AwsSchedulerScheduleGroup extends Resource {
  static const String tfType = 'aws_scheduler_schedule_group';

  AwsSchedulerScheduleGroup({
    required super.localName,
    SchedulerScheduleGroupName? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {...?name?.argMap, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsSchedulerScheduleGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSchedulerScheduleGroup>`.
  RefTo<AwsSchedulerScheduleGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `last_modification_date` attribute.
  TfRef<String> get lastModificationDate =>
      TfRef.attribute<String>(this, 'last_modification_date');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
