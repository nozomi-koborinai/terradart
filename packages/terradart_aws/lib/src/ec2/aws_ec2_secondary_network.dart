// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_secondary_network`.
const Set<String> _awsEc2SecondaryNetworkSensitive = <String>{};

/// Ec2 Secondary Network enum for `network_type`.
extension type const Ec2SecondaryNetworkType._(TfArg<String> _)
    implements TfArg<String> {
  Ec2SecondaryNetworkType.variable(String name) : this._(TfArg.variable(name));
  Ec2SecondaryNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2SecondaryNetworkType.arg(TfArg<String> arg) : this._(arg);

  static const rdma = Ec2SecondaryNetworkType._(TfArgLiteral('rdma'));

  static const List<Ec2SecondaryNetworkType> values = [rdma];
}

/// Factory wrapper for `aws_ec2_secondary_network`.
final class AwsEc2SecondaryNetwork extends Resource {
  static const String tfType = 'aws_ec2_secondary_network';

  AwsEc2SecondaryNetwork(
    super.localName, {
    required TfArg<String> ipv4CidrBlock,
    required Ec2SecondaryNetworkType networkType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ipv4_cidr_block': ipv4CidrBlock,
           'network_type': networkType,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2SecondaryNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2SecondaryNetwork>`.
  RefTo<AwsEc2SecondaryNetwork> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ipv4_cidr_block_associations` attribute.
  TfRef<List<Map<String, Object?>>> get ipv4CidrBlockAssociations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ipv4_cidr_block_associations',
      );

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `secondary_network_id` attribute.
  TfRef<String> get secondaryNetworkId =>
      TfRef.attribute<String>(this, 'secondary_network_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `ipv4_cidr_block` attribute.
  TfRef<String> get ipv4CidrBlock =>
      TfRef.attribute<String>(this, 'ipv4_cidr_block');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
