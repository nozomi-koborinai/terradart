// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_db_subnet_group`.
const Set<String> _awsDbSubnetGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_db_subnet_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class DbSubnetGroupName {
  const DbSubnetGroupName();

  /// Sets `name`.
  const factory DbSubnetGroupName.name(TfArg<String> name) =
      DbSubnetGroupNameName;

  /// Sets `name_prefix`.
  const factory DbSubnetGroupName.namePrefix(TfArg<String> namePrefix) =
      DbSubnetGroupNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DbSubnetGroupName.name] choice: sets `name`.
final class DbSubnetGroupNameName extends DbSubnetGroupName {
  const DbSubnetGroupNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [DbSubnetGroupName.namePrefix] choice: sets `name_prefix`.
final class DbSubnetGroupNameNamePrefix extends DbSubnetGroupName {
  const DbSubnetGroupNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_db_subnet_group`.
final class AwsDbSubnetGroup extends Resource {
  static const String tfType = 'aws_db_subnet_group';

  AwsDbSubnetGroup({
    required super.localName,
    TfArg<String>? description,
    DbSubnetGroupName? name,
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
           ...?name?.argMap,
           'region': ?region,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbSubnetGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbSubnetGroup>`.
  RefTo<AwsDbSubnetGroup> get ref => RefTo.of(this);

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
