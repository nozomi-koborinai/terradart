// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_hosted_connection`.
const Set<String> _awsDxHostedConnectionSensitive = <String>{};

/// Factory wrapper for `aws_dx_hosted_connection`.
final class AwsDxHostedConnection extends Resource {
  static const String tfType = 'aws_dx_hosted_connection';

  AwsDxHostedConnection({
    required super.localName,
    required TfArg<String> bandwidth,
    required TfArg<String> connectionId,
    required TfArg<String> name,
    required TfArg<String> ownerAccountId,
    required TfArg<num> vlan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bandwidth': bandwidth,
           'connection_id': connectionId,
           'name': name,
           'owner_account_id': ownerAccountId,
           'vlan': vlan,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxHostedConnectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_device` attribute.
  TfRef<String> get awsDevice => TfRef.attribute<String>(this, 'aws_device');

  /// Reference to `connection_region` attribute.
  TfRef<String> get connectionRegion =>
      TfRef.attribute<String>(this, 'connection_region');

  /// Reference to `has_logical_redundancy` attribute.
  TfRef<String> get hasLogicalRedundancy =>
      TfRef.attribute<String>(this, 'has_logical_redundancy');

  /// Reference to `jumbo_frame_capable` attribute.
  TfRef<bool> get jumboFrameCapable =>
      TfRef.attribute<bool>(this, 'jumbo_frame_capable');

  /// Reference to `lag_id` attribute.
  TfRef<String> get lagId => TfRef.attribute<String>(this, 'lag_id');

  /// Reference to `loa_issue_time` attribute.
  TfRef<String> get loaIssueTime =>
      TfRef.attribute<String>(this, 'loa_issue_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `partner_name` attribute.
  TfRef<String> get partnerName =>
      TfRef.attribute<String>(this, 'partner_name');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
