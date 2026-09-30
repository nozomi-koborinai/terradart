// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_vpc_link`.
const Set<String> _awsApiGatewayVpcLinkSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_vpc_link`.
final class AwsApiGatewayVpcLink extends Resource {
  static const String tfType = 'aws_api_gateway_vpc_link';

  AwsApiGatewayVpcLink({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<List<String>> targetArns,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'target_arns': targetArns,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayVpcLinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayVpcLink>`.
  RefTo<AwsApiGatewayVpcLink> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_arns` attribute.
  TfRef<List<String>> get targetArnsRef =>
      TfRef.attribute<List<String>>(this, 'target_arns');
}
