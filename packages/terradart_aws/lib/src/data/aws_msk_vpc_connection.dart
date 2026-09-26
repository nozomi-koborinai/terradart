// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_vpc_connection`.
const Set<String> _awsMskVpcConnectionSensitive = <String>{};

/// Factory wrapper for `aws_msk_vpc_connection`.
final class DataAwsMskVpcConnection extends Data {
  static const String tfType = 'aws_msk_vpc_connection';

  DataAwsMskVpcConnection({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskVpcConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication` attribute.
  TfRef<String> get authentication =>
      TfRef.attribute<String>(this, 'authentication');

  /// Reference to `client_subnets` attribute.
  TfRef<List<String>> get clientSubnets =>
      TfRef.attribute<List<String>>(this, 'client_subnets');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `target_cluster_arn` attribute.
  TfRef<String> get targetClusterArn =>
      TfRef.attribute<String>(this, 'target_cluster_arn');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
