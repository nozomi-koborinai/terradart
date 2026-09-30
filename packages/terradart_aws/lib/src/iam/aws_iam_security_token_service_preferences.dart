// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_security_token_service_preferences`.
const Set<String> _awsIamSecurityTokenServicePreferencesSensitive = <String>{};

/// Iam Security Token Service Preferences Global Endpoint Token enum for `global_endpoint_token_version`.
enum IamSecurityTokenServicePreferencesGlobalEndpointTokenVersion
    implements TerraformEnum {
  v1token('v1Token'),
  v2token('v2Token');

  const IamSecurityTokenServicePreferencesGlobalEndpointTokenVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_iam_security_token_service_preferences`.
final class AwsIamSecurityTokenServicePreferences extends Resource {
  static const String tfType = 'aws_iam_security_token_service_preferences';

  AwsIamSecurityTokenServicePreferences({
    required super.localName,
    required TfArg<IamSecurityTokenServicePreferencesGlobalEndpointTokenVersion>
    globalEndpointTokenVersion,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamSecurityTokenServicePreferences>`.
  RefTo<AwsIamSecurityTokenServicePreferences> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `global_endpoint_token_version` attribute.
  TfRef<String> get globalEndpointTokenVersionRef =>
      TfRef.attribute<String>(this, 'global_endpoint_token_version');
}
