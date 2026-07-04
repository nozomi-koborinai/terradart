// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_zone_vm_extension_policy`.
const Set<String> _googleComputeZoneVmExtensionPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_zone_vm_extension_policy`.
final class GoogleComputeZoneVmExtensionPolicy extends Resource {
  static const String tfType = 'google_compute_zone_vm_extension_policy';

  GoogleComputeZoneVmExtensionPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> zone,
    required TfArg<List<Map<String, dynamic>>> extensionPolicies,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'zone': zone,
           'extension_policies': extensionPolicies,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeZoneVmExtensionPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `kind` attribute.
  TfRef<String> get kind => TfRef.attribute<String>(this, 'kind');

  /// Reference to `managed_by_global` attribute.
  TfRef<bool> get managedByGlobal =>
      TfRef.attribute<bool>(this, 'managed_by_global');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
