// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_network_peering_connections`.
const Set<String> _awsOdbNetworkPeeringConnectionsSensitive = <String>{};

/// Factory wrapper for `aws_odb_network_peering_connections`.
final class DataAwsOdbNetworkPeeringConnections extends Data {
  static const String tfType = 'aws_odb_network_peering_connections';

  DataAwsOdbNetworkPeeringConnections({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsOdbNetworkPeeringConnectionsSensitive;

  /// Reference to `odb_peering_connections` attribute.
  TfRef<List<Map<String, Object?>>> get odbPeeringConnections =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'odb_peering_connections',
      );
}
