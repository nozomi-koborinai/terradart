// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_ssls`.
const Set<String> _cloudflareCustomSslsSensitive = <String>{};

/// Data Custom Ssls enum for `match`.
extension type const DataCustomSslsMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomSslsMatch.variable(String name) : this._(TfArg.variable(name));
  DataCustomSslsMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomSslsMatch.arg(TfArg<String> arg) : this._(arg);

  static const any = DataCustomSslsMatch._(TfArgLiteral('any'));
  static const all = DataCustomSslsMatch._(TfArgLiteral('all'));

  static const List<DataCustomSslsMatch> values = [any, all];
}

/// Data Custom Ssls enum for `status`.
extension type const DataCustomSslsStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomSslsStatus.variable(String name) : this._(TfArg.variable(name));
  DataCustomSslsStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomSslsStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = DataCustomSslsStatus._(TfArgLiteral('active'));
  static const expired = DataCustomSslsStatus._(TfArgLiteral('expired'));
  static const deleted = DataCustomSslsStatus._(TfArgLiteral('deleted'));
  static const pending = DataCustomSslsStatus._(TfArgLiteral('pending'));
  static const initializing = DataCustomSslsStatus._(
    TfArgLiteral('initializing'),
  );

  static const List<DataCustomSslsStatus> values = [
    active,
    expired,
    deleted,
    pending,
    initializing,
  ];
}

/// Factory wrapper for `cloudflare_custom_ssls`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write` - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomSsls extends Data {
  static const String tfType = 'cloudflare_custom_ssls';

  DataCloudflareCustomSsls(
    super.localName, {
    DataCustomSslsMatch? match,
    TfArg<num>? maxItems,
    DataCustomSslsStatus? status,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'match': ?match,
           'max_items': ?maxItems,
           'status': ?status,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomSslsSensitive;

  /// Reference to `match` attribute.
  TfRef<String> get match => TfRef.attribute<String>(this, 'match');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
