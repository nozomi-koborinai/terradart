// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_acl`.
const Set<String> _awsMemorydbAclSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_memorydb_acl`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class MemorydbAclName {
  const MemorydbAclName();

  /// Sets `name`.
  const factory MemorydbAclName.name(TfArg<String> name) = MemorydbAclNameName;

  /// Sets `name_prefix`.
  const factory MemorydbAclName.namePrefix(TfArg<String> namePrefix) =
      MemorydbAclNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MemorydbAclName.name] choice: sets `name`.
final class MemorydbAclNameName extends MemorydbAclName {
  const MemorydbAclNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [MemorydbAclName.namePrefix] choice: sets `name_prefix`.
final class MemorydbAclNameNamePrefix extends MemorydbAclName {
  const MemorydbAclNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_memorydb_acl`.
final class AwsMemorydbAcl extends Resource {
  static const String tfType = 'aws_memorydb_acl';

  AwsMemorydbAcl({
    required super.localName,
    MemorydbAclName? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? userNames,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?name?.argMap,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (userNames != null) 'user_names': userNames,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMemorydbAcl>`.
  RefTo<AwsMemorydbAcl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `minimum_engine_version` attribute.
  TfRef<String> get minimumEngineVersion =>
      TfRef.attribute<String>(this, 'minimum_engine_version');
}
