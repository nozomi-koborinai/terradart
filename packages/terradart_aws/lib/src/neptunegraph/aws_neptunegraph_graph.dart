// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NeptunegraphGraphName.graphName] choice: sets `graph_name`.
final class NeptunegraphGraphNameChoice extends NeptunegraphGraphName {
  const NeptunegraphGraphNameChoice(this.graphName);

  final TfArg<String> graphName;

  @override
  String get blockKey => 'graph_name';

  @override
  Map<String, Object?> encode() => {'graph_name': graphName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'graph_name': graphName};
}

/// The [NeptunegraphGraphName.graphNamePrefix] choice: sets `graph_name_prefix`.
final class NeptunegraphGraphNamePrefix extends NeptunegraphGraphName {
  const NeptunegraphGraphNamePrefix(this.graphNamePrefix);

  final TfArg<String> graphNamePrefix;

  @override
  String get blockKey => 'graph_name_prefix';

  @override
  Map<String, Object?> encode() => {
    'graph_name_prefix': graphNamePrefix.toTfJson(),
  };

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

  Map<String, Object?> encode() => {
    if (vectorSearchDimension != null)
      'vector_search_dimension': vectorSearchDimension!.toTfJson(),
  };
}

/// Factory wrapper for `aws_neptunegraph_graph`.
final class AwsNeptunegraphGraph extends Resource {
  static const String tfType = 'aws_neptunegraph_graph';

  AwsNeptunegraphGraph({
    required super.localName,
    TfArg<bool>? deletionProtection,
    NeptunegraphGraphName? graphName,
    TfArg<String>? kmsKeyIdentifier,
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
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           ...?graphName?.argMap,
           if (kmsKeyIdentifier != null) 'kms_key_identifier': kmsKeyIdentifier,
           'provisioned_memory': provisionedMemory,
           if (publicConnectivity != null)
             'public_connectivity': publicConnectivity,
           if (region != null) 'region': region,
           if (replicaCount != null) 'replica_count': replicaCount,
           if (tags != null) 'tags': tags,
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
}
