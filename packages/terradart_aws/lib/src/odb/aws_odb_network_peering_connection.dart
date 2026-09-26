// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_network_peering_connection`.
const Set<String> _awsOdbNetworkPeeringConnectionSensitive = <String>{};

/// Factory wrapper for `aws_odb_network_peering_connection`.
///
/// A peering connection between an ODB network and either another ODB network
/// or a customer-owned VPC.
final class AwsOdbNetworkPeeringConnection extends Resource {
  static const String tfType = 'aws_odb_network_peering_connection';

  AwsOdbNetworkPeeringConnection({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? odbNetworkArn,
    TfArg<String>? odbNetworkId,
    TfArg<List<String>>? peerNetworkCidrs,
    required TfArg<String> peerNetworkId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (odbNetworkArn != null) 'odb_network_arn': odbNetworkArn,
           if (odbNetworkId != null) 'odb_network_id': odbNetworkId,
           if (peerNetworkCidrs != null) 'peer_network_cidrs': peerNetworkCidrs,
           'peer_network_id': peerNetworkId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbNetworkPeeringConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `odb_peering_connection_type` attribute.
  TfRef<String> get odbPeeringConnectionType =>
      TfRef.attribute<String>(this, 'odb_peering_connection_type');

  /// Reference to `peer_network_arn` attribute.
  TfRef<String> get peerNetworkArn =>
      TfRef.attribute<String>(this, 'peer_network_arn');

  /// Reference to `percent_progress` attribute.
  TfRef<num> get percentProgress =>
      TfRef.attribute<num>(this, 'percent_progress');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
