// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_cron_trigger`.
const Set<String> _cloudflareWorkersCronTriggerSensitive = <String>{};

/// Typed helper for the `schedules` block of
/// `cloudflare_workers_cron_trigger` (derived from provider schema).
@immutable
final class WorkersCronTriggerSchedules {
  const WorkersCronTriggerSchedules({required this.cron});

  final TfArg<String> cron;

  Map<String, Object?> encode() => {'cron': cron.toTfJson()};
}

/// Factory wrapper for `cloudflare_workers_cron_trigger`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write`
final class CloudflareWorkersCronTrigger extends Resource {
  static const String tfType = 'cloudflare_workers_cron_trigger';

  CloudflareWorkersCronTrigger({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> scriptName,
    required List<WorkersCronTriggerSchedules> schedules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'script_name': scriptName,
           'schedules': TfArg.literal([for (final e in schedules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersCronTriggerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
