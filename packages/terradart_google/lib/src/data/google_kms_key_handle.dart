// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kms/google_kms_key_handle.dart';

/// Sensitive field paths for `google_kms_key_handle`.
const Set<String> _googleKmsKeyHandleSensitive = <String>{};

/// Factory wrapper for `google_kms_key_handle`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsKeyHandle extends Data {
  static const String tfType = 'google_kms_key_handle';

  DataGoogleKmsKeyHandle({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyHandleSensitive;

  /// A reference to the `google_kms_key_handle` this data source reads, for
  /// arguments typed `RefTo<GoogleKmsKeyHandle>`.
  RefTo<GoogleKmsKeyHandle> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `resource_type_selector` attribute.
  TfRef<String> get resourceTypeSelector =>
      TfRef.attribute<String>(this, 'resource_type_selector');
}
