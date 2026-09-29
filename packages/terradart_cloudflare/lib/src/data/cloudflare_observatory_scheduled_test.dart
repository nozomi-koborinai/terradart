// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../observatory/cloudflare_observatory_scheduled_test.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_observatory_scheduled_test`.
const Set<String> _cloudflareObservatoryScheduledTestSensitive = <String>{};

/// Factory wrapper for `cloudflare_observatory_scheduled_test`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareObservatoryScheduledTest extends Data {
  static const String tfType = 'cloudflare_observatory_scheduled_test';

  DataCloudflareObservatoryScheduledTest({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> url,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'url': url,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareObservatoryScheduledTestSensitive;

  /// A reference to the `cloudflare_observatory_scheduled_test` this data source reads, for
  /// arguments typed `RefTo<CloudflareObservatoryScheduledTest>`.
  RefTo<CloudflareObservatoryScheduledTest> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');
}
