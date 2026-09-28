// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_block_public_access_exclusion`.
const Set<String> _awsVpcBlockPublicAccessExclusionSensitive = <String>{};

/// Vpc Block Public Access Exclusion Internet Gateway Exclusion enum for `internet_gateway_exclusion_mode`.
enum VpcBlockPublicAccessExclusionInternetGatewayExclusionMode
    implements TerraformEnum {
  allowBidirectional('allow-bidirectional'),
  allowEgress('allow-egress');

  const VpcBlockPublicAccessExclusionInternetGatewayExclusionMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `subnet_id`, `vpc_id` on `aws_vpc_block_public_access_exclusion`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class VpcBlockPublicAccessExclusionSubnetIdOrVpcId {
  const VpcBlockPublicAccessExclusionSubnetIdOrVpcId();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `subnet_id` (one of the [VpcBlockPublicAccessExclusionSubnetIdOrVpcId] choices).
final class VpcBlockPublicAccessExclusionSubnetIdOption
    extends VpcBlockPublicAccessExclusionSubnetIdOrVpcId {
  const VpcBlockPublicAccessExclusionSubnetIdOption({required this.subnetId});

  final TfArg<String> subnetId;

  @override
  String get blockKey => 'subnet_id';

  @override
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'subnet_id': subnetId};
}

/// Sets `vpc_id` (one of the [VpcBlockPublicAccessExclusionSubnetIdOrVpcId] choices).
final class VpcBlockPublicAccessExclusionVpcIdOption
    extends VpcBlockPublicAccessExclusionSubnetIdOrVpcId {
  const VpcBlockPublicAccessExclusionVpcIdOption({required this.vpcId});

  final TfArg<String> vpcId;

  @override
  String get blockKey => 'vpc_id';

  @override
  Map<String, Object?> encode() => {'vpc_id': vpcId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'vpc_id': vpcId};
}

/// Factory wrapper for `aws_vpc_block_public_access_exclusion`.
final class AwsVpcBlockPublicAccessExclusion extends Resource {
  static const String tfType = 'aws_vpc_block_public_access_exclusion';

  AwsVpcBlockPublicAccessExclusion({
    required super.localName,
    required TfArg<VpcBlockPublicAccessExclusionInternetGatewayExclusionMode>
    internetGatewayExclusionMode,
    TfArg<String>? region,
    required VpcBlockPublicAccessExclusionSubnetIdOrVpcId subnetIdOrVpcId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_gateway_exclusion_mode': internetGatewayExclusionMode,
           if (region != null) 'region': region,
           ...subnetIdOrVpcId.argMap,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcBlockPublicAccessExclusionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
