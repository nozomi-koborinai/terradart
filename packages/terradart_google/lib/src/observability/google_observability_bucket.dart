// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_observability_bucket`.
const Set<String> _googleObservabilityBucketSensitive = <String>{};

/// Typed helper for the `cmek_settings` block of
/// `google_observability_bucket` (derived from provider schema).
@immutable
final class ObservabilityBucketCmekSettings {
  const ObservabilityBucketCmekSettings({this.kmsKey});

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  Map<String, Object?> encode() => {
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `google_observability_bucket`.
///
/// Bucket configuration for storing observability data.
final class GoogleObservabilityBucket extends Resource {
  static const String tfType = 'google_observability_bucket';

  GoogleObservabilityBucket({
    required super.localName,
    required TfArg<String> bucketId,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    ObservabilityBucketCmekSettings? cmekSettings,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_id': bucketId,
           'location': location,
           'display_name': ?displayName,
           'description': ?description,
           if (cmekSettings != null)
             'cmek_settings': TfArg.literal(cmekSettings.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleObservabilityBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleObservabilityBucket>`.
  RefTo<GoogleObservabilityBucket> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `purge_time` attribute.
  TfRef<String> get purgeTime => TfRef.attribute<String>(this, 'purge_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
