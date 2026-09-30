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

  final TfArg<BlockchainNodeEngineBlockchainNodesConsensusClient>?
  consensusClient;

  final TfArg<BlockchainNodeEngineBlockchainNodesExecutionClient>?
  executionClient;

  final TfArg<BlockchainNodeEngineBlockchainNodesNetwork>? network;

  final TfArg<BlockchainNodeEngineBlockchainNodesNodeType>? nodeType;

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
enum BlockchainNodeEngineBlockchainNodesConsensusClient
    implements TerraformEnum {
  consensusClientUnspecified('CONSENSUS_CLIENT_UNSPECIFIED'),
  lighthouse('LIGHTHOUSE');

  const BlockchainNodeEngineBlockchainNodesConsensusClient(this.terraformValue);
  @override
  final String terraformValue;
}

/// `execution_client` — derived from the provider schema description.
enum BlockchainNodeEngineBlockchainNodesExecutionClient
    implements TerraformEnum {
  executionClientUnspecified('EXECUTION_CLIENT_UNSPECIFIED'),
  geth('GETH'),
  erigon('ERIGON');

  const BlockchainNodeEngineBlockchainNodesExecutionClient(this.terraformValue);
  @override
  final String terraformValue;
}

/// `network` — derived from the provider schema description.
enum BlockchainNodeEngineBlockchainNodesNetwork implements TerraformEnum {
  mainnet('MAINNET'),
  testnetGoerliPrater('TESTNET_GOERLI_PRATER'),
  testnetSepolia('TESTNET_SEPOLIA');

  const BlockchainNodeEngineBlockchainNodesNetwork(this.terraformValue);
  @override
  final String terraformValue;
}

/// `node_type` — derived from the provider schema description.
enum BlockchainNodeEngineBlockchainNodesNodeType implements TerraformEnum {
  light('LIGHT'),
  full('FULL'),
  archive('ARCHIVE');

  const BlockchainNodeEngineBlockchainNodesNodeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ethereum_details.geth_details` block of
/// `google_blockchain_node_engine_blockchain_nodes` (derived from provider schema).
@immutable
final class BlockchainNodeEngineBlockchainNodesGethDetails {
  const BlockchainNodeEngineBlockchainNodesGethDetails({
    this.garbageCollectionMode,
  });

  final TfArg<BlockchainNodeEngineBlockchainNodesGarbageCollectionMode>?
  garbageCollectionMode;

  Map<String, Object?> encode() => {
    'garbage_collection_mode': ?garbageCollectionMode?.toTfJson(),
  };
}

/// `garbage_collection_mode` — derived from the provider schema description.
enum BlockchainNodeEngineBlockchainNodesGarbageCollectionMode
    implements TerraformEnum {
  full('FULL'),
  archive('ARCHIVE');

  const BlockchainNodeEngineBlockchainNodesGarbageCollectionMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  /// Reference to `blockchain_type` attribute.
  TfRef<String> get blockchainTypeRef =>
      TfRef.attribute<String>(this, 'blockchain_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `blockchain_node_id` attribute.
  TfRef<String> get blockchainNodeIdRef =>
      TfRef.attribute<String>(this, 'blockchain_node_id');
}
