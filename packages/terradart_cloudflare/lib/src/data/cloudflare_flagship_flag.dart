// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_flagship_flag`.
const Set<String> _cloudflareFlagshipFlagSensitive = <String>{};

/// Factory wrapper for `cloudflare_flagship_flag`.
///
/// Accepted Permissions
///
/// - `Flagship Read`
final class DataCloudflareFlagshipFlag extends Data {
  static const String tfType = 'cloudflare_flagship_flag';

  DataCloudflareFlagshipFlag({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> appId,
    required TfArg<String> flagKey,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'app_id': appId,
           'flag_key': flagKey,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFlagshipFlagSensitive;

  /// Reference to `default_variation` attribute.
  TfRef<String> get defaultVariation =>
      TfRef.attribute<String>(this, 'default_variation');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `updated_by` attribute.
  TfRef<String> get updatedBy => TfRef.attribute<String>(this, 'updated_by');

  /// Reference to `variations` attribute.
  TfRef<Map<String, String>> get variations =>
      TfRef.attribute<Map<String, String>>(this, 'variations');
}
