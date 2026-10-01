// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_cloudhsm_v2_cluster`.
const Set<String> _awsCloudhsmV2ClusterSensitive = <String>{};

/// Cloudhsm V2 Cluster Hsm enum for `hsm_type`.
extension type const CloudhsmV2ClusterHsmType._(TfArg<String> _)
    implements TfArg<String> {
  CloudhsmV2ClusterHsmType.variable(String name) : this._(TfArg.variable(name));
  CloudhsmV2ClusterHsmType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudhsmV2ClusterHsmType.arg(TfArg<String> arg) : this._(arg);

  static const hsm1Medium = CloudhsmV2ClusterHsmType._(
    TfArgLiteral('hsm1.medium'),
  );
  static const hsm2mMedium = CloudhsmV2ClusterHsmType._(
    TfArgLiteral('hsm2m.medium'),
  );

  static const List<CloudhsmV2ClusterHsmType> values = [
    hsm1Medium,
    hsm2mMedium,
  ];
}

/// Cloudhsm V2 Cluster enum for `mode`.
extension type const CloudhsmV2ClusterMode._(TfArg<String> _)
    implements TfArg<String> {
  CloudhsmV2ClusterMode.variable(String name) : this._(TfArg.variable(name));
  CloudhsmV2ClusterMode.expression(String template)
    : this._(TfArg.expression(template));
  const CloudhsmV2ClusterMode.arg(TfArg<String> arg) : this._(arg);

  static const fips = CloudhsmV2ClusterMode._(TfArgLiteral('FIPS'));
  static const nonFips = CloudhsmV2ClusterMode._(TfArgLiteral('NON_FIPS'));

  static const List<CloudhsmV2ClusterMode> values = [fips, nonFips];
}

/// Factory wrapper for `aws_cloudhsm_v2_cluster`.
final class AwsCloudhsmV2Cluster extends Resource {
  static const String tfType = 'aws_cloudhsm_v2_cluster';

  AwsCloudhsmV2Cluster(
    super.localName, {
    required CloudhsmV2ClusterHsmType hsmType,
    CloudhsmV2ClusterMode? mode,
    TfArg<String>? region,
    TfArg<String>? sourceBackupIdentifier,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hsm_type': hsmType,
           'mode': ?mode,
           'region': ?region,
           'source_backup_identifier': ?sourceBackupIdentifier,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudhsmV2ClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudhsmV2Cluster>`.
  RefTo<AwsCloudhsmV2Cluster> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_certificates` attribute.
  TfRef<List<Map<String, Object?>>> get clusterCertificates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_certificates');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `cluster_state` attribute.
  TfRef<String> get clusterState =>
      TfRef.attribute<String>(this, 'cluster_state');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `hsm_type` attribute.
  TfRef<String> get hsmType => TfRef.attribute<String>(this, 'hsm_type');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_backup_identifier` attribute.
  TfRef<String> get sourceBackupIdentifier =>
      TfRef.attribute<String>(this, 'source_backup_identifier');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
