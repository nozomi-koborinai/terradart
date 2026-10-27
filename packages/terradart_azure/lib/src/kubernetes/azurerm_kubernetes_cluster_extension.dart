// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kubernetes_cluster_extension`.
const Set<String> _azurermKubernetesClusterExtensionSensitive = <String>{};

/// At most one of `release_namespace`, `target_namespace` on `azurerm_kubernetes_cluster_extension`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.releaseNamespace(...)`.
sealed class KubernetesClusterExtensionNamespace {
  const KubernetesClusterExtensionNamespace();

  /// Sets `release_namespace`.
  const factory KubernetesClusterExtensionNamespace.releaseNamespace(
    TfArg<String> releaseNamespace,
  ) = KubernetesClusterExtensionReleaseNamespace;

  /// Sets `target_namespace`.
  const factory KubernetesClusterExtensionNamespace.targetNamespace(
    TfArg<String> targetNamespace,
  ) = KubernetesClusterExtensionTargetNamespace;

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

/// The [KubernetesClusterExtensionNamespace.releaseNamespace] choice: sets `release_namespace`.
final class KubernetesClusterExtensionReleaseNamespace
    extends KubernetesClusterExtensionNamespace {
  const KubernetesClusterExtensionReleaseNamespace(this.releaseNamespace);

  final TfArg<String> releaseNamespace;

  @internal
  @override
  String get blockKey => 'release_namespace';

  @internal
  @override
  Map<String, Object?> encode() => {
    'release_namespace': releaseNamespace.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'release_namespace': releaseNamespace,
  };
}

/// The [KubernetesClusterExtensionNamespace.targetNamespace] choice: sets `target_namespace`.
final class KubernetesClusterExtensionTargetNamespace
    extends KubernetesClusterExtensionNamespace {
  const KubernetesClusterExtensionTargetNamespace(this.targetNamespace);

  final TfArg<String> targetNamespace;

  @internal
  @override
  String get blockKey => 'target_namespace';

  @internal
  @override
  Map<String, Object?> encode() => {
    'target_namespace': targetNamespace.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'target_namespace': targetNamespace,
  };
}

/// At most one of `release_train`, `version` on `azurerm_kubernetes_cluster_extension`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.releaseTrain(...)`.
sealed class KubernetesClusterExtensionReleaseTrainOrVersion {
  const KubernetesClusterExtensionReleaseTrainOrVersion();

  /// Sets `release_train`.
  const factory KubernetesClusterExtensionReleaseTrainOrVersion.releaseTrain(
    TfArg<String> releaseTrain,
  ) = KubernetesClusterExtensionReleaseTrainOrVersionReleaseTrain;

  /// Sets `version`.
  const factory KubernetesClusterExtensionReleaseTrainOrVersion.version(
    TfArg<String> version,
  ) = KubernetesClusterExtensionReleaseTrainOrVersionChoice;

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

/// The [KubernetesClusterExtensionReleaseTrainOrVersion.releaseTrain] choice: sets `release_train`.
final class KubernetesClusterExtensionReleaseTrainOrVersionReleaseTrain
    extends KubernetesClusterExtensionReleaseTrainOrVersion {
  const KubernetesClusterExtensionReleaseTrainOrVersionReleaseTrain(
    this.releaseTrain,
  );

  final TfArg<String> releaseTrain;

  @internal
  @override
  String get blockKey => 'release_train';

  @internal
  @override
  Map<String, Object?> encode() => {'release_train': releaseTrain.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'release_train': releaseTrain};
}

/// The [KubernetesClusterExtensionReleaseTrainOrVersion.version] choice: sets `version`.
final class KubernetesClusterExtensionReleaseTrainOrVersionChoice
    extends KubernetesClusterExtensionReleaseTrainOrVersion {
  const KubernetesClusterExtensionReleaseTrainOrVersionChoice(this.version);

  final TfArg<String> version;

  @internal
  @override
  String get blockKey => 'version';

  @internal
  @override
  Map<String, Object?> encode() => {'version': version.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'version': version};
}

/// Typed helper for the `plan` block of
/// `azurerm_kubernetes_cluster_extension` (derived from provider schema).
@immutable
final class KubernetesClusterExtensionPlan {
  const KubernetesClusterExtensionPlan({
    required this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
    this.version,
  });

  final TfArg<String> name;

  final TfArg<String> product;

  final TfArg<String>? promotionCode;

  final TfArg<String> publisher;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'product': product.toTfJson(),
    'promotion_code': ?promotionCode?.toTfJson(),
    'publisher': publisher.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_kubernetes_cluster_extension`.
final class AzurermKubernetesClusterExtension extends Resource {
  static const String tfType = 'azurerm_kubernetes_cluster_extension';

  AzurermKubernetesClusterExtension(
    super.localName, {
    required TfArg<String> clusterId,
    TfArg<Map<String, String>>? configurationProtectedSettings,
    TfArg<Map<String, String>>? configurationSettings,
    required TfArg<String> extensionType,
    required TfArg<String> name,
    KubernetesClusterExtensionNamespace? namespace,
    KubernetesClusterExtensionReleaseTrainOrVersion? releaseTrainOrVersion,
    KubernetesClusterExtensionPlan? plan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'configuration_protected_settings': ?configurationProtectedSettings,
           'configuration_settings': ?configurationSettings,
           'extension_type': extensionType,
           'name': name,
           ...?namespace?.argMap,
           ...?releaseTrainOrVersion?.argMap,
           if (plan != null) 'plan': TfArg.literal(plan.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKubernetesClusterExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesClusterExtension>`.
  RefTo<AzurermKubernetesClusterExtension> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aks_assigned_identity` attribute.
  TfRef<List<Map<String, Object?>>> get aksAssignedIdentity =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'aks_assigned_identity',
      );

  /// Reference to `current_version` attribute.
  TfRef<String> get currentVersion =>
      TfRef.attribute<String>(this, 'current_version');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `configuration_protected_settings` attribute.
  TfRef<Map<String, String>> get configurationProtectedSettings =>
      TfRef.attribute<Map<String, String>>(
        this,
        'configuration_protected_settings',
      );

  /// Reference to `configuration_settings` attribute.
  TfRef<Map<String, String>> get configurationSettings =>
      TfRef.attribute<Map<String, String>>(this, 'configuration_settings');

  /// Reference to `extension_type` attribute.
  TfRef<String> get extensionType =>
      TfRef.attribute<String>(this, 'extension_type');

  /// Reference to `release_namespace` attribute.
  TfRef<String> get releaseNamespace =>
      TfRef.attribute<String>(this, 'release_namespace');

  /// Reference to `release_train` attribute.
  TfRef<String> get releaseTrain =>
      TfRef.attribute<String>(this, 'release_train');

  /// Reference to `target_namespace` attribute.
  TfRef<String> get targetNamespace =>
      TfRef.attribute<String>(this, 'target_namespace');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
