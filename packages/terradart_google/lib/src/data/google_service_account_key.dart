// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iam/google_service_account_key.dart';

/// Sensitive field paths for `google_service_account_key`.
const Set<String> _googleServiceAccountKeySensitive = <String>{};

/// Factory wrapper for `google_service_account_key`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleServiceAccountKey extends Data {
  static const String tfType = 'google_service_account_key';

  DataGoogleServiceAccountKey({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? publicKeyType,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'public_key_type': ?publicKeyType},
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountKeySensitive;

  /// A reference to the `google_service_account_key` this data source reads, for
  /// arguments typed `RefTo<GoogleServiceAccountKey>`.
  RefTo<GoogleServiceAccountKey> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_algorithm` attribute.
  TfRef<String> get keyAlgorithm =>
      TfRef.attribute<String>(this, 'key_algorithm');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `public_key_type` attribute.
  TfRef<String> get publicKeyTypeRef =>
      TfRef.attribute<String>(this, 'public_key_type');
}
