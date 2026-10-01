// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_cluster_endpoint`.
const Set<String> _awsRdsClusterEndpointSensitive = <String>{};

/// Rds Cluster Endpoint Custom Endpoint enum for `custom_endpoint_type`.
extension type const RdsClusterEndpointCustomEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  RdsClusterEndpointCustomEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  RdsClusterEndpointCustomEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const RdsClusterEndpointCustomEndpointType.arg(TfArg<String> arg)
    : this._(arg);

  static const reader = RdsClusterEndpointCustomEndpointType._(
    TfArgLiteral('READER'),
  );
  static const any = RdsClusterEndpointCustomEndpointType._(
    TfArgLiteral('ANY'),
  );

  static const List<RdsClusterEndpointCustomEndpointType> values = [
    reader,
    any,
  ];
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
  ) = RdsClusterEndpointExcludedMembers;

  /// Sets `static_members`.
  const factory RdsClusterEndpointMembers.staticMembers(
    TfArg<List<String>> staticMembers,
  ) = RdsClusterEndpointStaticMembers;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsClusterEndpointMembers.excludedMembers] choice: sets `excluded_members`.
final class RdsClusterEndpointExcludedMembers
    extends RdsClusterEndpointMembers {
  const RdsClusterEndpointExcludedMembers(this.excludedMembers);

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
final class RdsClusterEndpointStaticMembers extends RdsClusterEndpointMembers {
  const RdsClusterEndpointStaticMembers(this.staticMembers);

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

  AwsRdsClusterEndpoint(
    super.localName, {
    required TfArg<String> clusterEndpointIdentifier,
    required TfArg<String> clusterIdentifier,
    required RdsClusterEndpointCustomEndpointType customEndpointType,
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

  /// Reference to `cluster_endpoint_identifier` attribute.
  TfRef<String> get clusterEndpointIdentifier =>
      TfRef.attribute<String>(this, 'cluster_endpoint_identifier');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `custom_endpoint_type` attribute.
  TfRef<String> get customEndpointType =>
      TfRef.attribute<String>(this, 'custom_endpoint_type');

  /// Reference to `excluded_members` attribute.
  TfRef<List<String>> get excludedMembers =>
      TfRef.attribute<List<String>>(this, 'excluded_members');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `static_members` attribute.
  TfRef<List<String>> get staticMembers =>
      TfRef.attribute<List<String>>(this, 'static_members');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
