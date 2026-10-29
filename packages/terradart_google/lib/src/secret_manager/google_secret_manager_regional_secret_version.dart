// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../secret_manager/google_secret_manager_regional_secret.dart'
    show GoogleSecretManagerRegionalSecret;

/// Sensitive field paths for `google_secret_manager_regional_secret_version`.
const Set<String> _googleSecretManagerRegionalSecretVersionSensitive = <String>{
  'secret_data',
};

/// Exactly one of `secret_data`, `secret_data_wo` on `google_secret_manager_regional_secret_version`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.secretData(...)`.
sealed class SecretManagerRegionalSecretVersionPayload {
  const SecretManagerRegionalSecretVersionPayload();

  /// Sets `secret_data`.
  const factory SecretManagerRegionalSecretVersionPayload.secretData(
    Sensitive<String> secretData,
  ) = SecretManagerRegionalSecretVersionPayloadSecretData;

  /// Sets `secret_data_wo`.
  const factory SecretManagerRegionalSecretVersionPayload.secretDataWo(
    TfArg<String> secretDataWo,
  ) = SecretManagerRegionalSecretVersionPayloadSecretDataWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SecretManagerRegionalSecretVersionPayload.secretData] choice: sets `secret_data`.
final class SecretManagerRegionalSecretVersionPayloadSecretData
    extends SecretManagerRegionalSecretVersionPayload {
  const SecretManagerRegionalSecretVersionPayloadSecretData(this.secretData);

  final Sensitive<String> secretData;

  @internal
  @override
  String get blockKey => 'secret_data';

  @internal
  @override
  Map<String, Object?> encode() => {'secret_data': secretData.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'secret_data': secretData};
}

/// The [SecretManagerRegionalSecretVersionPayload.secretDataWo] choice: sets `secret_data_wo`.
final class SecretManagerRegionalSecretVersionPayloadSecretDataWo
    extends SecretManagerRegionalSecretVersionPayload {
  const SecretManagerRegionalSecretVersionPayloadSecretDataWo(
    this.secretDataWo,
  );

  final TfArg<String> secretDataWo;

  @internal
  @override
  String get blockKey => 'secret_data_wo';

  @internal
  @override
  Map<String, Object?> encode() => {'secret_data_wo': secretDataWo.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'secret_data_wo': secretDataWo};
}

/// Factory wrapper for `google_secret_manager_regional_secret_version`.
///
/// A regional secret version resource.
final class GoogleSecretManagerRegionalSecretVersion extends Resource {
  static const String tfType = 'google_secret_manager_regional_secret_version';

  GoogleSecretManagerRegionalSecretVersion(
    super.localName, {
    required RefTo<GoogleSecretManagerRegionalSecret> secret,
    required SecretManagerRegionalSecretVersionPayload payload,
    TfArg<String>? secretDataWoVersion,
    TfArg<bool>? enabled,
    TfArg<bool>? isSecretDataBase64,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret': secret.encodeAs('name'),
           ...payload.argMap,
           'secret_data_wo_version': ?secretDataWoVersion,
           'enabled': ?enabled,
           'is_secret_data_base64': ?isSecretDataBase64,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerRegionalSecretVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerRegionalSecretVersion>`.
  RefTo<GoogleSecretManagerRegionalSecretVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `customer_managed_encryption` attribute.
  TfRef<List<Map<String, Object?>>> get customerManagedEncryption =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'customer_managed_encryption',
      );

  /// Reference to `destroy_time` attribute.
  TfRef<String> get destroyTime =>
      TfRef.attribute<String>(this, 'destroy_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `is_secret_data_base64` attribute.
  TfRef<bool> get isSecretDataBase64 =>
      TfRef.attribute<bool>(this, 'is_secret_data_base64');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `secret_data` attribute.
  TfRef<String> get secretData => TfRef.attribute<String>(this, 'secret_data');

  /// Reference to `secret_data_wo_version` attribute.
  TfRef<String> get secretDataWoVersion =>
      TfRef.attribute<String>(this, 'secret_data_wo_version');
}
