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

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
