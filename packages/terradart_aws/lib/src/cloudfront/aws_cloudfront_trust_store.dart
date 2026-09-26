// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_trust_store`.
const Set<String> _awsCloudfrontTrustStoreSensitive = <String>{};

/// Typed helper for the `ca_certificates_bundle_source` block of
/// `aws_cloudfront_trust_store` (derived from provider schema).
@immutable
final class CloudfrontTrustStoreCaCertificatesBundleSource {
  const CloudfrontTrustStoreCaCertificatesBundleSource({
    this.caCertificatesBundleS3Location,
  });

  final List<
    CloudfrontTrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location
  >?
  caCertificatesBundleS3Location;

  Map<String, Object?> encode() => {
    if (caCertificatesBundleS3Location != null)
      'ca_certificates_bundle_s3_location': [
        for (final e in caCertificatesBundleS3Location!) e.encode(),
      ],
  };
}

/// Typed helper for the `ca_certificates_bundle_source.ca_certificates_bundle_s3_location` block of
/// `aws_cloudfront_trust_store` (derived from provider schema).
@immutable
final class CloudfrontTrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location {
  const CloudfrontTrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location({
    required this.bucket,
    required this.key,
    required this.region,
    this.version,
  });

  final TfArg<String> bucket;

  final TfArg<String> key;

  final TfArg<String> region;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'key': key.toTfJson(),
    'region': region.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_trust_store`.
final class AwsCloudfrontTrustStore extends Resource {
  static const String tfType = 'aws_cloudfront_trust_store';

  AwsCloudfrontTrustStore({
    required super.localName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    List<CloudfrontTrustStoreCaCertificatesBundleSource>?
    caCertificatesBundleSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (tags != null) 'tags': tags,
           if (caCertificatesBundleSource != null)
             'ca_certificates_bundle_source': TfArg.literal([
               for (final e in caCertificatesBundleSource) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontTrustStoreSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `number_of_ca_certificates` attribute.
  TfRef<num> get numberOfCaCertificates =>
      TfRef.attribute<num>(this, 'number_of_ca_certificates');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
