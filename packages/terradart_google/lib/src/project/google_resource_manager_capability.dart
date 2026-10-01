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

  GoogleResourceManagerCapability(
    super.localName, {
    required TfArg<String> capabilityName,
    required TfArg<String> parent,
    required TfArg<bool> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleResourceManagerCapability>`.
  RefTo<GoogleResourceManagerCapability> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `capability_name` attribute.
  TfRef<String> get capabilityName =>
      TfRef.attribute<String>(this, 'capability_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `value` attribute.
  TfRef<bool> get value => TfRef.attribute<bool>(this, 'value');
}
