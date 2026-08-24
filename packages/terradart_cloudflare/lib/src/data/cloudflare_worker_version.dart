// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_worker_version`.
const Set<String> _cloudflareWorkerVersionSensitive = <String>{
  'assets.jwt',
  'bindings.key_base64',
  'bindings.key_jwk',
  'bindings.text',
};

/// Factory wrapper for `cloudflare_worker_version`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkerVersion extends Data {
  static const String tfType = 'cloudflare_worker_version';

  DataCloudflareWorkerVersion({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? include,
    required TfArg<String> versionId,
    required TfArg<String> workerId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (include != null) 'include': include,
           'version_id': versionId,
           'worker_id': workerId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkerVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `compatibility_date` attribute.
  TfRef<String> get compatibilityDate =>
      TfRef.attribute<String>(this, 'compatibility_date');

  /// Reference to `compatibility_flags` attribute.
  TfRef<List<String>> get compatibilityFlags =>
      TfRef.attribute<List<String>>(this, 'compatibility_flags');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `main_module` attribute.
  TfRef<String> get mainModule => TfRef.attribute<String>(this, 'main_module');

  /// Reference to `main_script_base64` attribute.
  TfRef<String> get mainScriptBase64 =>
      TfRef.attribute<String>(this, 'main_script_base64');

  /// Reference to `migration_tag` attribute.
  TfRef<String> get migrationTag =>
      TfRef.attribute<String>(this, 'migration_tag');

  /// Reference to `number` attribute.
  TfRef<num> get number => TfRef.attribute<num>(this, 'number');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `startup_time_ms` attribute.
  TfRef<num> get startupTimeMs => TfRef.attribute<num>(this, 'startup_time_ms');

  /// Reference to `urls` attribute.
  TfRef<List<String>> get urls => TfRef.attribute<List<String>>(this, 'urls');

  /// Reference to `usage_model` attribute.
  TfRef<String> get usageModel => TfRef.attribute<String>(this, 'usage_model');
}
