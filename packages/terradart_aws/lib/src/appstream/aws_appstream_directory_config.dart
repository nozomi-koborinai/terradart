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

  final TfArg<AppstreamDirectoryConfigStatus>? status;

  Map<String, Object?> encode() => {
    'certificate_authority_arn': ?certificateAuthorityArn?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum AppstreamDirectoryConfigStatus implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED'),
  enabledNoDirectoryLoginFallback('ENABLED_NO_DIRECTORY_LOGIN_FALLBACK');

  const AppstreamDirectoryConfigStatus(this.terraformValue);
  @override
  final String terraformValue;
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
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppstreamDirectoryConfig>`.
  RefTo<AwsAppstreamDirectoryConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `directory_name` attribute.
  TfRef<String> get directoryName =>
      TfRef.attribute<String>(this, 'directory_name');

  /// Reference to `organizational_unit_distinguished_names` attribute.
  TfRef<List<String>> get organizationalUnitDistinguishedNames =>
      TfRef.attribute<List<String>>(
        this,
        'organizational_unit_distinguished_names',
      );

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
