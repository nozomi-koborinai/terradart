// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_trust_store`.
const Set<String> _awsLbTrustStoreSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_lb_trust_store`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class LbTrustStoreName {
  const LbTrustStoreName();

  /// Sets `name`.
  const factory LbTrustStoreName.name(TfArg<String> name) =
      LbTrustStoreNameName;

  /// Sets `name_prefix`.
  const factory LbTrustStoreName.namePrefix(TfArg<String> namePrefix) =
      LbTrustStoreNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LbTrustStoreName.name] choice: sets `name`.
final class LbTrustStoreNameName extends LbTrustStoreName {
  const LbTrustStoreNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [LbTrustStoreName.namePrefix] choice: sets `name_prefix`.
final class LbTrustStoreNameNamePrefix extends LbTrustStoreName {
  const LbTrustStoreNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_lb_trust_store`.
final class AwsLbTrustStore extends Resource {
  static const String tfType = 'aws_lb_trust_store';

  AwsLbTrustStore({
    required super.localName,
    required TfArg<String> caCertificatesBundleS3Bucket,
    required TfArg<String> caCertificatesBundleS3Key,
    TfArg<String>? caCertificatesBundleS3ObjectVersion,
    LbTrustStoreName? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ca_certificates_bundle_s3_bucket': caCertificatesBundleS3Bucket,
           'ca_certificates_bundle_s3_key': caCertificatesBundleS3Key,
           'ca_certificates_bundle_s3_object_version':
               ?caCertificatesBundleS3ObjectVersion,
           ...?name?.argMap,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbTrustStoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLbTrustStore>`.
  RefTo<AwsLbTrustStore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `arn_suffix` attribute.
  TfRef<String> get arnSuffix => TfRef.attribute<String>(this, 'arn_suffix');
}
