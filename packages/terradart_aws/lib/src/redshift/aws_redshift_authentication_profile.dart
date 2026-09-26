// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_authentication_profile`.
const Set<String> _awsRedshiftAuthenticationProfileSensitive = <String>{};

/// Factory wrapper for `aws_redshift_authentication_profile`.
final class AwsRedshiftAuthenticationProfile extends Resource {
  static const String tfType = 'aws_redshift_authentication_profile';

  AwsRedshiftAuthenticationProfile({
    required super.localName,
    required TfArg<String> authenticationProfileContent,
    required TfArg<String> authenticationProfileName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_profile_content': authenticationProfileContent,
           'authentication_profile_name': authenticationProfileName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftAuthenticationProfileSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
