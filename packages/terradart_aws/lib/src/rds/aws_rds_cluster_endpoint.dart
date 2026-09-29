// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_cluster_endpoint`.
const Set<String> _awsRdsClusterEndpointSensitive = <String>{};

/// Rds Cluster Endpoint Custom Endpoint enum for `custom_endpoint_type`.
enum RdsClusterEndpointCustomEndpointType implements TerraformEnum {
  reader('READER'),
  any('ANY');

  const RdsClusterEndpointCustomEndpointType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `excluded_members`, `static_members` on `aws_rds_cluster_endpoint`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludedMembers(...)`.
sealed class RdsClusterEndpointMembers {
  const RdsClusterEndpointMembers();

  /// Sets `excluded_members`.
  const factory RdsClusterEndpointMembers.excludedMembers(
    TfArg<List<String>> excludedMembers,
  ) = RdsClusterEndpointMembersExcludedMembers;

  /// Sets `static_members`.
  const factory RdsClusterEndpointMembers.staticMembers(
    TfArg<List<String>> staticMembers,
  ) = RdsClusterEndpointMembersStaticMembers;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsClusterEndpointMembers.excludedMembers] choice: sets `excluded_members`.
final class RdsClusterEndpointMembersExcludedMembers
    extends RdsClusterEndpointMembers {
  const RdsClusterEndpointMembersExcludedMembers(this.excludedMembers);

  final TfArg<List<String>> excludedMembers;

  @override
  String get blockKey => 'excluded_members';

  @override
  Map<String, Object?> encode() => {
    'excluded_members': excludedMembers.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'excluded_members': excludedMembers,
  };
}

/// The [RdsClusterEndpointMembers.staticMembers] choice: sets `static_members`.
final class RdsClusterEndpointMembersStaticMembers
    extends RdsClusterEndpointMembers {
  const RdsClusterEndpointMembersStaticMembers(this.staticMembers);

  final TfArg<List<String>> staticMembers;

  @override
  String get blockKey => 'static_members';

  @override
  Map<String, Object?> encode() => {'static_members': staticMembers.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'static_members': staticMembers};
}

/// Factory wrapper for `aws_rds_cluster_endpoint`.
final class AwsRdsClusterEndpoint extends Resource {
  static const String tfType = 'aws_rds_cluster_endpoint';

  AwsRdsClusterEndpoint({
    required super.localName,
    required TfArg<String> clusterEndpointIdentifier,
    required TfArg<String> clusterIdentifier,
    required TfArg<RdsClusterEndpointCustomEndpointType> customEndpointType,
    RdsClusterEndpointMembers? members,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_endpoint_identifier': clusterEndpointIdentifier,
           'cluster_identifier': clusterIdentifier,
           'custom_endpoint_type': customEndpointType,
           ...?members?.argMap,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsClusterEndpoint>`.
  RefTo<AwsRdsClusterEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');
}
