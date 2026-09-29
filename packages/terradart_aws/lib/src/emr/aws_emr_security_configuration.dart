// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_security_configuration`.
const Set<String> _awsEmrSecurityConfigurationSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_emr_security_configuration`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class EmrSecurityConfigurationNameOrNamePrefix {
  const EmrSecurityConfigurationNameOrNamePrefix();

  /// Sets `name`.
  const factory EmrSecurityConfigurationNameOrNamePrefix.name(
    TfArg<String> name,
  ) = EmrSecurityConfigurationNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory EmrSecurityConfigurationNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = EmrSecurityConfigurationNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EmrSecurityConfigurationNameOrNamePrefix.name] choice: sets `name`.
final class EmrSecurityConfigurationNameOrNamePrefixName
    extends EmrSecurityConfigurationNameOrNamePrefix {
  const EmrSecurityConfigurationNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [EmrSecurityConfigurationNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class EmrSecurityConfigurationNameOrNamePrefixNamePrefix
    extends EmrSecurityConfigurationNameOrNamePrefix {
  const EmrSecurityConfigurationNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_emr_security_configuration`.
final class AwsEmrSecurityConfiguration extends Resource {
  static const String tfType = 'aws_emr_security_configuration';

  AwsEmrSecurityConfiguration({
    required super.localName,
    required TfArg<String> configuration,
    EmrSecurityConfigurationNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration': configuration,
           ...?nameOrNamePrefix?.argMap,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrSecurityConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrSecurityConfiguration>`.
  RefTo<AwsEmrSecurityConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');
}
