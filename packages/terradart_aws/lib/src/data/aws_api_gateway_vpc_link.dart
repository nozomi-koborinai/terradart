// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_gateway/aws_api_gateway_vpc_link.dart';

/// Sensitive field paths for `aws_api_gateway_vpc_link`.
const Set<String> _awsApiGatewayVpcLinkSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_vpc_link`.
final class DataAwsApiGatewayVpcLink extends Data {
  static const String tfType = 'aws_api_gateway_vpc_link';

  DataAwsApiGatewayVpcLink({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayVpcLinkSensitive;

  /// A reference to the `aws_api_gateway_vpc_link` this data source reads, for
  /// arguments typed `RefTo<AwsApiGatewayVpcLink>`.
  RefTo<AwsApiGatewayVpcLink> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `target_arns` attribute.
  TfRef<List<String>> get targetArns =>
      TfRef.attribute<List<String>>(this, 'target_arns');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
