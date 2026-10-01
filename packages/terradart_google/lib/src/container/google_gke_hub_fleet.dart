// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_fleet`.
const Set<String> _googleGkeHubFleetSensitive = <String>{};

enum GkeHubFleetBinaryAuthorizationEvaluationMode implements TerraformEnum {
  disabled('DISABLED'),
  policyBindings('POLICY_BINDINGS');

  const GkeHubFleetBinaryAuthorizationEvaluationMode(this.terraformValue);
  @override
  final String terraformValue;
}

enum GkeHubFleetSecurityPostureMode implements TerraformEnum {
  disabled('DISABLED'),
  basic('BASIC'),
  enterprise('ENTERPRISE');

  const GkeHubFleetSecurityPostureMode(this.terraformValue);
  @override
  final String terraformValue;
}

enum GkeHubFleetSecurityPostureVulnerabilityMode implements TerraformEnum {
  vulnerabilityDisabled('VULNERABILITY_DISABLED'),
  vulnerabilityBasic('VULNERABILITY_BASIC'),
  vulnerabilityEnterprise('VULNERABILITY_ENTERPRISE');

  const GkeHubFleetSecurityPostureVulnerabilityMode(this.terraformValue);
  @override
  final String terraformValue;
}

@immutable
class GkeHubFleetBinaryAuthorizationConfig {
  const GkeHubFleetBinaryAuthorizationConfig({this.evaluationMode});

  final GkeHubFleetBinaryAuthorizationEvaluationMode? evaluationMode;

  Map<String, Object?> encode() => {
    if (evaluationMode != null)
      'evaluation_mode': evaluationMode!.terraformValue,
  };
}

@immutable
class GkeHubFleetSecurityPostureConfig {
  const GkeHubFleetSecurityPostureConfig({this.mode, this.vulnerabilityMode});

  final GkeHubFleetSecurityPostureMode? mode;
  final GkeHubFleetSecurityPostureVulnerabilityMode? vulnerabilityMode;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.terraformValue,
    if (vulnerabilityMode != null)
      'vulnerability_mode': vulnerabilityMode!.terraformValue,
  };
}

@immutable
class GkeHubFleetDefaultClusterConfig {
  const GkeHubFleetDefaultClusterConfig({
    this.binaryAuthorizationConfig,
    this.securityPostureConfig,
  });

  final GkeHubFleetBinaryAuthorizationConfig? binaryAuthorizationConfig;
  final GkeHubFleetSecurityPostureConfig? securityPostureConfig;

  Map<String, Object?> encode() => {
    if (binaryAuthorizationConfig != null)
      'binary_authorization_config': [binaryAuthorizationConfig!.encode()],
    if (securityPostureConfig != null)
      'security_posture_config': [securityPostureConfig!.encode()],
  };
}

/// Factory wrapper for `google_gke_hub_fleet`.
///
/// Fleet contains information about a group of clusters.
///
/// Registers the **default GKE Hub fleet** for a project. Every project has
/// at most one fleet; this resource creates it when absent.
///
/// Pair with [GoogleGkeHubMembership] to enroll a [GoogleContainerCluster]
/// in fleet management (config sync, multi-cluster services, etc.).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_gke_hub_fleet.`).
///
/// Optional:
/// - `displayName`: human-readable fleet label in the GCP console.
/// - `project`: defaults to the provider's `project` when omitted.
///
/// Example:
/// ```dart
/// final fleet = GoogleGkeHubFleet(
///   'default',
///   displayName: TfArg.literal('Production fleet'),
///   defaultClusterConfig: GkeHubFleetDefaultClusterConfig(
///     securityPostureConfig: .new(
///       mode: GkeHubFleetSecurityPostureMode.basic,
///     ),
///   ),
/// );
/// ```
final class GoogleGkeHubFleet extends Resource {
  static const String tfType = 'google_gke_hub_fleet';

  GoogleGkeHubFleet(
    super.localName, {
    TfArg<String>? displayName,
    TfArg<String>? project,
    GkeHubFleetDefaultClusterConfig? defaultClusterConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': ?displayName,
           'project': ?project,
           if (defaultClusterConfig != null)
             'default_cluster_config': TfArg.literal([
               defaultClusterConfig.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubFleetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubFleet>`.
  RefTo<GoogleGkeHubFleet> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
