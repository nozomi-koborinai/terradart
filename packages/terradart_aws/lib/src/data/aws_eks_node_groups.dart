// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_node_groups`.
const Set<String> _awsEksNodeGroupsSensitive = <String>{};

/// Factory wrapper for `aws_eks_node_groups`.
final class DataAwsEksNodeGroups extends Data {
  static const String tfType = 'aws_eks_node_groups';

  DataAwsEksNodeGroups({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksNodeGroupsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');
}
