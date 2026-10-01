// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_ssl_certificate`.
const Set<String> _googleComputeRegionSslCertificateSensitive = <String>{
  'certificate',
  'private_key',
};

/// Exactly one of `private_key`, `private_key_wo` on `google_compute_region_ssl_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.privateKey(...)`.
sealed class ComputeRegionSslCertificatePrivateKey {
  const ComputeRegionSslCertificatePrivateKey();

  /// Sets `private_key`.
  const factory ComputeRegionSslCertificatePrivateKey.privateKey(
    TfArg<String> privateKey,
  ) = ComputeRegionSslCertificatePrivateKeyChoice;

  /// Sets `private_key_wo`.
  const factory ComputeRegionSslCertificatePrivateKey.privateKeyWo(
    TfArg<String> privateKeyWo,
  ) = ComputeRegionSslCertificatePrivateKeyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeRegionSslCertificatePrivateKey.privateKey] choice: sets `private_key`.
final class ComputeRegionSslCertificatePrivateKeyChoice
    extends ComputeRegionSslCertificatePrivateKey {
  const ComputeRegionSslCertificatePrivateKeyChoice(this.privateKey);

  final TfArg<String> privateKey;

  @override
  String get blockKey => 'private_key';

  @override
  Map<String, Object?> encode() => {'private_key': privateKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'private_key': privateKey};
}

/// The [ComputeRegionSslCertificatePrivateKey.privateKeyWo] choice: sets `private_key_wo`.
final class ComputeRegionSslCertificatePrivateKeyWo
    extends ComputeRegionSslCertificatePrivateKey {
  const ComputeRegionSslCertificatePrivateKeyWo(this.privateKeyWo);

  final TfArg<String> privateKeyWo;

  @override
  String get blockKey => 'private_key_wo';

  @override
  Map<String, Object?> encode() => {'private_key_wo': privateKeyWo.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'private_key_wo': privateKeyWo};
}

/// Factory wrapper for `google_compute_region_ssl_certificate`.
///
/// A RegionSslCertificate resource, used for HTTPS load balancing. This
/// resource provides a mechanism to upload an SSL key and certificate to the
/// load balancer to serve secure connections from the user.
///
/// Regional self-managed SSL certificate for regional HTTPS load balancers.
/// Pair with [GoogleComputeRegionTargetHttpsProxy].
///
/// Example:
/// ```dart
/// GoogleComputeRegionSslCertificate(
///   localName: 'regional_cert',
///   name: TfArg.literal('regional-cert'),
///   certificate: TfArg.literal(pemCertificate),
///   privateKey: .privateKey(.literal(pemPrivateKey)),
///   region: TfArg.literal('asia-northeast1'),
/// );
/// ```
final class GoogleComputeRegionSslCertificate extends Resource {
  static const String tfType = 'google_compute_region_ssl_certificate';

  GoogleComputeRegionSslCertificate({
    required super.localName,
    required TfArg<String> certificate,
    required ComputeRegionSslCertificatePrivateKey privateKey,
    TfArg<String>? name,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<String>? project,
    TfArg<String>? privateKeyWoVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate': certificate,
           ...privateKey.argMap,
           'name': ?name,
           'description': ?description,
           'region': ?region,
           'project': ?project,
           'private_key_wo_version': ?privateKeyWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionSslCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionSslCertificate>`.
  RefTo<GoogleComputeRegionSslCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_id` attribute.
  TfRef<num> get certificateId => TfRef.attribute<num>(this, 'certificate_id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `private_key_wo_version` attribute.
  TfRef<String> get privateKeyWoVersion =>
      TfRef.attribute<String>(this, 'private_key_wo_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
