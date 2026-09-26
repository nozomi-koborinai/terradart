// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_directory_config`.
const Set<String> _awsAppstreamDirectoryConfigSensitive = <String>{
  'service_account_credentials.account_password',
};

/// Typed helper for the `certificate_based_auth_properties` block of
/// `aws_appstream_directory_config` (derived from provider schema).
@immutable
final class AppstreamDirectoryConfigCertificateBasedAuthProperties {
  const AppstreamDirectoryConfigCertificateBasedAuthProperties({
    this.certificateAuthorityArn,
    this.status,
  });

  final TfArg<String>? certificateAuthorityArn;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (certificateAuthorityArn != null)
      'certificate_authority_arn': certificateAuthorityArn!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `service_account_credentials` block of
/// `aws_appstream_directory_config` (derived from provider schema).
@immutable
final class AppstreamDirectoryConfigServiceAccountCredentials {
  const AppstreamDirectoryConfigServiceAccountCredentials({
    required this.accountName,
    required this.accountPassword,
  });

  final TfArg<String> accountName;

  final TfArg<String> accountPassword;

  Map<String, Object?> encode() => {
    'account_name': accountName.toTfJson(),
    'account_password': accountPassword.toTfJson(),
  };
}

/// Factory wrapper for `aws_appstream_directory_config`.
final class AwsAppstreamDirectoryConfig extends Resource {
  static const String tfType = 'aws_appstream_directory_config';

  AwsAppstreamDirectoryConfig({
    required super.localName,
    required TfArg<String> directoryName,
    required TfArg<List<String>> organizationalUnitDistinguishedNames,
    TfArg<String>? region,
    AppstreamDirectoryConfigCertificateBasedAuthProperties?
    certificateBasedAuthProperties,
    required AppstreamDirectoryConfigServiceAccountCredentials
    serviceAccountCredentials,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_name': directoryName,
           'organizational_unit_distinguished_names':
               organizationalUnitDistinguishedNames,
           if (region != null) 'region': region,
           if (certificateBasedAuthProperties != null)
             'certificate_based_auth_properties': TfArg.literal(
               certificateBasedAuthProperties.encode(),
             ),
           'service_account_credentials': TfArg.literal(
             serviceAccountCredentials.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamDirectoryConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');
}
