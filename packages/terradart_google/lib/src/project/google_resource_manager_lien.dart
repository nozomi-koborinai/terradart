// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_resource_manager_lien`.
const Set<String> _googleResourceManagerLienSensitive = <String>{};

/// Factory wrapper for `google_resource_manager_lien`.
///
/// A Lien represents an encumbrance on the actions that can be performed on a
/// resource.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleResourceManagerLien extends Resource {
  static const String tfType = 'google_resource_manager_lien';

  GoogleResourceManagerLien({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> origin,
    required TfArg<String> parent,
    required TfArg<String> reason,
    required TfArg<List<String>> restrictions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'origin': origin,
           'parent': parent,
           'reason': reason,
           'restrictions': restrictions,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleResourceManagerLienSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
