// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_fleet`.
const Set<String> _googleGkeHubFleetSensitive = <String>{};

extension type const GkeHubFleetBinaryAuthorizationEvaluationMode._(
  TfArg<String> _
) implements TfArg<String> {
  GkeHubFleetBinaryAuthorizationEvaluationMode.variable(String name)
    : this._(TfArg.variable(name));
  GkeHubFleetBinaryAuthorizationEvaluationMode.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubFleetBinaryAuthorizationEvaluationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = GkeHubFleetBinaryAuthorizationEvaluationMode._(
    TfArgLiteral('DISABLED'),
  );
  static const policyBindings = GkeHubFleetBinaryAuthorizationEvaluationMode._(
    TfArgLiteral('POLICY_BINDINGS'),
  );

  static const List<GkeHubFleetBinaryAuthorizationEvaluationMode> values = [
    disabled,
    policyBindings,
  ];
}

extension type const GkeHubFleetSecurityPostureMode._(TfArg<String> _)
    implements TfArg<String> {
  GkeHubFleetSecurityPostureMode.variable(String name)
    : this._(TfArg.variable(name));
  GkeHubFleetSecurityPostureMode.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubFleetSecurityPostureMode.arg(TfArg<String> arg) : this._(arg);

  static const disabled = GkeHubFleetSecurityPostureMode._(
    TfArgLiteral('DISABLED'),
  );
  static const basic = GkeHubFleetSecurityPostureMode._(TfArgLiteral('BASIC'));
  static const enterprise = GkeHubFleetSecurityPostureMode._(
    TfArgLiteral('ENTERPRISE'),
  );

  static const List<GkeHubFleetSecurityPostureMode> values = [
    disabled,
    basic,
    enterprise,
  ];
}

extension type const GkeHubFleetSecurityPostureVulnerabilityMode._(
  TfArg<String> _
) implements TfArg<String> {
  GkeHubFleetSecurityPostureVulnerabilityMode.variable(String name)
    : this._(TfArg.variable(name));
  GkeHubFleetSecurityPostureVulnerabilityMode.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubFleetSecurityPostureVulnerabilityMode.arg(TfArg<String> arg)
    : this._(arg);

  static const vulnerabilityDisabled =
      GkeHubFleetSecurityPostureVulnerabilityMode._(
        TfArgLiteral('VULNERABILITY_DISABLED'),
      );
  static const vulnerabilityBasic =
      GkeHubFleetSecurityPostureVulnerabilityMode._(
        TfArgLiteral('VULNERABILITY_BASIC'),
      );
  static const vulnerabilityEnterprise =
      GkeHubFleetSecurityPostureVulnerabilityMode._(
        TfArgLiteral('VULNERABILITY_ENTERPRISE'),
      );

  static const List<GkeHubFleetSecurityPostureVulnerabilityMode> values = [
    vulnerabilityDisabled,
    vulnerabilityBasic,
    vulnerabilityEnterprise,
  ];
}

@immutable
class GkeHubFleetBinaryAuthorizationConfig {
  const GkeHubFleetBinaryAuthorizationConfig({this.evaluationMode});

  final GkeHubFleetBinaryAuthorizationEvaluationMode? evaluationMode;

  Map<String, Object?> encode() => {
    if (evaluationMode != null) 'evaluation_mode': evaluationMode!.toTfJson(),
  };
}

@immutable
class GkeHubFleetSecurityPostureConfig {
  const GkeHubFleetSecurityPostureConfig({this.mode, this.vulnerabilityMode});

  final GkeHubFleetSecurityPostureMode? mode;
  final GkeHubFleetSecurityPostureVulnerabilityMode? vulnerabilityMode;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    if (vulnerabilityMode != null)
      'vulnerability_mode': vulnerabilityMode!.toTfJson(),
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
