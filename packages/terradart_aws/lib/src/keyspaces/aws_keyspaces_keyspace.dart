// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_keyspaces_keyspace`.
const Set<String> _awsKeyspacesKeyspaceSensitive = <String>{};

/// Typed helper for the `replication_specification` block of
/// `aws_keyspaces_keyspace` (derived from provider schema).
@immutable
final class KeyspacesKeyspaceReplicationSpecification {
  const KeyspacesKeyspaceReplicationSpecification({
    this.regionList,
    this.replicationStrategy,
  });

  final TfArg<List<String>>? regionList;

  final TfArg<KeyspacesKeyspaceReplicationStrategy>? replicationStrategy;

  Map<String, Object?> encode() => {
    'region_list': ?regionList?.toTfJson(),
    'replication_strategy': ?replicationStrategy?.toTfJson(),
  };
}

/// `replication_strategy` — derived from the provider schema description.
enum KeyspacesKeyspaceReplicationStrategy implements TerraformEnum {
  singleRegion('SINGLE_REGION'),
  multiRegion('MULTI_REGION');

  const KeyspacesKeyspaceReplicationStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_keyspaces_keyspace`.
final class AwsKeyspacesKeyspace extends Resource {
  static const String tfType = 'aws_keyspaces_keyspace';

  AwsKeyspacesKeyspace(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    KeyspacesKeyspaceReplicationSpecification? replicationSpecification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (replicationSpecification != null)
             'replication_specification': TfArg.literal(
               replicationSpecification.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKeyspacesKeyspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKeyspacesKeyspace>`.
  RefTo<AwsKeyspacesKeyspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
