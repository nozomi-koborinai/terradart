// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_dataset`.
const Set<String> _cloudflareZeroTrustDlpDatasetSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_dataset`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpDataset extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_dataset';

  CloudflareZeroTrustDlpDataset(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? caseSensitive,
    TfArg<String>? datasetId,
    TfArg<String>? description,
    TfArg<num>? encodingVersion,
    required TfArg<String> name,
    TfArg<bool>? secret,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'case_sensitive': ?caseSensitive,
           'dataset_id': ?datasetId,
           'description': ?description,
           'encoding_version': ?encodingVersion,
           'name': name,
           'secret': ?secret,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpDatasetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDlpDataset>`.
  RefTo<CloudflareZeroTrustDlpDataset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `max_cells` attribute.
  TfRef<num> get maxCells => TfRef.attribute<num>(this, 'max_cells');

  /// Reference to `num_cells` attribute.
  TfRef<num> get numCells => TfRef.attribute<num>(this, 'num_cells');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `case_sensitive` attribute.
  TfRef<bool> get caseSensitive =>
      TfRef.attribute<bool>(this, 'case_sensitive');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encoding_version` attribute.
  TfRef<num> get encodingVersion =>
      TfRef.attribute<num>(this, 'encoding_version');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');
}
