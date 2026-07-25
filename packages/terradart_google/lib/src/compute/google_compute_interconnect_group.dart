// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_interconnect_group`.
const Set<String> _googleComputeInterconnectGroupSensitive = <String>{};

/// Typed helper for the `intent` block of
/// `google_compute_interconnect_group` (derived from provider schema).
@immutable
final class ComputeInterconnectGroupIntent {
  const ComputeInterconnectGroupIntent({this.topologyCapability});

  final TfArg<ComputeInterconnectGroupIntentTopologyCapability>?
  topologyCapability;

  Map<String, Object?> encode() => {
    if (topologyCapability != null)
      'topology_capability': topologyCapability!.toTfJson(),
  };
}

/// `topology_capability` — derived from the provider schema description.
enum ComputeInterconnectGroupIntentTopologyCapability implements TerraformEnum {
  productionNonCritical('PRODUCTION_NON_CRITICAL'),
  productionCritical('PRODUCTION_CRITICAL'),
  noSla('NO_SLA'),
  availabilitySlaUnspecified('AVAILABILITY_SLA_UNSPECIFIED');

  const ComputeInterconnectGroupIntentTopologyCapability(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `interconnects` block of
/// `google_compute_interconnect_group` (derived from provider schema).
@immutable
final class ComputeInterconnectGroupInterconnects {
  const ComputeInterconnectGroupInterconnects({
    this.interconnect,
    required this.name,
  });

  final TfArg<String>? interconnect;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (interconnect != null) 'interconnect': interconnect!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_interconnect_group`.
///
/// An interconnect group resource allows customers to create, analyze, and
/// expand their redundant connections.
///
/// Compute Engine **Interconnect group** — groups Dedicated / Partner
/// Interconnects for topology / SLA intent.
///
/// **Cost / apply:** Physical interconnect circuits bill while provisioned
/// (e.g. Cloud Interconnect 10Gbps Dedicated circuit SKU `B8C8-2F76-E648`
/// **$2.328/h** on Compute Engine `6F81-5844-456A`). Group config is
/// meaningless without those circuits — debt-only. **Never** wire into
/// apply-smoke.
///
/// [intent] is required (topology capability / SLA intent).
final class GoogleComputeInterconnectGroup extends Resource {
  static const String tfType = 'google_compute_interconnect_group';

  GoogleComputeInterconnectGroup({
    required super.localName,
    required TfArg<String> name,
    required ComputeInterconnectGroupIntent intent,
    List<ComputeInterconnectGroupInterconnects>? interconnects,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'intent': TfArg.literal(intent.encode()),
           if (interconnects != null)
             'interconnects': TfArg.literal([
               for (final e in interconnects) e.encode(),
             ]),
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInterconnectGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configured` attribute.
  TfRef<List<Map<String, Object?>>> get configured =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'configured');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `physical_structure` attribute.
  TfRef<List<Map<String, Object?>>> get physicalStructure =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'physical_structure');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
