// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_node_template`.
const Set<String> _googleComputeNodeTemplateSensitive = <String>{};

/// Compute Node Template Cpu Overcommit enum for `cpu_overcommit_type`.
enum ComputeNodeTemplateCpuOvercommitType implements TerraformEnum {
  enabled('ENABLED'),
  none('NONE');

  const ComputeNodeTemplateCpuOvercommitType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `accelerators` block of
/// `google_compute_node_template` (derived from provider schema).
@immutable
final class ComputeNodeTemplateAccelerators {
  const ComputeNodeTemplateAccelerators({
    this.acceleratorCount,
    this.acceleratorType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  Map<String, Object?> encode() => {
    if (acceleratorCount != null)
      'accelerator_count': acceleratorCount!.toTfJson(),
    if (acceleratorType != null)
      'accelerator_type': acceleratorType!.toTfJson(),
  };
}

/// Typed helper for the `disks` block of
/// `google_compute_node_template` (derived from provider schema).
@immutable
final class ComputeNodeTemplateDisks {
  const ComputeNodeTemplateDisks({
    this.diskCount,
    this.diskSizeGb,
    this.diskType,
  });

  final TfArg<num>? diskCount;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? diskType;

  Map<String, Object?> encode() => {
    if (diskCount != null) 'disk_count': diskCount!.toTfJson(),
    if (diskSizeGb != null) 'disk_size_gb': diskSizeGb!.toTfJson(),
    if (diskType != null) 'disk_type': diskType!.toTfJson(),
  };
}

/// Typed helper for the `node_type_flexibility` block of
/// `google_compute_node_template` (derived from provider schema).
@immutable
final class ComputeNodeTemplateNodeTypeFlexibility {
  const ComputeNodeTemplateNodeTypeFlexibility({this.cpus, this.memory});

  final TfArg<String>? cpus;

  final TfArg<String>? memory;

  Map<String, Object?> encode() => {
    if (cpus != null) 'cpus': cpus!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
  };
}

/// Typed helper for the `server_binding` block of
/// `google_compute_node_template` (derived from provider schema).
@immutable
final class ComputeNodeTemplateServerBinding {
  const ComputeNodeTemplateServerBinding({required this.type});

  final TfArg<ComputeNodeTemplateServerBindingType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum ComputeNodeTemplateServerBindingType implements TerraformEnum {
  restartNodeOnAnyServer('RESTART_NODE_ON_ANY_SERVER'),
  restartNodeOnMinimalServers('RESTART_NODE_ON_MINIMAL_SERVERS');

  const ComputeNodeTemplateServerBindingType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_node_template`.
///
/// Represents a NodeTemplate resource. Node templates specify properties for
/// creating sole-tenant nodes, such as node type, vCPU and memory requirements,
/// node affinity labels, and region.
///
/// Compute Engine **sole-tenant node template** — defines node type /
/// flexibility, disks, and accelerators for [GoogleComputeNodeGroup].
///
/// **Cost / apply:** Sole-tenant nodes bill dedicated host capacity while a
/// node group exists (e.g. N4A Sole Tenancy Instance Core Iowa SKU
/// `6DD8-C2A8-A106` **$0.02646/h** + Sole Tenancy Premium SKU
/// `0F1E-4428-FCCB` **$0.002646/h** on Compute Engine `6F81-5844-456A`).
/// The template alone is metadata, but it only exists to create billed
/// node groups — ships debt-only with the sole-tenant family. **Never**
/// wire into apply-smoke.
///
/// Specify either [nodeType] or [nodeTypeFlexibility] (not both).
final class GoogleComputeNodeTemplate extends Resource {
  static const String tfType = 'google_compute_node_template';

  GoogleComputeNodeTemplate({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? nodeType,
    ComputeNodeTemplateNodeTypeFlexibility? nodeTypeFlexibility,
    TfArg<ComputeNodeTemplateCpuOvercommitType>? cpuOvercommitType,
    TfArg<Map<String, String>>? nodeAffinityLabels,
    List<ComputeNodeTemplateAccelerators>? accelerators,
    List<ComputeNodeTemplateDisks>? disks,
    ComputeNodeTemplateServerBinding? serverBinding,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (nodeType != null) 'node_type': nodeType,
           if (nodeTypeFlexibility != null)
             'node_type_flexibility': TfArg.literal(
               nodeTypeFlexibility.encode(),
             ),
           if (cpuOvercommitType != null)
             'cpu_overcommit_type': cpuOvercommitType,
           if (nodeAffinityLabels != null)
             'node_affinity_labels': nodeAffinityLabels,
           if (accelerators != null)
             'accelerators': TfArg.literal([
               for (final e in accelerators) e.encode(),
             ]),
           if (disks != null)
             'disks': TfArg.literal([for (final e in disks) e.encode()]),
           if (serverBinding != null)
             'server_binding': TfArg.literal(serverBinding.encode()),
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNodeTemplateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` / self-link style id attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` for [GoogleComputeNodeGroup.nodeTemplate].
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
