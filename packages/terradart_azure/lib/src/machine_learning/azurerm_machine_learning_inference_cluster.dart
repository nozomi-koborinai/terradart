// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_inference_cluster`.
const Set<String> _azurermMachineLearningInferenceClusterSensitive = <String>{};

/// Machine Learning Inference Cluster enum for `cluster_purpose`.
extension type const MachineLearningInferenceClusterPurpose._(TfArg<String> _)
    implements TfArg<String> {
  MachineLearningInferenceClusterPurpose.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningInferenceClusterPurpose.expression(String template)
    : this._(TfArg.expression(template));
  const MachineLearningInferenceClusterPurpose.arg(TfArg<String> arg)
    : this._(arg);

  static const denseprod = MachineLearningInferenceClusterPurpose._(
    TfArgLiteral('DenseProd'),
  );
  static const devtest = MachineLearningInferenceClusterPurpose._(
    TfArgLiteral('DevTest'),
  );
  static const fastprod = MachineLearningInferenceClusterPurpose._(
    TfArgLiteral('FastProd'),
  );

  static const List<MachineLearningInferenceClusterPurpose> values = [
    denseprod,
    devtest,
    fastprod,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_machine_learning_inference_cluster` (derived from provider schema).
@immutable
final class MachineLearningInferenceClusterIdentity {
  const MachineLearningInferenceClusterIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `ssl` block of
/// `azurerm_machine_learning_inference_cluster` (derived from provider schema).
@immutable
final class MachineLearningInferenceClusterSsl {
  const MachineLearningInferenceClusterSsl({
    this.cert,
    this.cname,
    this.key,
    this.leafDomainLabel,
    this.overwriteExistingDomain,
  });

  final TfArg<String>? cert;

  final TfArg<String>? cname;

  final TfArg<String>? key;

  final TfArg<String>? leafDomainLabel;

  final TfArg<bool>? overwriteExistingDomain;

  @internal
  Map<String, Object?> encode() => {
    'cert': ?cert?.toTfJson(),
    'cname': ?cname?.toTfJson(),
    'key': ?key?.toTfJson(),
    'leaf_domain_label': ?leafDomainLabel?.toTfJson(),
    'overwrite_existing_domain': ?overwriteExistingDomain?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_machine_learning_inference_cluster`.
final class AzurermMachineLearningInferenceCluster extends Resource {
  static const String tfType = 'azurerm_machine_learning_inference_cluster';

  AzurermMachineLearningInferenceCluster(
    super.localName, {
    MachineLearningInferenceClusterPurpose? clusterPurpose,
    TfArg<String>? description,
    required TfArg<String> kubernetesClusterId,
    required TfArg<String> location,
    required TfArg<String> machineLearningWorkspaceId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    MachineLearningInferenceClusterIdentity? identity,
    MachineLearningInferenceClusterSsl? ssl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_purpose': ?clusterPurpose,
           'description': ?description,
           'kubernetes_cluster_id': kubernetesClusterId,
           'location': location,
           'machine_learning_workspace_id': machineLearningWorkspaceId,
           'name': name,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (ssl != null) 'ssl': TfArg.literal(ssl.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningInferenceClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningInferenceCluster>`.
  RefTo<AzurermMachineLearningInferenceCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_purpose` attribute.
  TfRef<String> get clusterPurpose =>
      TfRef.attribute<String>(this, 'cluster_purpose');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kubernetes_cluster_id` attribute.
  TfRef<String> get kubernetesClusterId =>
      TfRef.attribute<String>(this, 'kubernetes_cluster_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `machine_learning_workspace_id` attribute.
  TfRef<String> get machineLearningWorkspaceId =>
      TfRef.attribute<String>(this, 'machine_learning_workspace_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
