// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_dataset`.
const Set<String> _cloudflareZeroTrustDlpDatasetSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_dataset`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpDataset extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_dataset';

  DataCloudflareZeroTrustDlpDataset({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> datasetId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'dataset_id': datasetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpDatasetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `case_sensitive` attribute.
  TfRef<bool> get caseSensitive =>
      TfRef.attribute<bool>(this, 'case_sensitive');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encoding_version` attribute.
  TfRef<num> get encodingVersion =>
      TfRef.attribute<num>(this, 'encoding_version');

  /// Reference to `num_cells` attribute.
  TfRef<num> get numCells => TfRef.attribute<num>(this, 'num_cells');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
