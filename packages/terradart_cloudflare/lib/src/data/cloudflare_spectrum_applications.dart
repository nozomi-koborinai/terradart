// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_spectrum_applications`.
const Set<String> _cloudflareSpectrumApplicationsSensitive = <String>{};

/// Data Spectrum Applications enum for `direction`.
extension type const DataSpectrumApplicationsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataSpectrumApplicationsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataSpectrumApplicationsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataSpectrumApplicationsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataSpectrumApplicationsDirection._(TfArgLiteral('asc'));
  static const desc = DataSpectrumApplicationsDirection._(TfArgLiteral('desc'));

  static const List<DataSpectrumApplicationsDirection> values = [asc, desc];
}

/// Data Spectrum Applications enum for `order`.
extension type const DataSpectrumApplicationsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataSpectrumApplicationsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataSpectrumApplicationsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataSpectrumApplicationsOrder.arg(TfArg<String> arg) : this._(arg);

  static const protocol = DataSpectrumApplicationsOrder._(
    TfArgLiteral('protocol'),
  );
  static const appId = DataSpectrumApplicationsOrder._(TfArgLiteral('app_id'));
  static const createdOn = DataSpectrumApplicationsOrder._(
    TfArgLiteral('created_on'),
  );
  static const modifiedOn = DataSpectrumApplicationsOrder._(
    TfArgLiteral('modified_on'),
  );
  static const dns = DataSpectrumApplicationsOrder._(TfArgLiteral('dns'));

  static const List<DataSpectrumApplicationsOrder> values = [
    protocol,
    appId,
    createdOn,
    modifiedOn,
    dns,
  ];
}

/// Factory wrapper for `cloudflare_spectrum_applications`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareSpectrumApplications extends Data {
  static const String tfType = 'cloudflare_spectrum_applications';

  DataCloudflareSpectrumApplications(
    super.localName, {
    DataSpectrumApplicationsDirection? direction,
    TfArg<num>? maxItems,
    DataSpectrumApplicationsOrder? order,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSpectrumApplicationsSensitive;

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
