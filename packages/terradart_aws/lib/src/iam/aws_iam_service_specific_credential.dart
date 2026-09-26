// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_service_specific_credential`.
const Set<String> _awsIamServiceSpecificCredentialSensitive = <String>{
  'service_credential_secret',
  'service_password',
};

/// Factory wrapper for `aws_iam_service_specific_credential`.
final class AwsIamServiceSpecificCredential extends Resource {
  static const String tfType = 'aws_iam_service_specific_credential';

  AwsIamServiceSpecificCredential({
    required super.localName,
    TfArg<num>? credentialAgeDays,
    required TfArg<String> serviceName,
    TfArg<String>? status,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (credentialAgeDays != null)
             'credential_age_days': credentialAgeDays,
           'service_name': serviceName,
           if (status != null) 'status': status,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamServiceSpecificCredentialSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_date` attribute.
  TfRef<String> get createDate => TfRef.attribute<String>(this, 'create_date');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `service_credential_alias` attribute.
  TfRef<String> get serviceCredentialAlias =>
      TfRef.attribute<String>(this, 'service_credential_alias');

  /// Reference to `service_credential_secret` attribute.
  TfRef<String> get serviceCredentialSecret =>
      TfRef.attribute<String>(this, 'service_credential_secret');

  /// Reference to `service_password` attribute.
  TfRef<String> get servicePassword =>
      TfRef.attribute<String>(this, 'service_password');

  /// Reference to `service_specific_credential_id` attribute.
  TfRef<String> get serviceSpecificCredentialId =>
      TfRef.attribute<String>(this, 'service_specific_credential_id');

  /// Reference to `service_user_name` attribute.
  TfRef<String> get serviceUserName =>
      TfRef.attribute<String>(this, 'service_user_name');
}
