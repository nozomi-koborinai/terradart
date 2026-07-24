// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_fusion_instance`.
const Set<String> _googleDataFusionInstanceSensitive = <String>{};

/// Data Fusion Instance enum for `state`.
enum DataFusionInstanceState implements TerraformEnum {
  creating('CREATING'),
  running('RUNNING'),
  failed('FAILED'),
  deleting('DELETING'),
  upgrading('UPGRADING'),
  restarting('RESTARTING');

  const DataFusionInstanceState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Data Fusion Instance enum for `type`.
enum DataFusionInstanceType implements TerraformEnum {
  basic('BASIC'),
  enterprise('ENTERPRISE'),
  developer('DEVELOPER');

  const DataFusionInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_data_fusion_instance`.
///
/// Represents a Data Fusion instance.
///
/// Cloud Data Fusion **instance** — managed CDAP data integration
/// (pipeline authoring + execution control plane).
///
/// **Cost:** Cloud Data Fusion `0D19-EC86-35B0` bills instance hours by
/// [type] while the instance exists — Developer SKU `88BC-986D-9A22`
/// **$0.35/h**, Basic `E74D-F7A2-0BF5` **$1.8/h** after 120 free hours/mo,
/// Enterprise `37C9-6893-468A` **$4.2/h**. Destroy stops instance charges.
/// Too expensive for apply-smoke — ships without a quickstart
/// (`tool/example_debt.yaml`).
///
/// Enable `datafusion.googleapis.com` via [GoogleProjectService] before
/// apply. Prefer Developer for sandboxes; Enterprise enables streaming
/// and higher concurrency.
final class GoogleDataFusionInstance extends Resource {
  static const String tfType = 'google_data_fusion_instance';

  GoogleDataFusionInstance({
    required super.localName,
    required TfArg<String> name,
    required TfArg<DataFusionInstanceType> type,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? privateInstance,
    TfArg<bool>? enableRbac,
    TfArg<bool>? enableStackdriverLogging,
    TfArg<bool>? enableStackdriverMonitoring,
    TfArg<String>? version,
    TfArg<String>? zone,
    TfArg<Map<String, dynamic>>? networkConfig,
    TfArg<Map<String, dynamic>>? cryptoKeyConfig,
    TfArg<Map<String, dynamic>>? eventPublishConfig,
    TfArg<List<Map<String, dynamic>>>? accelerators,
    TfArg<Map<String, dynamic>>? maintenancePolicy,
    TfArg<Map<String, String>>? options,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'type': type,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           if (privateInstance != null) 'private_instance': privateInstance,
           if (enableRbac != null) 'enable_rbac': enableRbac,
           if (enableStackdriverLogging != null)
             'enable_stackdriver_logging': enableStackdriverLogging,
           if (enableStackdriverMonitoring != null)
             'enable_stackdriver_monitoring': enableStackdriverMonitoring,
           if (version != null) 'version': version,
           if (zone != null) 'zone': zone,
           if (networkConfig != null) 'network_config': networkConfig,
           if (cryptoKeyConfig != null) 'crypto_key_config': cryptoKeyConfig,
           if (eventPublishConfig != null)
             'event_publish_config': eventPublishConfig,
           if (accelerators != null) 'accelerators': accelerators,
           if (maintenancePolicy != null)
             'maintenance_policy': maintenancePolicy,
           if (options != null) 'options': options,
           if (labels != null) 'labels': labels,
           if (tags != null) 'tags': tags,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataFusionInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_endpoint` attribute.
  TfRef<String> get apiEndpoint =>
      TfRef.attribute<String>(this, 'api_endpoint');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `gcs_bucket` attribute.
  TfRef<String> get gcsBucket => TfRef.attribute<String>(this, 'gcs_bucket');

  /// Reference to `maintenance_events` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceEvents =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_events');

  /// Reference to `p4_service_account` attribute.
  TfRef<String> get p4ServiceAccount =>
      TfRef.attribute<String>(this, 'p4_service_account');

  /// Reference to `service_endpoint` attribute.
  TfRef<String> get serviceEndpoint =>
      TfRef.attribute<String>(this, 'service_endpoint');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `tenant_project_id` attribute.
  TfRef<String> get tenantProjectId =>
      TfRef.attribute<String>(this, 'tenant_project_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
