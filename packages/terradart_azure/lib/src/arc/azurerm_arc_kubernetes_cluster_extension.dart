// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_arc_kubernetes_cluster_extension`.
const Set<String> _azurermArcKubernetesClusterExtensionSensitive = <String>{};

/// At most one of `release_namespace`, `target_namespace` on `azurerm_arc_kubernetes_cluster_extension`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.releaseNamespace(...)`.
sealed class ArcKubernetesClusterExtensionNamespace {
  const ArcKubernetesClusterExtensionNamespace();

  /// Sets `release_namespace`.
  const factory ArcKubernetesClusterExtensionNamespace.releaseNamespace(
    TfArg<String> releaseNamespace,
  ) = ArcKubernetesClusterExtensionReleaseNamespace;

  /// Sets `target_namespace`.
  const factory ArcKubernetesClusterExtensionNamespace.targetNamespace(
    TfArg<String> targetNamespace,
  ) = ArcKubernetesClusterExtensionTargetNamespace;

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

/// The [ArcKubernetesClusterExtensionNamespace.releaseNamespace] choice: sets `release_namespace`.
final class ArcKubernetesClusterExtensionReleaseNamespace
    extends ArcKubernetesClusterExtensionNamespace {
  const ArcKubernetesClusterExtensionReleaseNamespace(this.releaseNamespace);

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

/// The [ArcKubernetesClusterExtensionNamespace.targetNamespace] choice: sets `target_namespace`.
final class ArcKubernetesClusterExtensionTargetNamespace
    extends ArcKubernetesClusterExtensionNamespace {
  const ArcKubernetesClusterExtensionTargetNamespace(this.targetNamespace);

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

/// Typed helper for the `identity` block of
/// `azurerm_arc_kubernetes_cluster_extension` (derived from provider schema).
@immutable
final class ArcKubernetesClusterExtensionIdentity {
  const ArcKubernetesClusterExtensionIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_arc_kubernetes_cluster_extension`.
final class AzurermArcKubernetesClusterExtension extends Resource {
  static const String tfType = 'azurerm_arc_kubernetes_cluster_extension';

  AzurermArcKubernetesClusterExtension(
    super.localName, {
    required TfArg<String> clusterId,
    TfArg<Map<String, String>>? configurationProtectedSettings,
    TfArg<Map<String, String>>? configurationSettings,
    required TfArg<String> extensionType,
    required TfArg<String> name,
    ArcKubernetesClusterExtensionNamespace? namespace,
    TfArg<String>? releaseTrain,
    TfArg<String>? version,
    required ArcKubernetesClusterExtensionIdentity identity,
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
           'release_train': ?releaseTrain,
           'version': ?version,
           'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermArcKubernetesClusterExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermArcKubernetesClusterExtension>`.
  RefTo<AzurermArcKubernetesClusterExtension> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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
