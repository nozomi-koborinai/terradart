// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_subnet_group`.
const Set<String> _awsMemorydbSubnetGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_memorydb_subnet_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class MemorydbSubnetGroupNameOrNamePrefix {
  const MemorydbSubnetGroupNameOrNamePrefix();

  /// Sets `name`.
  const factory MemorydbSubnetGroupNameOrNamePrefix.name(TfArg<String> name) =
      MemorydbSubnetGroupNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory MemorydbSubnetGroupNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = MemorydbSubnetGroupNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MemorydbSubnetGroupNameOrNamePrefix.name] choice: sets `name`.
final class MemorydbSubnetGroupNameOrNamePrefixName
    extends MemorydbSubnetGroupNameOrNamePrefix {
  const MemorydbSubnetGroupNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [MemorydbSubnetGroupNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class MemorydbSubnetGroupNameOrNamePrefixNamePrefix
    extends MemorydbSubnetGroupNameOrNamePrefix {
  const MemorydbSubnetGroupNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_memorydb_subnet_group`.
final class AwsMemorydbSubnetGroup extends Resource {
  static const String tfType = 'aws_memorydb_subnet_group';

  AwsMemorydbSubnetGroup({
    required super.localName,
    TfArg<String>? description,
    MemorydbSubnetGroupNameOrNamePrefix? nameOrNamePrefix,
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
           ...?nameOrNamePrefix?.argMap,
           if (region != null) 'region': region,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbSubnetGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMemorydbSubnetGroup>`.
  RefTo<AwsMemorydbSubnetGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
