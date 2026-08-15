// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_resource_manager_capability`.
const Set<String> _googleResourceManagerCapabilitySensitive = <String>{};

/// Factory wrapper for `google_resource_manager_capability`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleResourceManagerCapability extends Resource {
  static const String tfType = 'google_resource_manager_capability';

  GoogleResourceManagerCapability({
    required super.localName,
    required TfArg<String> capabilityName,
    required TfArg<String> parent,
    required TfArg<bool> value,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capability_name': capabilityName,
           'parent': parent,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleResourceManagerCapabilitySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
