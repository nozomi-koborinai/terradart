// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_shield/cloudflare_token_validation_config.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'config_id': configId, 'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTokenValidationConfigSensitive;

  /// A reference to the `cloudflare_token_validation_config` this data source reads, for
  /// arguments typed `RefTo<CloudflareTokenValidationConfig>`.
  RefTo<CloudflareTokenValidationConfig> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `config_id` attribute.
  TfRef<String> get configIdRef => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
