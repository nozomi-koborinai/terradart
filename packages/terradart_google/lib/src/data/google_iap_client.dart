// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_client`.
const Set<String> _googleIapClientSensitive = <String>{};

/// Factory wrapper for `google_iap_client`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIapClient extends Data {
  static const String tfType = 'google_iap_client';

  DataGoogleIapClient({
    required super.localName,
    required TfArg<String> brand,
    required TfArg<String> clientId,
  }) : super(
         terraformType: tfType,
         argMap: {'brand': brand, 'client_id': clientId},
       );

  @override
  Set<String> get sensitiveFields => _googleIapClientSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');
}
