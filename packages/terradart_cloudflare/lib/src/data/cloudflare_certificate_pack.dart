// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_certificate_pack`.
const Set<String> _cloudflareCertificatePackSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_certificate_pack` (derived from provider schema).
@immutable
final class DataCertificatePackFilter {
  const DataCertificatePackFilter({this.deploy, this.status});

  final TfArg<String>? deploy;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (deploy != null) 'deploy': deploy!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_certificate_pack`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCertificatePack extends Data {
  static const String tfType = 'cloudflare_certificate_pack';

  DataCloudflareCertificatePack({
    required super.localName,
    TfArg<String>? certificatePackId,
    TfArg<String>? zoneId,
    DataCertificatePackFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (certificatePackId != null)
             'certificate_pack_id': certificatePackId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCertificatePackSensitive;

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
}
