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

  final ComputeInterconnectGroupTopologyCapability? topologyCapability;

  Map<String, Object?> encode() => {
    'topology_capability': ?topologyCapability?.toTfJson(),
  };
}

/// `topology_capability` — derived from the provider schema description.
extension type const ComputeInterconnectGroupTopologyCapability._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeInterconnectGroupTopologyCapability.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInterconnectGroupTopologyCapability.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectGroupTopologyCapability.arg(TfArg<String> arg)
    : this._(arg);

  static const productionNonCritical =
      ComputeInterconnectGroupTopologyCapability._(
        TfArgLiteral('PRODUCTION_NON_CRITICAL'),
      );
  static const productionCritical =
      ComputeInterconnectGroupTopologyCapability._(
        TfArgLiteral('PRODUCTION_CRITICAL'),
      );
  static const noSla = ComputeInterconnectGroupTopologyCapability._(
    TfArgLiteral('NO_SLA'),
  );
  static const availabilitySlaUnspecified =
      ComputeInterconnectGroupTopologyCapability._(
        TfArgLiteral('AVAILABILITY_SLA_UNSPECIFIED'),
      );

  static const List<ComputeInterconnectGroupTopologyCapability> values = [
    productionNonCritical,
    productionCritical,
    noSla,
    availabilitySlaUnspecified,
  ];
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
    'interconnect': ?interconnect?.toTfJson(),
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

  GoogleComputeInterconnectGroup(
    super.localName, {
    required TfArg<String> name,
    required ComputeInterconnectGroupIntent intent,
    List<ComputeInterconnectGroupInterconnects>? interconnects,
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
           'intent': TfArg.literal(intent.encode()),
           if (interconnects != null)
             'interconnects': TfArg.literal([
               for (final e in interconnects) e.encode(),
             ]),
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInterconnectGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInterconnectGroup>`.
  RefTo<GoogleComputeInterconnectGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
