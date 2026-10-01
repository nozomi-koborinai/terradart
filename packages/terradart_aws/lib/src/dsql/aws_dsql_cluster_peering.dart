// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dsql_cluster_peering`.
const Set<String> _awsDsqlClusterPeeringSensitive = <String>{};

/// Factory wrapper for `aws_dsql_cluster_peering`.
final class AwsDsqlClusterPeering extends Resource {
  static const String tfType = 'aws_dsql_cluster_peering';

  AwsDsqlClusterPeering(
    super.localName, {
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
           'region': ?region,
           'witness_region': witnessRegion,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDsqlClusterPeeringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDsqlClusterPeering>`.
  RefTo<AwsDsqlClusterPeering> get ref => RefTo.of(this);

  /// Reference to `clusters` attribute.
  TfRef<List<String>> get clusters =>
      TfRef.attribute<List<String>>(this, 'clusters');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `witness_region` attribute.
  TfRef<String> get witnessRegion =>
      TfRef.attribute<String>(this, 'witness_region');
}
