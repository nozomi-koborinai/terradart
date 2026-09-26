// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dsql_cluster_peering`.
const Set<String> _awsDsqlClusterPeeringSensitive = <String>{};

/// Factory wrapper for `aws_dsql_cluster_peering`.
final class AwsDsqlClusterPeering extends Resource {
  static const String tfType = 'aws_dsql_cluster_peering';

  AwsDsqlClusterPeering({
    required super.localName,
    required TfArg<List<String>> clusters,
    required TfArg<String> identifier,
    TfArg<String>? region,
    required TfArg<String> witnessRegion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'clusters': clusters,
           'identifier': identifier,
           if (region != null) 'region': region,
           'witness_region': witnessRegion,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDsqlClusterPeeringSensitive;
}
