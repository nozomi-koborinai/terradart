// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kms/google_kms_key_ring.dart';

/// Sensitive field paths for `google_kms_key_ring`.
const Set<String> _googleKmsKeyRingSensitive = <String>{};

/// Factory wrapper for `google_kms_key_ring`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsKeyRing extends Data {
  static const String tfType = 'google_kms_key_ring';

  DataGoogleKmsKeyRing({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'name': name, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingSensitive;

  /// A reference to the `google_kms_key_ring` this data source reads, for
  /// arguments typed `RefTo<GoogleKmsKeyRing>`.
  RefTo<GoogleKmsKeyRing> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
