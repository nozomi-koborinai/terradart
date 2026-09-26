// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_subnet_group`.
const Set<String> _awsDbSubnetGroupSensitive = <String>{};

/// Factory wrapper for `aws_db_subnet_group`.
final class AwsDbSubnetGroup extends Resource {
  static const String tfType = 'aws_db_subnet_group';

  AwsDbSubnetGroup({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbSubnetGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `supported_network_types` attribute.
  TfRef<List<String>> get supportedNetworkTypes =>
      TfRef.attribute<List<String>>(this, 'supported_network_types');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
