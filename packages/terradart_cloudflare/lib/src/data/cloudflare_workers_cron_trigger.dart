// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_cron_trigger`.
const Set<String> _cloudflareWorkersCronTriggerSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_cron_trigger`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write`
final class DataCloudflareWorkersCronTrigger extends Data {
  static const String tfType = 'cloudflare_workers_cron_trigger';

  DataCloudflareWorkersCronTrigger({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> scriptName,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'script_name': scriptName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersCronTriggerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
