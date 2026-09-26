// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_network_peering_connection`.
const Set<String> _awsOdbNetworkPeeringConnectionSensitive = <String>{};

/// Factory wrapper for `aws_odb_network_peering_connection`.
final class DataAwsOdbNetworkPeeringConnection extends Data {
  static const String tfType = 'aws_odb_network_peering_connection';

  DataAwsOdbNetworkPeeringConnection({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsOdbNetworkPeeringConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `odb_network_arn` attribute.
  TfRef<String> get odbNetworkArn =>
      TfRef.attribute<String>(this, 'odb_network_arn');

  /// Reference to `odb_peering_connection_type` attribute.
  TfRef<String> get odbPeeringConnectionType =>
      TfRef.attribute<String>(this, 'odb_peering_connection_type');

  /// Reference to `peer_network_arn` attribute.
  TfRef<String> get peerNetworkArn =>
      TfRef.attribute<String>(this, 'peer_network_arn');

  /// Reference to `peer_network_cidrs` attribute.
  TfRef<List<String>> get peerNetworkCidrs =>
      TfRef.attribute<List<String>>(this, 'peer_network_cidrs');

  /// Reference to `percent_progress` attribute.
  TfRef<num> get percentProgress =>
      TfRef.attribute<num>(this, 'percent_progress');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
