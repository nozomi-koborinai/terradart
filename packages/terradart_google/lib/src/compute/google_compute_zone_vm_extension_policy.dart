// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_zone_vm_extension_policy`.
const Set<String> _googleComputeZoneVmExtensionPolicySensitive = <String>{};

/// Typed helper for the `extension_policies` block of
/// `google_compute_zone_vm_extension_policy` (derived from provider schema).
@immutable
final class ComputeZoneVmExtensionPolicyExtensionPolicies {
  const ComputeZoneVmExtensionPolicyExtensionPolicies({
    required this.extensionName,
    this.pinnedVersion,
    this.stringConfig,
  });

  final TfArg<String> extensionName;

  final TfArg<String>? pinnedVersion;

  final TfArg<String>? stringConfig;

  Map<String, Object?> encode() => {
    'extension_name': extensionName.toTfJson(),
    'pinned_version': ?pinnedVersion?.toTfJson(),
    'string_config': ?stringConfig?.toTfJson(),
  };
}

/// Typed helper for the `instance_selectors` block of
/// `google_compute_zone_vm_extension_policy` (derived from provider schema).
@immutable
final class ComputeZoneVmExtensionPolicyInstanceSelectors {
  const ComputeZoneVmExtensionPolicyInstanceSelectors({this.labelSelector});

  final ComputeZoneVmExtensionPolicyLabelSelector? labelSelector;

  Map<String, Object?> encode() => {'label_selector': ?labelSelector?.encode()};
}

/// Typed helper for the `instance_selectors.label_selector` block of
/// `google_compute_zone_vm_extension_policy` (derived from provider schema).
@immutable
final class ComputeZoneVmExtensionPolicyLabelSelector {
  const ComputeZoneVmExtensionPolicyLabelSelector({this.inclusionLabels});

  final TfArg<Map<String, String>>? inclusionLabels;

  Map<String, Object?> encode() => {
    'inclusion_labels': ?inclusionLabels?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_zone_vm_extension_policy`.
final class GoogleComputeZoneVmExtensionPolicy extends Resource {
  static const String tfType = 'google_compute_zone_vm_extension_policy';

  GoogleComputeZoneVmExtensionPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> zone,
    required List<ComputeZoneVmExtensionPolicyExtensionPolicies>
    extensionPolicies,
    TfArg<String>? description,
    List<ComputeZoneVmExtensionPolicyInstanceSelectors>? instanceSelectors,
    TfArg<String>? deletionPolicy,
    TfArg<num>? priority,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'zone': zone,
           'extension_policies': TfArg.literal([
             for (final e in extensionPolicies) e.encode(),
           ]),
           'description': ?description,
           if (instanceSelectors != null)
             'instance_selectors': TfArg.literal([
               for (final e in instanceSelectors) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'priority': ?priority,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeZoneVmExtensionPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeZoneVmExtensionPolicy>`.
  RefTo<GoogleComputeZoneVmExtensionPolicy> get ref => RefTo.of(this);

  TfRef<String> get name => TfRef.attribute<String>(this, 'name');
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
