// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vpc_access_connector`.
const Set<String> _googleVpcAccessConnectorSensitive = <String>{};

/// `subnet` block — pin the connector to an existing subnetwork instead of
/// allocating a dedicated `/28` via [GoogleVpcAccessConnector.ipCidrRange].
@immutable
class VpcAccessConnectorSubnet {
  const VpcAccessConnectorSubnet({this.name, this.projectId});

  /// Relative subnet name (not the full self_link).
  final TfArg<String>? name;

  /// Host project when the subnet lives in a Shared VPC host project.
  final TfArg<String>? projectId;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
  };
}

/// At most one of `min_throughput`, `min_instances` on `google_vpc_access_connector`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.minThroughput(...)`.
sealed class VpcAccessConnectorMinThroughputOrMinInstances {
  const VpcAccessConnectorMinThroughputOrMinInstances();

  /// Sets `min_throughput`.
  const factory VpcAccessConnectorMinThroughputOrMinInstances.minThroughput(
    TfArg<num> minThroughput,
  ) = VpcAccessConnectorMinThroughputOrMinInstancesMinThroughput;

  /// Sets `min_instances`.
  const factory VpcAccessConnectorMinThroughputOrMinInstances.minInstances(
    TfArg<num> minInstances,
  ) = VpcAccessConnectorMinThroughputOrMinInstancesMinInstances;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VpcAccessConnectorMinThroughputOrMinInstances.minThroughput] choice: sets `min_throughput`.
final class VpcAccessConnectorMinThroughputOrMinInstancesMinThroughput
    extends VpcAccessConnectorMinThroughputOrMinInstances {
  const VpcAccessConnectorMinThroughputOrMinInstancesMinThroughput(
    this.minThroughput,
  );

  final TfArg<num> minThroughput;

  @override
  String get blockKey => 'min_throughput';

  @override
  Map<String, Object?> encode() => {'min_throughput': minThroughput.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'min_throughput': minThroughput};
}

/// The [VpcAccessConnectorMinThroughputOrMinInstances.minInstances] choice: sets `min_instances`.
final class VpcAccessConnectorMinThroughputOrMinInstancesMinInstances
    extends VpcAccessConnectorMinThroughputOrMinInstances {
  const VpcAccessConnectorMinThroughputOrMinInstancesMinInstances(
    this.minInstances,
  );

  final TfArg<num> minInstances;

  @override
  String get blockKey => 'min_instances';

  @override
  Map<String, Object?> encode() => {'min_instances': minInstances.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'min_instances': minInstances};
}

/// At most one of `max_instances`, `max_throughput` on `google_vpc_access_connector`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.maxInstances(...)`.
sealed class VpcAccessConnectorMaxInstancesOrMaxThroughput {
  const VpcAccessConnectorMaxInstancesOrMaxThroughput();

  /// Sets `max_instances`.
  const factory VpcAccessConnectorMaxInstancesOrMaxThroughput.maxInstances(
    TfArg<num> maxInstances,
  ) = VpcAccessConnectorMaxInstancesOrMaxThroughputMaxInstances;

  /// Sets `max_throughput`.
  const factory VpcAccessConnectorMaxInstancesOrMaxThroughput.maxThroughput(
    TfArg<num> maxThroughput,
  ) = VpcAccessConnectorMaxInstancesOrMaxThroughputMaxThroughput;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VpcAccessConnectorMaxInstancesOrMaxThroughput.maxInstances] choice: sets `max_instances`.
final class VpcAccessConnectorMaxInstancesOrMaxThroughputMaxInstances
    extends VpcAccessConnectorMaxInstancesOrMaxThroughput {
  const VpcAccessConnectorMaxInstancesOrMaxThroughputMaxInstances(
    this.maxInstances,
  );

  final TfArg<num> maxInstances;

  @override
  String get blockKey => 'max_instances';

  @override
  Map<String, Object?> encode() => {'max_instances': maxInstances.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'max_instances': maxInstances};
}

/// The [VpcAccessConnectorMaxInstancesOrMaxThroughput.maxThroughput] choice: sets `max_throughput`.
final class VpcAccessConnectorMaxInstancesOrMaxThroughputMaxThroughput
    extends VpcAccessConnectorMaxInstancesOrMaxThroughput {
  const VpcAccessConnectorMaxInstancesOrMaxThroughputMaxThroughput(
    this.maxThroughput,
  );

  final TfArg<num> maxThroughput;

  @override
  String get blockKey => 'max_throughput';

  @override
  Map<String, Object?> encode() => {'max_throughput': maxThroughput.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'max_throughput': maxThroughput};
}

/// Factory wrapper for `google_vpc_access_connector`.
///
/// Serverless VPC Access connector resource.
///
/// Serverless VPC Access connector — a managed proxy that lets Cloud Run,
/// Cloud Functions, and App Engine reach resources on a VPC (private IPs,
/// Memorystore, Cloud SQL private IP, etc.) without public endpoints.
///
/// Two placement modes (mutually exclusive at the provider level):
///
/// 1. **Dedicated CIDR** — set [ipCidrRange] (a `/28` RFC 4632 range) and
///    [network] (VPC name or self_link). GCP creates a connector subnet.
/// 2. **Existing subnet** — set [subnet] ([VpcAccessConnectorSubnet]) with
///    the relative subnet name (and optional host [projectId] for Shared VPC).
///
/// Downstream serverless resources reference the connector's [selfLink]
/// (full `projects/.../locations/.../connectors/...` path). For example,
/// [GoogleCloudRunV2Service] accepts it on
/// `template.vpcAccess.connector` via [CloudRunV2ServiceVpcAccess].
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_vpc_access_connector.`).
/// - [name]: connector ID (max 25 characters).
///
/// Example (CIDR mode — see also `cloud_run_quickstart`):
/// ```dart
/// final connector = GoogleVpcAccessConnector(
///   localName: 'run_vpc',
///   name: TfArg.literal('run-vpc'),
///   region: TfArg.literal('asia-northeast1'),
///   ipCidrRange: TfArg.literal('10.8.0.0/28'),
///   network: TfArg.literal('default'),
/// );
/// ```
final class GoogleVpcAccessConnector extends Resource {
  static const String tfType = 'google_vpc_access_connector';

  GoogleVpcAccessConnector({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? ipCidrRange,
    TfArg<String>? network,
    VpcAccessConnectorSubnet? subnet,
    TfArg<String>? machineType,
    VpcAccessConnectorMinThroughputOrMinInstances? minThroughputOrMinInstances,
    VpcAccessConnectorMaxInstancesOrMaxThroughput? maxInstancesOrMaxThroughput,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (ipCidrRange != null) 'ip_cidr_range': ipCidrRange,
           if (network != null) 'network': network,
           if (subnet != null) 'subnet': TfArg.literal([subnet.encode()]),
           if (machineType != null) 'machine_type': machineType,
           ...?minThroughputOrMinInstances?.argMap,
           ...?maxInstancesOrMaxThroughput?.argMap,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVpcAccessConnectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVpcAccessConnector>`.
  RefTo<GoogleVpcAccessConnector> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connected_projects` attribute.
  TfRef<List<String>> get connectedProjects =>
      TfRef.attribute<List<String>>(this, 'connected_projects');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
