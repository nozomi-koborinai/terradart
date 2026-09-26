// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_environment`.
const Set<String> _awsAppconfigEnvironmentSensitive = <String>{};

/// Factory wrapper for `aws_appconfig_environment`.
final class DataAwsAppconfigEnvironment extends Data {
  static const String tfType = 'aws_appconfig_environment';

  DataAwsAppconfigEnvironment({
    required super.localName,
    required TfArg<String> applicationId,
    required TfArg<String> environmentId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'environment_id': environmentId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigEnvironmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `monitor` attribute.
  TfRef<List<Map<String, Object?>>> get monitor =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'monitor');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
