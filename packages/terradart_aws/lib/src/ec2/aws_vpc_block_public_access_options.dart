// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_block_public_access_options`.
const Set<String> _awsVpcBlockPublicAccessOptionsSensitive = <String>{};

/// Vpc Block Public Access Options Internet Gateway Block enum for `internet_gateway_block_mode`.
extension type const VpcBlockPublicAccessOptionsInternetGatewayBlockMode._(
  TfArg<String> _
) implements TfArg<String> {
  VpcBlockPublicAccessOptionsInternetGatewayBlockMode.variable(String name)
    : this._(TfArg.variable(name));
  VpcBlockPublicAccessOptionsInternetGatewayBlockMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VpcBlockPublicAccessOptionsInternetGatewayBlockMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const off = VpcBlockPublicAccessOptionsInternetGatewayBlockMode._(
    TfArgLiteral('off'),
  );
  static const blockBidirectional =
      VpcBlockPublicAccessOptionsInternetGatewayBlockMode._(
        TfArgLiteral('block-bidirectional'),
      );
  static const blockIngress =
      VpcBlockPublicAccessOptionsInternetGatewayBlockMode._(
        TfArgLiteral('block-ingress'),
      );

  static const List<VpcBlockPublicAccessOptionsInternetGatewayBlockMode>
  values = [off, blockBidirectional, blockIngress];
}

/// Factory wrapper for `aws_vpc_block_public_access_options`.
final class AwsVpcBlockPublicAccessOptions extends Resource {
  static const String tfType = 'aws_vpc_block_public_access_options';

  AwsVpcBlockPublicAccessOptions(
    super.localName, {
    required VpcBlockPublicAccessOptionsInternetGatewayBlockMode
    internetGatewayBlockMode,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_gateway_block_mode': internetGatewayBlockMode,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcBlockPublicAccessOptionsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcBlockPublicAccessOptions>`.
  RefTo<AwsVpcBlockPublicAccessOptions> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `aws_region` attribute.
  TfRef<String> get awsRegion => TfRef.attribute<String>(this, 'aws_region');

  /// Reference to `internet_gateway_block_mode` attribute.
  TfRef<String> get internetGatewayBlockMode =>
      TfRef.attribute<String>(this, 'internet_gateway_block_mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
