// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../memorydb/aws_memorydb_acl.dart';

/// Sensitive field paths for `aws_memorydb_acl`.
const Set<String> _awsMemorydbAclSensitive = <String>{};

/// Factory wrapper for `aws_memorydb_acl`.
final class DataAwsMemorydbAcl extends Data {
  static const String tfType = 'aws_memorydb_acl';

  DataAwsMemorydbAcl({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbAclSensitive;

  /// A reference to the `aws_memorydb_acl` this data source reads, for
  /// arguments typed `RefTo<AwsMemorydbAcl>`.
  RefTo<AwsMemorydbAcl> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `minimum_engine_version` attribute.
  TfRef<String> get minimumEngineVersion =>
      TfRef.attribute<String>(this, 'minimum_engine_version');

  /// Reference to `user_names` attribute.
  TfRef<List<String>> get userNames =>
      TfRef.attribute<List<String>>(this, 'user_names');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
