// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_data_class`.
const Set<String> _cloudflareZeroTrustDlpDataClassSensitive = <String>{};

/// Typed helper for the `sensitivity_levels` block of
/// `cloudflare_zero_trust_dlp_data_class` (derived from provider schema).
@immutable
final class ZeroTrustDlpDataClassSensitivityLevels {
  const ZeroTrustDlpDataClassSensitivityLevels({
    required this.groupId,
    required this.levelId,
  });

  final TfArg<String> groupId;

  final TfArg<String> levelId;

  Map<String, Object?> encode() => {
    'group_id': groupId.toTfJson(),
    'level_id': levelId.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_dlp_data_class`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpDataClass extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_data_class';

  CloudflareZeroTrustDlpDataClass({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<List<String>> dataTags,
    TfArg<String>? description,
    required TfArg<String> expression,
    required TfArg<String> name,
    required List<ZeroTrustDlpDataClassSensitivityLevels> sensitivityLevels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'data_tags': dataTags,
           if (description != null) 'description': description,
           'expression': expression,
           'name': name,
           'sensitivity_levels': TfArg.literal([
             for (final e in sensitivityLevels) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpDataClassSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
