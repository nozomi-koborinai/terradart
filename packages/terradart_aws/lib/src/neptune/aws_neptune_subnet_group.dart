// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_neptune_subnet_group`.
const Set<String> _awsNeptuneSubnetGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_neptune_subnet_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class NeptuneSubnetGroupName {
  const NeptuneSubnetGroupName();

  /// Sets `name`.
  const factory NeptuneSubnetGroupName.name(TfArg<String> name) =
      NeptuneSubnetGroupNameChoice;

  /// Sets `name_prefix`.
  const factory NeptuneSubnetGroupName.namePrefix(TfArg<String> namePrefix) =
      NeptuneSubnetGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NeptuneSubnetGroupName.name] choice: sets `name`.
final class NeptuneSubnetGroupNameChoice extends NeptuneSubnetGroupName {
  const NeptuneSubnetGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [NeptuneSubnetGroupName.namePrefix] choice: sets `name_prefix`.
final class NeptuneSubnetGroupNamePrefix extends NeptuneSubnetGroupName {
  const NeptuneSubnetGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_neptune_subnet_group`.
final class AwsNeptuneSubnetGroup extends Resource {
  static const String tfType = 'aws_neptune_subnet_group';

  AwsNeptuneSubnetGroup({
    required super.localName,
    TfArg<String>? description,
    NeptuneSubnetGroupName? name,
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
           if (description != null) 'description': description,
           ...?name?.argMap,
           if (region != null) 'region': region,
           'subnet_ids': subnetIds.encodeAs('id'),
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptuneSubnetGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNeptuneSubnetGroup>`.
  RefTo<AwsNeptuneSubnetGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
