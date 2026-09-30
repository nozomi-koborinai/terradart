// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_elasticache_subnet_group`.
const Set<String> _awsElasticacheSubnetGroupSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_subnet_group`.
final class AwsElasticacheSubnetGroup extends Resource {
  static const String tfType = 'aws_elasticache_subnet_group';

  AwsElasticacheSubnetGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
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
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheSubnetGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticacheSubnetGroup>`.
  RefTo<AwsElasticacheSubnetGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIdsRef =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
