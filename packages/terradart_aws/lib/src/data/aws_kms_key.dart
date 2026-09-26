// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_key`.
const Set<String> _awsKmsKeySensitive = <String>{};

/// Factory wrapper for `aws_kms_key`.
final class DataAwsKmsKey extends Data {
  static const String tfType = 'aws_kms_key';

  DataAwsKmsKey({
    required super.localName,
    TfArg<List<String>>? grantTokens,
    required TfArg<String> keyId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (grantTokens != null) 'grant_tokens': grantTokens,
           'key_id': keyId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `cloud_hsm_cluster_id` attribute.
  TfRef<String> get cloudHsmClusterId =>
      TfRef.attribute<String>(this, 'cloud_hsm_cluster_id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `custom_key_store_id` attribute.
  TfRef<String> get customKeyStoreId =>
      TfRef.attribute<String>(this, 'custom_key_store_id');

  /// Reference to `customer_master_key_spec` attribute.
  TfRef<String> get customerMasterKeySpec =>
      TfRef.attribute<String>(this, 'customer_master_key_spec');

  /// Reference to `deletion_date` attribute.
  TfRef<String> get deletionDate =>
      TfRef.attribute<String>(this, 'deletion_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expiration_model` attribute.
  TfRef<String> get expirationModel =>
      TfRef.attribute<String>(this, 'expiration_model');

  /// Reference to `key_manager` attribute.
  TfRef<String> get keyManager => TfRef.attribute<String>(this, 'key_manager');

  /// Reference to `key_spec` attribute.
  TfRef<String> get keySpec => TfRef.attribute<String>(this, 'key_spec');

  /// Reference to `key_state` attribute.
  TfRef<String> get keyState => TfRef.attribute<String>(this, 'key_state');

  /// Reference to `key_usage` attribute.
  TfRef<String> get keyUsage => TfRef.attribute<String>(this, 'key_usage');

  /// Reference to `multi_region` attribute.
  TfRef<bool> get multiRegion => TfRef.attribute<bool>(this, 'multi_region');

  /// Reference to `multi_region_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get multiRegionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'multi_region_configuration',
      );

  /// Reference to `origin` attribute.
  TfRef<String> get origin => TfRef.attribute<String>(this, 'origin');

  /// Reference to `pending_deletion_window_in_days` attribute.
  TfRef<num> get pendingDeletionWindowInDays =>
      TfRef.attribute<num>(this, 'pending_deletion_window_in_days');

  /// Reference to `valid_to` attribute.
  TfRef<String> get validTo => TfRef.attribute<String>(this, 'valid_to');

  /// Reference to `xks_key_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get xksKeyConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'xks_key_configuration',
      );
}
