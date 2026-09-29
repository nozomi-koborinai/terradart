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
///
/// Pick one with a dot shorthand: `.subnetId(...)`.
sealed class VpcBlockPublicAccessExclusionTarget {
  const VpcBlockPublicAccessExclusionTarget();

  /// Sets `subnet_id`.
  const factory VpcBlockPublicAccessExclusionTarget.subnetId(
    TfArg<String> subnetId,
  ) = VpcBlockPublicAccessExclusionTargetSubnetId;

  /// Sets `vpc_id`.
  const factory VpcBlockPublicAccessExclusionTarget.vpcId(TfArg<String> vpcId) =
      VpcBlockPublicAccessExclusionTargetVpcId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VpcBlockPublicAccessExclusionTarget.subnetId] choice: sets `subnet_id`.
final class VpcBlockPublicAccessExclusionTargetSubnetId
    extends VpcBlockPublicAccessExclusionTarget {
  const VpcBlockPublicAccessExclusionTargetSubnetId(this.subnetId);

  final TfArg<String> subnetId;

  @override
  String get blockKey => 'subnet_id';

  @override
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'subnet_id': subnetId};
}

/// The [VpcBlockPublicAccessExclusionTarget.vpcId] choice: sets `vpc_id`.
final class VpcBlockPublicAccessExclusionTargetVpcId
    extends VpcBlockPublicAccessExclusionTarget {
  const VpcBlockPublicAccessExclusionTargetVpcId(this.vpcId);

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
    required VpcBlockPublicAccessExclusionTarget target,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_gateway_exclusion_mode': internetGatewayExclusionMode,
           'region': ?region,
           ...target.argMap,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcBlockPublicAccessExclusionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcBlockPublicAccessExclusion>`.
  RefTo<AwsVpcBlockPublicAccessExclusion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
