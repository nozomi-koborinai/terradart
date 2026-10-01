// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_node_template`.
const Set<String> _googleComputeNodeTemplateSensitive = <String>{};

/// Compute Node Template Cpu Overcommit enum for `cpu_overcommit_type`.
extension type const ComputeNodeTemplateCpuOvercommitType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeNodeTemplateCpuOvercommitType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeNodeTemplateCpuOvercommitType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeNodeTemplateCpuOvercommitType.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = ComputeNodeTemplateCpuOvercommitType._(
    TfArgLiteral('ENABLED'),
  );
  static const none = ComputeNodeTemplateCpuOvercommitType._(
    TfArgLiteral('NONE'),
  );

  static const List<ComputeNodeTemplateCpuOvercommitType> values = [
    enabled,
    none,
  ];
}

/// At most one of `node_type`, `node_type_flexibility` on `google_compute_node_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.nodeType(...)`.
sealed class ComputeNodeTemplateNodeType {
  const ComputeNodeTemplateNodeType();

  /// Sets `node_type`.
  const factory ComputeNodeTemplateNodeType.nodeType(TfArg<String> nodeType) =
      ComputeNodeTemplateNodeTypeChoice;

  /// Sets `node_type_flexibility`.
  const factory ComputeNodeTemplateNodeType.nodeTypeFlexibility(
    ComputeNodeTemplateNodeTypeFlexibility nodeTypeFlexibility,
  ) = ComputeNodeTemplateNodeTypeFlexibilityChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeNodeTemplateNodeType.nodeType] choice: sets `node_type`.
final class ComputeNodeTemplateNodeTypeChoice
    extends ComputeNodeTemplateNodeType {
  const ComputeNodeTemplateNodeTypeChoice(this.nodeType);

  final TfArg<String> nodeType;

  @override
  String get blockKey => 'node_type';

  @override
  Map<String, Object?> encode() => {'node_type': nodeType.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'node_type': nodeType};
}

/// The [ComputeNodeTemplateNodeType.nodeTypeFlexibility] choice: sets `node_type_flexibility`.
final class ComputeNodeTemplateNodeTypeFlexibilityChoice
    extends ComputeNodeTemplateNodeType {
  const ComputeNodeTemplateNodeTypeFlexibilityChoice(this.nodeTypeFlexibility);

  final ComputeNodeTemplateNodeTypeFlexibility nodeTypeFlexibility;

  @override
  String get blockKey => 'node_type_flexibility';

  @override
  Map<String, Object?> encode() => {
    'node_type_flexibility': nodeTypeFlexibility.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'node_type_flexibility': TfArg.literal(nodeTypeFlexibility.encode()),
  };
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
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
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
    'disk_count': ?diskCount?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
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
    'cpus': ?cpus?.toTfJson(),
    'memory': ?memory?.toTfJson(),
  };
}

/// Typed helper for the `server_binding` block of
/// `google_compute_node_template` (derived from provider schema).
@immutable
final class ComputeNodeTemplateServerBinding {
  const ComputeNodeTemplateServerBinding({required this.type});

  final ComputeNodeTemplateType type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const ComputeNodeTemplateType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeNodeTemplateType.variable(String name) : this._(TfArg.variable(name));
  ComputeNodeTemplateType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeNodeTemplateType.arg(TfArg<String> arg) : this._(arg);

  static const restartNodeOnAnyServer = ComputeNodeTemplateType._(
    TfArgLiteral('RESTART_NODE_ON_ANY_SERVER'),
  );
  static const restartNodeOnMinimalServers = ComputeNodeTemplateType._(
    TfArgLiteral('RESTART_NODE_ON_MINIMAL_SERVERS'),
  );

  static const List<ComputeNodeTemplateType> values = [
    restartNodeOnAnyServer,
    restartNodeOnMinimalServers,
  ];
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

  GoogleComputeNodeTemplate(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    ComputeNodeTemplateNodeType? nodeType,
    ComputeNodeTemplateCpuOvercommitType? cpuOvercommitType,
    TfArg<Map<String, String>>? nodeAffinityLabels,
    List<ComputeNodeTemplateAccelerators>? accelerators,
    List<ComputeNodeTemplateDisks>? disks,
    ComputeNodeTemplateServerBinding? serverBinding,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           ...?nodeType?.argMap,
           'cpu_overcommit_type': ?cpuOvercommitType,
           'node_affinity_labels': ?nodeAffinityLabels,
           if (accelerators != null)
             'accelerators': TfArg.literal([
               for (final e in accelerators) e.encode(),
             ]),
           if (disks != null)
             'disks': TfArg.literal([for (final e in disks) e.encode()]),
           if (serverBinding != null)
             'server_binding': TfArg.literal(serverBinding.encode()),
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNodeTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNodeTemplate>`.
  RefTo<GoogleComputeNodeTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `cpu_overcommit_type` attribute.
  TfRef<String> get cpuOvercommitType =>
      TfRef.attribute<String>(this, 'cpu_overcommit_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `node_affinity_labels` attribute.
  TfRef<Map<String, String>> get nodeAffinityLabels =>
      TfRef.attribute<Map<String, String>>(this, 'node_affinity_labels');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `self_link` for [GoogleComputeNodeGroup.nodeTemplate].
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
