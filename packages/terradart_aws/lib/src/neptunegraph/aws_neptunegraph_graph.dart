// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_neptunegraph_graph`.
const Set<String> _awsNeptunegraphGraphSensitive = <String>{};

/// At most one of `graph_name`, `graph_name_prefix` on `aws_neptunegraph_graph`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.graphName(...)`.
sealed class NeptunegraphGraphName {
  const NeptunegraphGraphName();

  /// Sets `graph_name`.
  const factory NeptunegraphGraphName.graphName(TfArg<String> graphName) =
      NeptunegraphGraphNameChoice;

  /// Sets `graph_name_prefix`.
  const factory NeptunegraphGraphName.graphNamePrefix(
    TfArg<String> graphNamePrefix,
  ) = NeptunegraphGraphNamePrefix;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NeptunegraphGraphName.graphName] choice: sets `graph_name`.
final class NeptunegraphGraphNameChoice extends NeptunegraphGraphName {
  const NeptunegraphGraphNameChoice(this.graphName);

  final TfArg<String> graphName;

  @internal
  @override
  String get blockKey => 'graph_name';

  @internal
  @override
  Map<String, Object?> encode() => {'graph_name': graphName.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'graph_name': graphName};
}

/// The [NeptunegraphGraphName.graphNamePrefix] choice: sets `graph_name_prefix`.
final class NeptunegraphGraphNamePrefix extends NeptunegraphGraphName {
  const NeptunegraphGraphNamePrefix(this.graphNamePrefix);

  final TfArg<String> graphNamePrefix;

  @internal
  @override
  String get blockKey => 'graph_name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {
    'graph_name_prefix': graphNamePrefix.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'graph_name_prefix': graphNamePrefix,
  };
}

/// Typed helper for the `vector_search_configuration` block of
/// `aws_neptunegraph_graph` (derived from provider schema).
@immutable
final class NeptunegraphGraphVectorSearchConfiguration {
  const NeptunegraphGraphVectorSearchConfiguration({
    this.vectorSearchDimension,
  });

  final TfArg<num>? vectorSearchDimension;

  @internal
  Map<String, Object?> encode() => {
    'vector_search_dimension': ?vectorSearchDimension?.toTfJson(),
  };
}

/// Factory wrapper for `aws_neptunegraph_graph`.
final class AwsNeptunegraphGraph extends Resource {
  static const String tfType = 'aws_neptunegraph_graph';

  AwsNeptunegraphGraph(
    super.localName, {
    TfArg<bool>? deletionProtection,
    NeptunegraphGraphName? graphName,
    RefTo<AwsKmsKey>? kmsKeyIdentifier,
    required TfArg<num> provisionedMemory,
    TfArg<bool>? publicConnectivity,
    TfArg<String>? region,
    TfArg<num>? replicaCount,
    TfArg<Map<String, String>>? tags,
    List<NeptunegraphGraphVectorSearchConfiguration>? vectorSearchConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_protection': ?deletionProtection,
           ...?graphName?.argMap,
           'kms_key_identifier': ?kmsKeyIdentifier?.encodeAs('arn'),
           'provisioned_memory': provisionedMemory,
           'public_connectivity': ?publicConnectivity,
           'region': ?region,
           'replica_count': ?replicaCount,
           'tags': ?tags,
           if (vectorSearchConfiguration != null)
             'vector_search_configuration': TfArg.literal([
               for (final e in vectorSearchConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptunegraphGraphSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNeptunegraphGraph>`.
  RefTo<AwsNeptunegraphGraph> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `graph_name` attribute.
  TfRef<String> get graphName => TfRef.attribute<String>(this, 'graph_name');

  /// Reference to `graph_name_prefix` attribute.
  TfRef<String> get graphNamePrefix =>
      TfRef.attribute<String>(this, 'graph_name_prefix');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifier =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `provisioned_memory` attribute.
  TfRef<num> get provisionedMemory =>
      TfRef.attribute<num>(this, 'provisioned_memory');

  /// Reference to `public_connectivity` attribute.
  TfRef<bool> get publicConnectivity =>
      TfRef.attribute<bool>(this, 'public_connectivity');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replica_count` attribute.
  TfRef<num> get replicaCount => TfRef.attribute<num>(this, 'replica_count');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
