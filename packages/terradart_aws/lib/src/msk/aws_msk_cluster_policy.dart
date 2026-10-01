// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_cluster_policy`.
const Set<String> _awsMskClusterPolicySensitive = <String>{};

/// Factory wrapper for `aws_msk_cluster_policy`.
final class AwsMskClusterPolicy extends Resource {
  static const String tfType = 'aws_msk_cluster_policy';

  AwsMskClusterPolicy(
    super.localName, {
    required TfArg<String> clusterArn,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_arn': clusterArn,
           'policy': policy,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskClusterPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskClusterPolicy>`.
  RefTo<AwsMskClusterPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `current_version` attribute.
  TfRef<String> get currentVersion =>
      TfRef.attribute<String>(this, 'current_version');

  /// Reference to `cluster_arn` attribute.
  TfRef<String> get clusterArn => TfRef.attribute<String>(this, 'cluster_arn');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
