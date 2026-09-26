// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_option_group`.
const Set<String> _awsDbOptionGroupSensitive = <String>{};

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
    TfArg<String>? name,
    TfArg<String>? namePrefix,
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
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
