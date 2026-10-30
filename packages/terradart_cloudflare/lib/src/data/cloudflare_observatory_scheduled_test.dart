// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../observatory/cloudflare_observatory_scheduled_test.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_observatory_scheduled_test`.
const Set<String> _cloudflareObservatoryScheduledTestSensitive = <String>{};

/// Data Observatory Scheduled Test enum for `region`.
extension type const DataObservatoryScheduledTestRegion._(TfArg<String> _)
    implements TfArg<String> {
  DataObservatoryScheduledTestRegion.variable(String name)
    : this._(TfArg.variable(name));
  DataObservatoryScheduledTestRegion.expression(String template)
    : this._(TfArg.expression(template));
  const DataObservatoryScheduledTestRegion.arg(TfArg<String> arg) : this._(arg);

  static const asiaEast1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-east1'),
  );
  static const asiaNortheast1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-northeast1'),
  );
  static const asiaNortheast2 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-northeast2'),
  );
  static const asiaSouth1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-south1'),
  );
  static const asiaSoutheast1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('asia-southeast1'),
  );
  static const australiaSoutheast1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('australia-southeast1'),
  );
  static const europeNorth1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-north1'),
  );
  static const europeSouthwest1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-southwest1'),
  );
  static const europeWest1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west1'),
  );
  static const europeWest2 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west2'),
  );
  static const europeWest3 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west3'),
  );
  static const europeWest4 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west4'),
  );
  static const europeWest8 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west8'),
  );
  static const europeWest9 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('europe-west9'),
  );
  static const meWest1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('me-west1'),
  );
  static const southamericaEast1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('southamerica-east1'),
  );
  static const usCentral1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('us-central1'),
  );
  static const usEast1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('us-east1'),
  );
  static const usEast4 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('us-east4'),
  );
  static const usSouth1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('us-south1'),
  );
  static const usWest1 = DataObservatoryScheduledTestRegion._(
    TfArgLiteral('us-west1'),
  );

  static const List<DataObservatoryScheduledTestRegion> values = [
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
final class DataCloudflareObservatoryScheduledTest extends Data {
  static const String tfType = 'cloudflare_observatory_scheduled_test';

  DataCloudflareObservatoryScheduledTest(
    super.localName, {
    DataObservatoryScheduledTestRegion? region,
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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
