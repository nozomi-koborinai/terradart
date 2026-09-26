// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_configuration_profiles`.
const Set<String> _awsAppconfigConfigurationProfilesSensitive = <String>{};

/// Factory wrapper for `aws_appconfig_configuration_profiles`.
final class DataAwsAppconfigConfigurationProfiles extends Data {
  static const String tfType = 'aws_appconfig_configuration_profiles';

  DataAwsAppconfigConfigurationProfiles({
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
  Set<String> get sensitiveFields =>
      _awsAppconfigConfigurationProfilesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_profile_ids` attribute.
  TfRef<List<String>> get configurationProfileIds =>
      TfRef.attribute<List<String>>(this, 'configuration_profile_ids');
}
