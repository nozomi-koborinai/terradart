// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_secondary_network`.
const Set<String> _awsEc2SecondaryNetworkSensitive = <String>{};

/// Factory wrapper for `aws_ec2_secondary_network`.
final class AwsEc2SecondaryNetwork extends Resource {
  static const String tfType = 'aws_ec2_secondary_network';

  AwsEc2SecondaryNetwork({
    required super.localName,
    required TfArg<String> ipv4CidrBlock,
    required TfArg<String> networkType,
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2SecondaryNetworkSensitive;

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
}
