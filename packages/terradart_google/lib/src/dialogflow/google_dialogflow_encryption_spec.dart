// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_encryption_spec`.
const Set<String> _googleDialogflowEncryptionSpecSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_dialogflow_encryption_spec` (derived from provider schema).
@immutable
final class DialogflowEncryptionSpecEncryptionSpec {
  const DialogflowEncryptionSpecEncryptionSpec({required this.kmsKey});

  final TfArg<String> kmsKey;

  Map<String, Object?> encode() => {'kms_key': kmsKey.toTfJson()};
}

/// Factory wrapper for `google_dialogflow_encryption_spec`.
///
/// Initializes a location-level encryption key specification.
///
/// Dialogflow CMEK encryption spec — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleDialogflowEncryptionSpec extends Resource {
  static const String tfType = 'google_dialogflow_encryption_spec';

  GoogleDialogflowEncryptionSpec({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    required DialogflowEncryptionSpecEncryptionSpec encryptionSpec,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           'encryption_spec': TfArg.literal(encryptionSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowEncryptionSpecSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
