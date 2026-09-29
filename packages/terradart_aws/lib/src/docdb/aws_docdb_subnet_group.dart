// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_subnet_group`.
const Set<String> _awsDocdbSubnetGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_docdb_subnet_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class DocdbSubnetGroupNameOrNamePrefix {
  const DocdbSubnetGroupNameOrNamePrefix();

  /// Sets `name`.
  const factory DocdbSubnetGroupNameOrNamePrefix.name(TfArg<String> name) =
      DocdbSubnetGroupNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory DocdbSubnetGroupNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = DocdbSubnetGroupNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbSubnetGroupNameOrNamePrefix.name] choice: sets `name`.
final class DocdbSubnetGroupNameOrNamePrefixName
    extends DocdbSubnetGroupNameOrNamePrefix {
  const DocdbSubnetGroupNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [DocdbSubnetGroupNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class DocdbSubnetGroupNameOrNamePrefixNamePrefix
    extends DocdbSubnetGroupNameOrNamePrefix {
  const DocdbSubnetGroupNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_docdb_subnet_group`.
final class AwsDocdbSubnetGroup extends Resource {
  static const String tfType = 'aws_docdb_subnet_group';

  AwsDocdbSubnetGroup({
    required super.localName,
    TfArg<String>? description,
    DocdbSubnetGroupNameOrNamePrefix? nameOrNamePrefix,
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
  Set<String> get sensitiveFields => _awsDocdbSubnetGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `supported_network_types` attribute.
  TfRef<List<String>> get supportedNetworkTypes =>
      TfRef.attribute<List<String>>(this, 'supported_network_types');
}
