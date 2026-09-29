// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_eventarc_channel`.
const Set<String> _googleEventarcChannelSensitive = <String>{};

/// Factory wrapper for `google_eventarc_channel`.
///
/// The Eventarc Channel resource
final class GoogleEventarcChannel extends Resource {
  static const String tfType = 'google_eventarc_channel';

  GoogleEventarcChannel({
    required super.localName,
    RefTo<GoogleKmsCryptoKey>? cryptoKeyName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? thirdPartyProvider,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crypto_key_name': ?cryptoKeyName?.encodeAs('id'),
           'labels': ?labels,
           'location': location,
           'name': name,
           'project': ?project,
           'third_party_provider': ?thirdPartyProvider,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcChannel>`.
  RefTo<GoogleEventarcChannel> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activation_token` attribute.
  TfRef<String> get activationToken =>
      TfRef.attribute<String>(this, 'activation_token');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `pubsub_topic` attribute.
  TfRef<String> get pubsubTopic =>
      TfRef.attribute<String>(this, 'pubsub_topic');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
