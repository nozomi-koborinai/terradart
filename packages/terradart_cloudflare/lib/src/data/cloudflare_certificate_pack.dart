// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_certificate_pack.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_certificate_pack`.
const Set<String> _cloudflareCertificatePackSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_certificate_pack` (derived from provider schema).
@immutable
final class DataCertificatePackFilter {
  const DataCertificatePackFilter({this.deploy, this.status});

  final DataCertificatePackDeploy? deploy;

  final DataCertificatePackFilterStatus? status;

  Map<String, Object?> encode() => {
    'deploy': ?deploy?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `deploy` — derived from the provider schema description.
extension type const DataCertificatePackDeploy._(TfArg<String> _)
    implements TfArg<String> {
  DataCertificatePackDeploy.variable(String name)
    : this._(TfArg.variable(name));
  DataCertificatePackDeploy.expression(String template)
    : this._(TfArg.expression(template));
  const DataCertificatePackDeploy.arg(TfArg<String> arg) : this._(arg);

  static const staging = DataCertificatePackDeploy._(TfArgLiteral('staging'));
  static const production = DataCertificatePackDeploy._(
    TfArgLiteral('production'),
  );

  static const List<DataCertificatePackDeploy> values = [staging, production];
}

/// `status` — derived from the provider schema description.
extension type const DataCertificatePackFilterStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataCertificatePackFilterStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataCertificatePackFilterStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataCertificatePackFilterStatus.arg(TfArg<String> arg) : this._(arg);

  static const all = DataCertificatePackFilterStatus._(TfArgLiteral('all'));

  static const List<DataCertificatePackFilterStatus> values = [all];
}

/// Factory wrapper for `cloudflare_certificate_pack`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCertificatePack extends Data {
  static const String tfType = 'cloudflare_certificate_pack';

  DataCloudflareCertificatePack(
    super.localName, {
    TfArg<String>? certificatePackId,
    RefTo<CloudflareZone>? zoneId,
    DataCertificatePackFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_pack_id': ?certificatePackId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCertificatePackSensitive;

  /// A reference to the `cloudflare_certificate_pack` this data source reads, for
  /// arguments typed `RefTo<CloudflareCertificatePack>`.
  RefTo<CloudflareCertificatePack> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_authority` attribute.
  TfRef<String> get certificateAuthority =>
      TfRef.attribute<String>(this, 'certificate_authority');

  /// Reference to `cloudflare_branding` attribute.
  TfRef<bool> get cloudflareBranding =>
      TfRef.attribute<bool>(this, 'cloudflare_branding');

  /// Reference to `hosts` attribute.
  TfRef<List<String>> get hosts => TfRef.attribute<List<String>>(this, 'hosts');

  /// Reference to `primary_certificate` attribute.
  TfRef<String> get primaryCertificate =>
      TfRef.attribute<String>(this, 'primary_certificate');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `validation_method` attribute.
  TfRef<String> get validationMethod =>
      TfRef.attribute<String>(this, 'validation_method');

  /// Reference to `validity_days` attribute.
  TfRef<num> get validityDays => TfRef.attribute<num>(this, 'validity_days');

  /// Reference to `certificate_pack_id` attribute.
  TfRef<String> get certificatePackId =>
      TfRef.attribute<String>(this, 'certificate_pack_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
