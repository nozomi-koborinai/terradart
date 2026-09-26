// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_block_public_access_options`.
const Set<String> _awsVpcBlockPublicAccessOptionsSensitive = <String>{};

/// Factory wrapper for `aws_vpc_block_public_access_options`.
final class AwsVpcBlockPublicAccessOptions extends Resource {
  static const String tfType = 'aws_vpc_block_public_access_options';

  AwsVpcBlockPublicAccessOptions({
    required super.localName,
    required TfArg<String> internetGatewayBlockMode,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_gateway_block_mode': internetGatewayBlockMode,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcBlockPublicAccessOptionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `aws_region` attribute.
  TfRef<String> get awsRegion => TfRef.attribute<String>(this, 'aws_region');
}
