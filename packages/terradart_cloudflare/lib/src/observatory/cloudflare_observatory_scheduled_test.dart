// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_observatory_scheduled_test`.
const Set<String> _cloudflareObservatoryScheduledTestSensitive = <String>{};

/// Observatory Scheduled Test enum for `frequency`.
enum ObservatoryScheduledTestFrequency implements TerraformEnum {
  daily('DAILY'),
  weekly('WEEKLY');

  const ObservatoryScheduledTestFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Observatory Scheduled Test enum for `region`.
enum ObservatoryScheduledTestRegion implements TerraformEnum {
  asiaEast1('asia-east1'),
  asiaNortheast1('asia-northeast1'),
  asiaNortheast2('asia-northeast2'),
  asiaSouth1('asia-south1'),
  asiaSoutheast1('asia-southeast1'),
  australiaSoutheast1('australia-southeast1'),
  europeNorth1('europe-north1'),
  europeSouthwest1('europe-southwest1'),
  europeWest1('europe-west1'),
  europeWest2('europe-west2'),
  europeWest3('europe-west3'),
  europeWest4('europe-west4'),
  europeWest8('europe-west8'),
  europeWest9('europe-west9'),
  meWest1('me-west1'),
  southamericaEast1('southamerica-east1'),
  usCentral1('us-central1'),
  usEast1('us-east1'),
  usEast4('us-east4'),
  usSouth1('us-south1'),
  usWest1('us-west1');

  const ObservatoryScheduledTestRegion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_observatory_scheduled_test`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class CloudflareObservatoryScheduledTest extends Resource {
  static const String tfType = 'cloudflare_observatory_scheduled_test';

  CloudflareObservatoryScheduledTest(
    super.localName, {
    TfArg<ObservatoryScheduledTestFrequency>? frequency,
    TfArg<ObservatoryScheduledTestRegion>? region,
    required TfArg<String> url,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'frequency': ?frequency,
           'region': ?region,
           'url': url,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareObservatoryScheduledTestSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareObservatoryScheduledTest>`.
  RefTo<CloudflareObservatoryScheduledTest> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
