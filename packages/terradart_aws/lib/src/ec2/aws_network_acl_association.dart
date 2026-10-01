// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_network_acl_association`.
const Set<String> _awsNetworkAclAssociationSensitive = <String>{};

/// Factory wrapper for `aws_network_acl_association`.
final class AwsNetworkAclAssociation extends Resource {
  static const String tfType = 'aws_network_acl_association';

  AwsNetworkAclAssociation(
    super.localName, {
    required TfArg<String> networkAclId,
    TfArg<String>? region,
    required RefTo<AwsSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network_acl_id': networkAclId,
           'region': ?region,
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkAclAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkAclAssociation>`.
  RefTo<AwsNetworkAclAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_acl_id` attribute.
  TfRef<String> get networkAclId =>
      TfRef.attribute<String>(this, 'network_acl_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
