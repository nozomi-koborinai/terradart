// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_observatory_scheduled_test`.
const Set<String> _cloudflareObservatoryScheduledTestSensitive = <String>{};

/// Observatory Scheduled Test enum for `frequency`.
extension type const ObservatoryScheduledTestFrequency._(TfArg<String> _)
    implements TfArg<String> {
  ObservatoryScheduledTestFrequency.variable(String name)
    : this._(TfArg.variable(name));
  ObservatoryScheduledTestFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const ObservatoryScheduledTestFrequency.arg(TfArg<String> arg) : this._(arg);

  static const daily = ObservatoryScheduledTestFrequency._(
    TfArgLiteral('DAILY'),
  );
  static const weekly = ObservatoryScheduledTestFrequency._(
    TfArgLiteral('WEEKLY'),
  );

  static const List<ObservatoryScheduledTestFrequency> values = [daily, weekly];
}

/// Observatory Scheduled Test enum for `region`.
extension type const ObservatoryScheduledTestRegion._(TfArg<String> _)
    implements TfArg<String> {
  ObservatoryScheduledTestRegion.variable(String name)
    : this._(TfArg.variable(name));
  ObservatoryScheduledTestRegion.expression(String template)
    : this._(TfArg.expression(template));
  const ObservatoryScheduledTestRegion.arg(TfArg<String> arg) : this._(arg);

  static const asiaEast1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-east1'),
  );
  static const asiaNortheast1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-northeast1'),
  );
  static const asiaNortheast2 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-northeast2'),
  );
  static const asiaSouth1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-south1'),
  );
  static const asiaSoutheast1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-southeast1'),
  );
  static const australiaSoutheast1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('australia-southeast1'),
  );
  static const europeNorth1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-north1'),
  );
  static const europeSouthwest1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-southwest1'),
  );
  static const europeWest1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west1'),
  );
  static const europeWest2 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west2'),
  );
  static const europeWest3 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west3'),
  );
  static const europeWest4 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west4'),
  );
  static const europeWest8 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west8'),
  );
  static const europeWest9 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west9'),
  );
  static const meWest1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('me-west1'),
  );
  static const southamericaEast1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('southamerica-east1'),
  );
  static const usCentral1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('us-central1'),
  );
  static const usEast1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('us-east1'),
  );
  static const usEast4 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('us-east4'),
  );
  static const usSouth1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('us-south1'),
  );
  static const usWest1 = ObservatoryScheduledTestRegion._(
    TfArgLiteral('us-west1'),
  );

  static const List<ObservatoryScheduledTestRegion> values = [
    asiaEast1,
    asiaNortheast1,
    asiaNortheast2,
    asiaSouth1,
    asiaSoutheast1,
    australiaSoutheast1,
    europeNorth1,
    europeSouthwest1,
    europeWest1,
    europeWest2,
    europeWest3,
    europeWest4,
    europeWest8,
    europeWest9,
    meWest1,
    southamericaEast1,
    usCentral1,
    usEast1,
    usEast4,
    usSouth1,
    usWest1,
  ];
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
    ObservatoryScheduledTestFrequency? frequency,
    ObservatoryScheduledTestRegion? region,
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
