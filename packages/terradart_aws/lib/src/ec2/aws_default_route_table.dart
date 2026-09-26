// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_default_route_table`.
const Set<String> _awsDefaultRouteTableSensitive = <String>{};

/// Factory wrapper for `aws_default_route_table`.
final class AwsDefaultRouteTable extends Resource {
  static const String tfType = 'aws_default_route_table';

  AwsDefaultRouteTable({
    required super.localName,
    required TfArg<String> defaultRouteTableId,
    TfArg<List<String>>? propagatingVgws,
    TfArg<String>? region,
    TfArg<List<Map<String, Object?>>>? route,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_route_table_id': defaultRouteTableId,
           if (propagatingVgws != null) 'propagating_vgws': propagatingVgws,
           if (region != null) 'region': region,
           if (route != null) 'route': route,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDefaultRouteTableSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
