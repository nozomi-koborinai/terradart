// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_security_configuration`.
const Set<String> _awsEmrSecurityConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_emr_security_configuration`.
final class AwsEmrSecurityConfiguration extends Resource {
  static const String tfType = 'aws_emr_security_configuration';

  AwsEmrSecurityConfiguration({
    required super.localName,
    required TfArg<String> configuration,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration': configuration,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrSecurityConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');
}
