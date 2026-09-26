// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_internet_gateway`.
const Set<String> _awsInternetGatewaySensitive = <String>{};

/// Factory wrapper for `aws_internet_gateway`.
final class AwsInternetGateway extends Resource {
  static const String tfType = 'aws_internet_gateway';

  AwsInternetGateway({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInternetGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
