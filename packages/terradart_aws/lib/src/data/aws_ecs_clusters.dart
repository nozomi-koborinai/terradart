// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_clusters`.
const Set<String> _awsEcsClustersSensitive = <String>{};

/// Factory wrapper for `aws_ecs_clusters`.
final class DataAwsEcsClusters extends Data {
  static const String tfType = 'aws_ecs_clusters';

  DataAwsEcsClusters({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsEcsClustersSensitive;

  /// Reference to `cluster_arns` attribute.
  TfRef<List<String>> get clusterArns =>
      TfRef.attribute<List<String>>(this, 'cluster_arns');
}
