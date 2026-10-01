// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_blockchain_node_engine_blockchain_nodes`.
const Set<String> _googleBlockchainNodeEngineBlockchainNodesSensitive =
    <String>{};

/// Blockchain Node Engine Blockchain Nodes Blockchain enum for `blockchain_type`.
extension type const BlockchainNodeEngineBlockchainNodesBlockchainType._(
  TfArg<String> _
) implements TfArg<String> {
  BlockchainNodeEngineBlockchainNodesBlockchainType.variable(String name)
    : this._(TfArg.variable(name));
  BlockchainNodeEngineBlockchainNodesBlockchainType.expression(String template)
    : this._(TfArg.expression(template));
  const BlockchainNodeEngineBlockchainNodesBlockchainType.arg(TfArg<String> arg)
    : this._(arg);

  static const ethereum = BlockchainNodeEngineBlockchainNodesBlockchainType._(
    TfArgLiteral('ETHEREUM'),
  );

  static const List<BlockchainNodeEngineBlockchainNodesBlockchainType> values =
      [ethereum];
}

/// Typed helper for the `ethereum_details` block of
/// `google_blockchain_node_engine_blockchain_nodes` (derived from provider schema).
@immutable
final class BlockchainNodeEngineBlockchainNodesEthereumDetails {
  const BlockchainNodeEngineBlockchainNodesEthereumDetails({
    this.apiEnableAdmin,
    this.apiEnableDebug,
    this.consensusClient,
    this.executionClient,
    this.network,
    this.nodeType,
    this.gethDetails,
    this.validatorConfig,
  });

  final TfArg<bool>? apiEnableAdmin;

  final TfArg<bool>? apiEnableDebug;

  final BlockchainNodeEngineBlockchainNodesConsensusClient? consensusClient;

  final BlockchainNodeEngineBlockchainNodesExecutionClient? executionClient;

  final BlockchainNodeEngineBlockchainNodesNetwork? network;

  final BlockchainNodeEngineBlockchainNodesNodeType? nodeType;

  final BlockchainNodeEngineBlockchainNodesGethDetails? gethDetails;

  final BlockchainNodeEngineBlockchainNodesValidatorConfig? validatorConfig;

  Map<String, Object?> encode() => {
    'api_enable_admin': ?apiEnableAdmin?.toTfJson(),
    'api_enable_debug': ?apiEnableDebug?.toTfJson(),
    'consensus_client': ?consensusClient?.toTfJson(),
    'execution_client': ?executionClient?.toTfJson(),
    'network': ?network?.toTfJson(),
    'node_type': ?nodeType?.toTfJson(),
    'geth_details': ?gethDetails?.encode(),
    'validator_config': ?validatorConfig?.encode(),
  };
}

/// `consensus_client` — derived from the provider schema description.
extension type const BlockchainNodeEngineBlockchainNodesConsensusClient._(
  TfArg<String> _
) implements TfArg<String> {
  BlockchainNodeEngineBlockchainNodesConsensusClient.variable(String name)
    : this._(TfArg.variable(name));
  BlockchainNodeEngineBlockchainNodesConsensusClient.expression(String template)
    : this._(TfArg.expression(template));
  const BlockchainNodeEngineBlockchainNodesConsensusClient.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const consensusClientUnspecified =
      BlockchainNodeEngineBlockchainNodesConsensusClient._(
        TfArgLiteral('CONSENSUS_CLIENT_UNSPECIFIED'),
      );
  static const lighthouse =
      BlockchainNodeEngineBlockchainNodesConsensusClient._(
        TfArgLiteral('LIGHTHOUSE'),
      );

  static const List<BlockchainNodeEngineBlockchainNodesConsensusClient> values =
      [consensusClientUnspecified, lighthouse];
}

/// `execution_client` — derived from the provider schema description.
extension type const BlockchainNodeEngineBlockchainNodesExecutionClient._(
  TfArg<String> _
) implements TfArg<String> {
  BlockchainNodeEngineBlockchainNodesExecutionClient.variable(String name)
    : this._(TfArg.variable(name));
  BlockchainNodeEngineBlockchainNodesExecutionClient.expression(String template)
    : this._(TfArg.expression(template));
  const BlockchainNodeEngineBlockchainNodesExecutionClient.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const executionClientUnspecified =
      BlockchainNodeEngineBlockchainNodesExecutionClient._(
        TfArgLiteral('EXECUTION_CLIENT_UNSPECIFIED'),
      );
  static const geth = BlockchainNodeEngineBlockchainNodesExecutionClient._(
    TfArgLiteral('GETH'),
  );
  static const erigon = BlockchainNodeEngineBlockchainNodesExecutionClient._(
    TfArgLiteral('ERIGON'),
  );

  static const List<BlockchainNodeEngineBlockchainNodesExecutionClient> values =
      [executionClientUnspecified, geth, erigon];
}

/// `network` — derived from the provider schema description.
extension type const BlockchainNodeEngineBlockchainNodesNetwork._(
  TfArg<String> _
) implements TfArg<String> {
  BlockchainNodeEngineBlockchainNodesNetwork.variable(String name)
    : this._(TfArg.variable(name));
  BlockchainNodeEngineBlockchainNodesNetwork.expression(String template)
    : this._(TfArg.expression(template));
  const BlockchainNodeEngineBlockchainNodesNetwork.arg(TfArg<String> arg)
    : this._(arg);

  static const mainnet = BlockchainNodeEngineBlockchainNodesNetwork._(
    TfArgLiteral('MAINNET'),
  );
  static const testnetGoerliPrater =
      BlockchainNodeEngineBlockchainNodesNetwork._(
        TfArgLiteral('TESTNET_GOERLI_PRATER'),
      );
  static const testnetSepolia = BlockchainNodeEngineBlockchainNodesNetwork._(
    TfArgLiteral('TESTNET_SEPOLIA'),
  );

  static const List<BlockchainNodeEngineBlockchainNodesNetwork> values = [
    mainnet,
    testnetGoerliPrater,
    testnetSepolia,
  ];
}

/// `node_type` — derived from the provider schema description.
extension type const BlockchainNodeEngineBlockchainNodesNodeType._(
  TfArg<String> _
) implements TfArg<String> {
  BlockchainNodeEngineBlockchainNodesNodeType.variable(String name)
    : this._(TfArg.variable(name));
  BlockchainNodeEngineBlockchainNodesNodeType.expression(String template)
    : this._(TfArg.expression(template));
  const BlockchainNodeEngineBlockchainNodesNodeType.arg(TfArg<String> arg)
    : this._(arg);

  static const light = BlockchainNodeEngineBlockchainNodesNodeType._(
    TfArgLiteral('LIGHT'),
  );
  static const full = BlockchainNodeEngineBlockchainNodesNodeType._(
    TfArgLiteral('FULL'),
  );
  static const archive = BlockchainNodeEngineBlockchainNodesNodeType._(
    TfArgLiteral('ARCHIVE'),
  );

  static const List<BlockchainNodeEngineBlockchainNodesNodeType> values = [
    light,
    full,
    archive,
  ];
}

/// Typed helper for the `ethereum_details.geth_details` block of
/// `google_blockchain_node_engine_blockchain_nodes` (derived from provider schema).
@immutable
final class BlockchainNodeEngineBlockchainNodesGethDetails {
  const BlockchainNodeEngineBlockchainNodesGethDetails({
    this.garbageCollectionMode,
  });

  final BlockchainNodeEngineBlockchainNodesGarbageCollectionMode?
  garbageCollectionMode;

  Map<String, Object?> encode() => {
    'garbage_collection_mode': ?garbageCollectionMode?.toTfJson(),
  };
}

/// `garbage_collection_mode` — derived from the provider schema description.
extension type const BlockchainNodeEngineBlockchainNodesGarbageCollectionMode._(
  TfArg<String> _
) implements TfArg<String> {
  BlockchainNodeEngineBlockchainNodesGarbageCollectionMode.variable(String name)
    : this._(TfArg.variable(name));
  BlockchainNodeEngineBlockchainNodesGarbageCollectionMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BlockchainNodeEngineBlockchainNodesGarbageCollectionMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const full =
      BlockchainNodeEngineBlockchainNodesGarbageCollectionMode._(
        TfArgLiteral('FULL'),
      );
  static const archive =
      BlockchainNodeEngineBlockchainNodesGarbageCollectionMode._(
        TfArgLiteral('ARCHIVE'),
      );

  static const List<BlockchainNodeEngineBlockchainNodesGarbageCollectionMode>
  values = [full, archive];
}

/// Typed helper for the `ethereum_details.validator_config` block of
/// `google_blockchain_node_engine_blockchain_nodes` (derived from provider schema).
@immutable
final class BlockchainNodeEngineBlockchainNodesValidatorConfig {
  const BlockchainNodeEngineBlockchainNodesValidatorConfig({
    this.beaconFeeRecipient,
    this.mevRelayUrls,
  });

  final TfArg<String>? beaconFeeRecipient;

  final TfArg<List<String>>? mevRelayUrls;

  Map<String, Object?> encode() => {
    'beacon_fee_recipient': ?beaconFeeRecipient?.toTfJson(),
    'mev_relay_urls': ?mevRelayUrls?.toTfJson(),
  };
}

/// Factory wrapper for `google_blockchain_node_engine_blockchain_nodes`.
///
/// A representation of a blockchain node.
///
/// Blockchain Node Engine **node** — managed Ethereum (and related) node.
///
/// **Cost / apply:** gcp-cost: Blockchain Node Engine `1749-9ED8-C6DC`
/// Ethereum Full SKU `8884-3FAF-A138` **$0.69/h** (Archive `FE27-1AEE-54FF`
/// **$2.74/h**). billing-behavior: dedicated node hours while the node
/// exists; destroy stops charges. Too expensive for apply-smoke even once —
/// debt-only on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `blockchainnodeengine.googleapis.com` before apply.
final class GoogleBlockchainNodeEngineBlockchainNodes extends Resource {
  static const String tfType = 'google_blockchain_node_engine_blockchain_nodes';

  GoogleBlockchainNodeEngineBlockchainNodes(
    super.localName, {
    required TfArg<String> blockchainNodeId,
    required TfArg<String> location,
    BlockchainNodeEngineBlockchainNodesBlockchainType? blockchainType,
    BlockchainNodeEngineBlockchainNodesEthereumDetails? ethereumDetails,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blockchain_node_id': blockchainNodeId,
           'location': location,
           'blockchain_type': ?blockchainType,
           if (ethereumDetails != null)
             'ethereum_details': TfArg.literal(ethereumDetails.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBlockchainNodeEngineBlockchainNodesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBlockchainNodeEngineBlockchainNodes>`.
  RefTo<GoogleBlockchainNodeEngineBlockchainNodes> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_info` attribute.
  TfRef<List<Map<String, Object?>>> get connectionInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connection_info');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `blockchain_node_id` attribute.
  TfRef<String> get blockchainNodeId =>
      TfRef.attribute<String>(this, 'blockchain_node_id');

  /// Reference to `blockchain_type` attribute.
  TfRef<String> get blockchainType =>
      TfRef.attribute<String>(this, 'blockchain_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
