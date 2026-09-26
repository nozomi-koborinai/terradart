// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_custom_key_store`.
const Set<String> _awsKmsCustomKeyStoreSensitive = <String>{};

/// Factory wrapper for `aws_kms_custom_key_store`.
final class DataAwsKmsCustomKeyStore extends Data {
  static const String tfType = 'aws_kms_custom_key_store';

  DataAwsKmsCustomKeyStore({
    required super.localName,
    TfArg<String>? customKeyStoreId,
    TfArg<String>? customKeyStoreName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customKeyStoreId != null)
             'custom_key_store_id': customKeyStoreId,
           if (customKeyStoreName != null)
             'custom_key_store_name': customKeyStoreName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsCustomKeyStoreSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloud_hsm_cluster_id` attribute.
  TfRef<String> get cloudHsmClusterId =>
      TfRef.attribute<String>(this, 'cloud_hsm_cluster_id');

  /// Reference to `connection_state` attribute.
  TfRef<String> get connectionState =>
      TfRef.attribute<String>(this, 'connection_state');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `trust_anchor_certificate` attribute.
  TfRef<String> get trustAnchorCertificate =>
      TfRef.attribute<String>(this, 'trust_anchor_certificate');
}
