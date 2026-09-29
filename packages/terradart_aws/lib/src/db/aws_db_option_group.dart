// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_option_group`.
const Set<String> _awsDbOptionGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_db_option_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class DbOptionGroupName {
  const DbOptionGroupName();

  /// Sets `name`.
  const factory DbOptionGroupName.name(TfArg<String> name) =
      DbOptionGroupNameName;

  /// Sets `name_prefix`.
  const factory DbOptionGroupName.namePrefix(TfArg<String> namePrefix) =
      DbOptionGroupNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DbOptionGroupName.name] choice: sets `name`.
final class DbOptionGroupNameName extends DbOptionGroupName {
  const DbOptionGroupNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [DbOptionGroupName.namePrefix] choice: sets `name_prefix`.
final class DbOptionGroupNameNamePrefix extends DbOptionGroupName {
  const DbOptionGroupNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `option` block of
/// `aws_db_option_group` (derived from provider schema).
@immutable
final class DbOptionGroupOption {
  const DbOptionGroupOption({
    this.dbSecurityGroupMemberships,
    required this.optionName,
    this.port,
    this.version,
    this.vpcSecurityGroupMemberships,
    this.optionSettings,
  });

  final TfArg<List<Object?>>? dbSecurityGroupMemberships;

  final TfArg<String> optionName;

  final TfArg<num>? port;

  final TfArg<String>? version;

  final TfArg<List<Object?>>? vpcSecurityGroupMemberships;

  final List<DbOptionGroupOptionOptionSettings>? optionSettings;

  Map<String, Object?> encode() => {
    if (dbSecurityGroupMemberships != null)
      'db_security_group_memberships': dbSecurityGroupMemberships!.toTfJson(),
    'option_name': optionName.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
    if (vpcSecurityGroupMemberships != null)
      'vpc_security_group_memberships': vpcSecurityGroupMemberships!.toTfJson(),
    if (optionSettings != null)
      'option_settings': [for (final e in optionSettings!) e.encode()],
  };
}

/// Typed helper for the `option.option_settings` block of
/// `aws_db_option_group` (derived from provider schema).
@immutable
final class DbOptionGroupOptionOptionSettings {
  const DbOptionGroupOptionOptionSettings({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_db_option_group`.
final class AwsDbOptionGroup extends Resource {
  static const String tfType = 'aws_db_option_group';

  AwsDbOptionGroup({
    required super.localName,
    required TfArg<String> engineName,
    required TfArg<String> majorEngineVersion,
    DbOptionGroupName? name,
    TfArg<String>? optionGroupDescription,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    List<DbOptionGroupOption>? option,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'engine_name': engineName,
           'major_engine_version': majorEngineVersion,
           ...?name?.argMap,
           if (optionGroupDescription != null)
             'option_group_description': optionGroupDescription,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (tags != null) 'tags': tags,
           if (option != null)
             'option': TfArg.literal([for (final e in option) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbOptionGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbOptionGroup>`.
  RefTo<AwsDbOptionGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
