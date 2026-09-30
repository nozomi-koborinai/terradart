// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../workers/cloudflare_workers_cron_trigger.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> scriptName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'script_name': scriptName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersCronTriggerSensitive;

  /// A reference to the `cloudflare_workers_cron_trigger` this data source reads, for
  /// arguments typed `RefTo<CloudflareWorkersCronTrigger>`.
  RefTo<CloudflareWorkersCronTrigger> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptNameRef =>
      TfRef.attribute<String>(this, 'script_name');
}
