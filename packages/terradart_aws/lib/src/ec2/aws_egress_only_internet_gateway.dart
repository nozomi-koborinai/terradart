// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_egress_only_internet_gateway`.
const Set<String> _awsEgressOnlyInternetGatewaySensitive = <String>{};

/// Factory wrapper for `aws_egress_only_internet_gateway`.
final class AwsEgressOnlyInternetGateway extends Resource {
  static const String tfType = 'aws_egress_only_internet_gateway';

  AwsEgressOnlyInternetGateway({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEgressOnlyInternetGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
