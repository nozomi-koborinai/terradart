// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_blockchain_node_engine_blockchain_nodes`.
const Set<String> _googleBlockchainNodeEngineBlockchainNodesSensitive =
    <String>{};

/// Blockchain Node Engine Blockchain Nodes Blockchain enum for `blockchain_type`.
enum BlockchainNodeEngineBlockchainNodesBlockchainType
    implements TerraformEnum {
  ethereum('ETHEREUM');

  const BlockchainNodeEngineBlockchainNodesBlockchainType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<
    BlockchainNodeEngineBlockchainNodesEthereumDetailsConsensusClient
  >?
  consensusClient;

  final TfArg<
    BlockchainNodeEngineBlockchainNodesEthereumDetailsExecutionClient
  >?
  executionClient;

  final TfArg<BlockchainNodeEngineBlockchainNodesEthereumDetailsNetwork>?
  network;

  final TfArg<BlockchainNodeEngineBlockchainNodesEthereumDetailsNodeType>?
  nodeType;

  final BlockchainNodeEngineBlockchainNodesEthereumDetailsGethDetails?
  gethDetails;

  final BlockchainNodeEngineBlockchainNodesEthereumDetailsValidatorConfig?
  validatorConfig;

  Map<String, Object?> encode() => {
    if (apiEnableAdmin != null) 'api_enable_admin': apiEnableAdmin!.toTfJson(),
    if (apiEnableDebug != null) 'api_enable_debug': apiEnableDebug!.toTfJson(),
    if (consensusClient != null)
      'consensus_client': consensusClient!.toTfJson(),
    if (executionClient != null)
      'execution_client': executionClient!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (nodeType != null) 'node_type': nodeType!.toTfJson(),
    if (gethDetails != null) 'geth_details': gethDetails!.encode(),
    if (validatorConfig != null) 'validator_config': validatorConfig!.encode(),
  };
}

/// `consensus_client` — derived from the provider schema description.
enum BlockchainNodeEngineBlockchainNodesEthereumDetailsConsensusClient
    implements TerraformEnum {
  consensusClientUnspecified('CONSENSUS_CLIENT_UNSPECIFIED'),
  lighthouse('LIGHTHOUSE');

  const BlockchainNodeEngineBlockchainNodesEthereumDetailsConsensusClient(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `execution_client` — derived from the provider schema description.
enum BlockchainNodeEngineBlockchainNodesEthereumDetailsExecutionClient
    implements TerraformEnum {
  executionClientUnspecified('EXECUTION_CLIENT_UNSPECIFIED'),
  geth('GETH'),
  erigon('ERIGON');

  const BlockchainNodeEngineBlockchainNodesEthereumDetailsExecutionClient(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `network` — derived from the provider schema description.
enum BlockchainNodeEngineBlockchainNodesEthereumDetailsNetwork
    implements TerraformEnum {
  mainnet('MAINNET'),
  testnetGoerliPrater('TESTNET_GOERLI_PRATER'),
  testnetSepolia('TESTNET_SEPOLIA');

  const BlockchainNodeEngineBlockchainNodesEthereumDetailsNetwork(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `node_type` — derived from the provider schema description.
enum BlockchainNodeEngineBlockchainNodesEthereumDetailsNodeType
    implements TerraformEnum {
  light('LIGHT'),
  full('FULL'),
  archive('ARCHIVE');

  const BlockchainNodeEngineBlockchainNodesEthereumDetailsNodeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ethereum_details.geth_details` block of
/// `google_blockchain_node_engine_blockchain_nodes` (derived from provider schema).
@immutable
final class BlockchainNodeEngineBlockchainNodesEthereumDetailsGethDetails {
  const BlockchainNodeEngineBlockchainNodesEthereumDetailsGethDetails({
    this.garbageCollectionMode,
  });

  final TfArg<
    BlockchainNodeEngineBlockchainNodesEthereumDetailsGethDetailsGarbageCollectionMode
  >?
  garbageCollectionMode;

  Map<String, Object?> encode() => {
    if (garbageCollectionMode != null)
      'garbage_collection_mode': garbageCollectionMode!.toTfJson(),
  };
}

/// `garbage_collection_mode` — derived from the provider schema description.
enum BlockchainNodeEngineBlockchainNodesEthereumDetailsGethDetailsGarbageCollectionMode
    implements TerraformEnum {
  full('FULL'),
  archive('ARCHIVE');

  const BlockchainNodeEngineBlockchainNodesEthereumDetailsGethDetailsGarbageCollectionMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ethereum_details.validator_config` block of
/// `google_blockchain_node_engine_blockchain_nodes` (derived from provider schema).
@immutable
final class BlockchainNodeEngineBlockchainNodesEthereumDetailsValidatorConfig {
  const BlockchainNodeEngineBlockchainNodesEthereumDetailsValidatorConfig({
    this.beaconFeeRecipient,
    this.mevRelayUrls,
  });

  final TfArg<String>? beaconFeeRecipient;

  final TfArg<List<Object?>>? mevRelayUrls;

  Map<String, Object?> encode() => {
    if (beaconFeeRecipient != null)
      'beacon_fee_recipient': beaconFeeRecipient!.toTfJson(),
    if (mevRelayUrls != null) 'mev_relay_urls': mevRelayUrls!.toTfJson(),
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

  GoogleBlockchainNodeEngineBlockchainNodes({
    required super.localName,
    required TfArg<String> blockchainNodeId,
    required TfArg<String> location,
    TfArg<BlockchainNodeEngineBlockchainNodesBlockchainType>? blockchainType,
    BlockchainNodeEngineBlockchainNodesEthereumDetails? ethereumDetails,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blockchain_node_id': blockchainNodeId,
           'location': location,
           if (blockchainType != null) 'blockchain_type': blockchainType,
           if (ethereumDetails != null)
             'ethereum_details': TfArg.literal(ethereumDetails.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBlockchainNodeEngineBlockchainNodesSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `blockchain_node_id` attribute.
  TfRef<String> get blockchainNodeIdRef =>
      TfRef.attribute<String>(this, 'blockchain_node_id');
}
