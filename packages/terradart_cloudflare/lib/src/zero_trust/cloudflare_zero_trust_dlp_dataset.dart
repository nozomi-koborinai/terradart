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
final class CloudflareZeroTrustDlpDataset extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_dataset';

  CloudflareZeroTrustDlpDataset({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? caseSensitive,
    TfArg<String>? datasetId,
    TfArg<String>? description,
    TfArg<num>? encodingVersion,
    required TfArg<String> name,
    TfArg<bool>? secret,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (caseSensitive != null) 'case_sensitive': caseSensitive,
           if (datasetId != null) 'dataset_id': datasetId,
           if (description != null) 'description': description,
           if (encodingVersion != null) 'encoding_version': encodingVersion,
           'name': name,
           if (secret != null) 'secret': secret,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpDatasetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
