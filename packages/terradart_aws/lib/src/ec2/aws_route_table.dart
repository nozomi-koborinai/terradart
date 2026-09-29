// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_route_table`.
const Set<String> _awsRouteTableSensitive = <String>{};

/// Factory wrapper for `aws_route_table`.
final class AwsRouteTable extends Resource {
  static const String tfType = 'aws_route_table';

  AwsRouteTable({
    required super.localName,
    TfArg<List<String>>? propagatingVgws,
    TfArg<String>? region,
    TfArg<List<Map<String, Object?>>>? route,
    TfArg<Map<String, String>>? tags,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (propagatingVgws != null) 'propagating_vgws': propagatingVgws,
           if (region != null) 'region': region,
           if (route != null) 'route': route,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRouteTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRouteTable>`.
  RefTo<AwsRouteTable> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
