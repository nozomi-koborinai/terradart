// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_region_ssl_certificate.dart';

/// Sensitive field paths for `google_compute_region_ssl_certificate`.
const Set<String> _googleComputeRegionSslCertificateSensitive = <String>{};

/// Factory wrapper for `google_compute_region_ssl_certificate`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRegionSslCertificate extends Data {
  static const String tfType = 'google_compute_region_ssl_certificate';

  DataGoogleComputeRegionSslCertificate({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'project': ?project, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionSslCertificateSensitive;

  /// A reference to the `google_compute_region_ssl_certificate` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeRegionSslCertificate>`.
  RefTo<GoogleComputeRegionSslCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `certificate_id` attribute.
  TfRef<num> get certificateId => TfRef.attribute<num>(this, 'certificate_id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `private_key_wo` attribute.
  TfRef<String> get privateKeyWo =>
      TfRef.attribute<String>(this, 'private_key_wo');

  /// Reference to `private_key_wo_version` attribute.
  TfRef<String> get privateKeyWoVersion =>
      TfRef.attribute<String>(this, 'private_key_wo_version');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
