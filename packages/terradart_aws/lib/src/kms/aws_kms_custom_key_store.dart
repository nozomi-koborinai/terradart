// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_custom_key_store`.
const Set<String> _awsKmsCustomKeyStoreSensitive = <String>{};

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
    TfArg<String>? customKeyStoreType,
    TfArg<String>? keyStorePassword,
    TfArg<String>? region,
    TfArg<String>? trustAnchorCertificate,
    TfArg<String>? xksProxyConnectivity,
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
           if (cloudHsmClusterId != null)
             'cloud_hsm_cluster_id': cloudHsmClusterId,
           'custom_key_store_name': customKeyStoreName,
           if (customKeyStoreType != null)
             'custom_key_store_type': customKeyStoreType,
           if (keyStorePassword != null) 'key_store_password': keyStorePassword,
           if (region != null) 'region': region,
           if (trustAnchorCertificate != null)
             'trust_anchor_certificate': trustAnchorCertificate,
           if (xksProxyConnectivity != null)
             'xks_proxy_connectivity': xksProxyConnectivity,
           if (xksProxyUriEndpoint != null)
             'xks_proxy_uri_endpoint': xksProxyUriEndpoint,
           if (xksProxyUriPath != null) 'xks_proxy_uri_path': xksProxyUriPath,
           if (xksProxyVpcEndpointServiceName != null)
             'xks_proxy_vpc_endpoint_service_name':
                 xksProxyVpcEndpointServiceName,
           if (xksProxyAuthenticationCredential != null)
             'xks_proxy_authentication_credential': TfArg.literal(
               xksProxyAuthenticationCredential.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsCustomKeyStoreSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
