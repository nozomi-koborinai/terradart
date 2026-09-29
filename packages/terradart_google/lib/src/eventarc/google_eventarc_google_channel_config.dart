// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_eventarc_google_channel_config`.
const Set<String> _googleEventarcGoogleChannelConfigSensitive = <String>{};

/// Factory wrapper for `google_eventarc_google_channel_config`.
///
/// The Eventarc GoogleChannelConfig resource
final class GoogleEventarcGoogleChannelConfig extends Resource {
  static const String tfType = 'google_eventarc_google_channel_config';

  GoogleEventarcGoogleChannelConfig({
    required super.localName,
    RefTo<GoogleKmsCryptoKey>? cryptoKeyName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crypto_key_name': ?cryptoKeyName?.encodeAs('id'),
           'location': location,
           'name': name,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleEventarcGoogleChannelConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcGoogleChannelConfig>`.
  RefTo<GoogleEventarcGoogleChannelConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
