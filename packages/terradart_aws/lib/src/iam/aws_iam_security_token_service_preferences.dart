// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_security_token_service_preferences`.
const Set<String> _awsIamSecurityTokenServicePreferencesSensitive = <String>{};

/// Factory wrapper for `aws_iam_security_token_service_preferences`.
final class AwsIamSecurityTokenServicePreferences extends Resource {
  static const String tfType = 'aws_iam_security_token_service_preferences';

  AwsIamSecurityTokenServicePreferences({
    required super.localName,
    required TfArg<String> globalEndpointTokenVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'global_endpoint_token_version': globalEndpointTokenVersion},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsIamSecurityTokenServicePreferencesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
