// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_observatory_scheduled_test`.
const Set<String> _cloudflareObservatoryScheduledTestSensitive = <String>{};

/// Factory wrapper for `cloudflare_observatory_scheduled_test`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class CloudflareObservatoryScheduledTest extends Resource {
  static const String tfType = 'cloudflare_observatory_scheduled_test';

  CloudflareObservatoryScheduledTest({
    required super.localName,
    TfArg<String>? frequency,
    TfArg<String>? region,
    required TfArg<String> url,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (frequency != null) 'frequency': frequency,
           if (region != null) 'region': region,
           'url': url,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareObservatoryScheduledTestSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
