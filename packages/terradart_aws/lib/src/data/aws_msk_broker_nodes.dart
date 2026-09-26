// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_broker_nodes`.
const Set<String> _awsMskBrokerNodesSensitive = <String>{};

/// Factory wrapper for `aws_msk_broker_nodes`.
final class DataAwsMskBrokerNodes extends Data {
  static const String tfType = 'aws_msk_broker_nodes';

  DataAwsMskBrokerNodes({
    required super.localName,
    required TfArg<String> clusterArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_arn': clusterArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskBrokerNodesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `node_info_list` attribute.
  TfRef<List<Map<String, Object?>>> get nodeInfoList =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_info_list');
}
