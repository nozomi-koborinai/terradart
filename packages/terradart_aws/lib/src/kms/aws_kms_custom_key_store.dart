// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_custom_key_store`.
const Set<String> _awsKmsCustomKeyStoreSensitive = <String>{};

/// Kms Custom Key Store Custom Key Store enum for `custom_key_store_type`.
enum KmsCustomKeyStoreCustomKeyStoreType implements TerraformEnum {
  awsCloudhsm('AWS_CLOUDHSM'),
  externalKeyStore('EXTERNAL_KEY_STORE');

  const KmsCustomKeyStoreCustomKeyStoreType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Kms Custom Key Store Xks Proxy enum for `xks_proxy_connectivity`.
enum KmsCustomKeyStoreXksProxyConnectivity implements TerraformEnum {
  publicEndpoint('PUBLIC_ENDPOINT'),
  vpcEndpointService('VPC_ENDPOINT_SERVICE');

  const KmsCustomKeyStoreXksProxyConnectivity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `xks_proxy_authentication_credential` block of
/// `aws_kms_custom_key_store` (derived from provider schema).
@immutable
final class KmsCustomKeyStoreXksProxyAuthenticationCredential {
  const KmsCustomKeyStoreXksProxyAuthenticationCredential({
    required this.accessKeyId,
    required this.rawSecretAccessKey,
  });

  final TfArg<String> accessKeyId;

  final TfArg<String> rawSecretAccessKey;

  Map<String, Object?> encode() => {
    'access_key_id': accessKeyId.toTfJson(),
    'raw_secret_access_key': rawSecretAccessKey.toTfJson(),
  };
}

/// Factory wrapper for `aws_kms_custom_key_store`.
final class AwsKmsCustomKeyStore extends Resource {
  static const String tfType = 'aws_kms_custom_key_store';

  AwsKmsCustomKeyStore({
    required super.localName,
    TfArg<String>? cloudHsmClusterId,
    required TfArg<String> customKeyStoreName,
    TfArg<KmsCustomKeyStoreCustomKeyStoreType>? customKeyStoreType,
    TfArg<String>? keyStorePassword,
    TfArg<String>? region,
    TfArg<String>? trustAnchorCertificate,
    TfArg<KmsCustomKeyStoreXksProxyConnectivity>? xksProxyConnectivity,
    TfArg<String>? xksProxyUriEndpoint,
    TfArg<String>? xksProxyUriPath,
    TfArg<String>? xksProxyVpcEndpointServiceName,
    KmsCustomKeyStoreXksProxyAuthenticationCredential?
    xksProxyAuthenticationCredential,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_hsm_cluster_id': ?cloudHsmClusterId,
           'custom_key_store_name': customKeyStoreName,
           'custom_key_store_type': ?customKeyStoreType,
           'key_store_password': ?keyStorePassword,
           'region': ?region,
           'trust_anchor_certificate': ?trustAnchorCertificate,
           'xks_proxy_connectivity': ?xksProxyConnectivity,
           'xks_proxy_uri_endpoint': ?xksProxyUriEndpoint,
           'xks_proxy_uri_path': ?xksProxyUriPath,
           'xks_proxy_vpc_endpoint_service_name':
               ?xksProxyVpcEndpointServiceName,
           if (xksProxyAuthenticationCredential != null)
             'xks_proxy_authentication_credential': TfArg.literal(
               xksProxyAuthenticationCredential.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsCustomKeyStoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKmsCustomKeyStore>`.
  RefTo<AwsKmsCustomKeyStore> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloud_hsm_cluster_id` attribute.
  TfRef<String> get cloudHsmClusterIdRef =>
      TfRef.attribute<String>(this, 'cloud_hsm_cluster_id');

  /// Reference to `custom_key_store_name` attribute.
  TfRef<String> get customKeyStoreNameRef =>
      TfRef.attribute<String>(this, 'custom_key_store_name');

  /// Reference to `custom_key_store_type` attribute.
  TfRef<String> get customKeyStoreTypeRef =>
      TfRef.attribute<String>(this, 'custom_key_store_type');

  /// Reference to `key_store_password` attribute.
  TfRef<String> get keyStorePasswordRef =>
      TfRef.attribute<String>(this, 'key_store_password');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `trust_anchor_certificate` attribute.
  TfRef<String> get trustAnchorCertificateRef =>
      TfRef.attribute<String>(this, 'trust_anchor_certificate');

  /// Reference to `xks_proxy_connectivity` attribute.
  TfRef<String> get xksProxyConnectivityRef =>
      TfRef.attribute<String>(this, 'xks_proxy_connectivity');

  /// Reference to `xks_proxy_uri_endpoint` attribute.
  TfRef<String> get xksProxyUriEndpointRef =>
      TfRef.attribute<String>(this, 'xks_proxy_uri_endpoint');

  /// Reference to `xks_proxy_uri_path` attribute.
  TfRef<String> get xksProxyUriPathRef =>
      TfRef.attribute<String>(this, 'xks_proxy_uri_path');

  /// Reference to `xks_proxy_vpc_endpoint_service_name` attribute.
  TfRef<String> get xksProxyVpcEndpointServiceNameRef =>
      TfRef.attribute<String>(this, 'xks_proxy_vpc_endpoint_service_name');
}
