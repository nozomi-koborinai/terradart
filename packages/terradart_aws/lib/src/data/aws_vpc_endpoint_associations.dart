// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint_associations`.
const Set<String> _awsVpcEndpointAssociationsSensitive = <String>{};

/// Factory wrapper for `aws_vpc_endpoint_associations`.
final class DataAwsVpcEndpointAssociations extends Data {
  static const String tfType = 'aws_vpc_endpoint_associations';

  DataAwsVpcEndpointAssociations({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> vpcEndpointId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'vpc_endpoint_id': vpcEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointAssociationsSensitive;

  /// Reference to `associations` attribute.
  TfRef<List<Map<String, Object?>>> get associations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'associations');
}
