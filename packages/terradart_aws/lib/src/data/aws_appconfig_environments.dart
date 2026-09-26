// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_environments`.
const Set<String> _awsAppconfigEnvironmentsSensitive = <String>{};

/// Factory wrapper for `aws_appconfig_environments`.
final class DataAwsAppconfigEnvironments extends Data {
  static const String tfType = 'aws_appconfig_environments';

  DataAwsAppconfigEnvironments({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigEnvironmentsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `environment_ids` attribute.
  TfRef<List<String>> get environmentIds =>
      TfRef.attribute<List<String>>(this, 'environment_ids');
}
