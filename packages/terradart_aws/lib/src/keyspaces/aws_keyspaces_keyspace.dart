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

  final TfArg<List<Object?>>? regionList;

  final TfArg<String>? replicationStrategy;

  Map<String, Object?> encode() => {
    if (regionList != null) 'region_list': regionList!.toTfJson(),
    if (replicationStrategy != null)
      'replication_strategy': replicationStrategy!.toTfJson(),
  };
}

/// Factory wrapper for `aws_keyspaces_keyspace`.
final class AwsKeyspacesKeyspace extends Resource {
  static const String tfType = 'aws_keyspaces_keyspace';

  AwsKeyspacesKeyspace({
    required super.localName,
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (replicationSpecification != null)
             'replication_specification': TfArg.literal(
               replicationSpecification.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKeyspacesKeyspaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
