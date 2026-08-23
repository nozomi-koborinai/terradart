// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_flagship_app`.
const Set<String> _cloudflareFlagshipAppSensitive = <String>{};

/// Factory wrapper for `cloudflare_flagship_app`.
///
/// Accepted Permissions
///
/// - `Flagship Read`
final class DataCloudflareFlagshipApp extends Data {
  static const String tfType = 'cloudflare_flagship_app';

  DataCloudflareFlagshipApp({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> appId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'app_id': appId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFlagshipAppSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `updated_by` attribute.
  TfRef<String> get updatedBy => TfRef.attribute<String>(this, 'updated_by');
}
