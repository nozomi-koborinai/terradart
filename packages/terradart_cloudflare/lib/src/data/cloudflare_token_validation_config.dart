// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_token_validation_config`.
const Set<String> _cloudflareTokenValidationConfigSensitive = <String>{};

/// Factory wrapper for `cloudflare_token_validation_config`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareTokenValidationConfig extends Data {
  static const String tfType = 'cloudflare_token_validation_config';

  DataCloudflareTokenValidationConfig({
    required super.localName,
    required TfArg<String> configId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {'config_id': configId, if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTokenValidationConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `token_sources` attribute.
  TfRef<List<String>> get tokenSources =>
      TfRef.attribute<List<String>>(this, 'token_sources');

  /// Reference to `token_type` attribute.
  TfRef<String> get tokenType => TfRef.attribute<String>(this, 'token_type');
}
