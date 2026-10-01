// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpn_concentrator`.
const Set<String> _awsVpnConcentratorSensitive = <String>{};

/// Vpn Concentrator enum for `type`.
enum VpnConcentratorType implements TerraformEnum {
  ipsec1('ipsec.1');

  const VpnConcentratorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_vpn_concentrator`.
final class AwsVpnConcentrator extends Resource {
  static const String tfType = 'aws_vpn_concentrator';

  AwsVpnConcentrator({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayId,
    required TfArg<VpnConcentratorType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'tags': ?tags,
           'transit_gateway_id': transitGatewayId,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnConcentratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpnConcentrator>`.
  RefTo<AwsVpnConcentrator> get ref => RefTo.of(this);

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');

  /// Reference to `vpn_concentrator_id` attribute.
  TfRef<String> get vpnConcentratorId =>
      TfRef.attribute<String>(this, 'vpn_concentrator_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
