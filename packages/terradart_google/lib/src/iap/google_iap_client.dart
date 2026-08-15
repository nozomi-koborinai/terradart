// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_client`.
const Set<String> _googleIapClientSensitive = <String>{'secret'};

/// Factory wrapper for `google_iap_client`.
///
/// Contains the data that describes an Identity Aware Proxy owned client.
///
/// ~> **Note:** Only internal org clients can be created via declarative tools.
/// External clients must be manually created via the GCP console. This
/// restriction is due to the existing APIs and not lack of support in this
/// tool.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleIapClient extends Resource {
  static const String tfType = 'google_iap_client';

  GoogleIapClient({
    required super.localName,
    required TfArg<String> brand,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'brand': brand,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapClientSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');
}
