import '../../ir/resource_def.dart';
import 'provider_rules.dart';

base class GoogleProviderRules extends ProviderRules {
  const GoogleProviderRules();

  @override
  String get providerId => 'hashicorp/google';

  @override
  String get terraformTypePrefix => 'google_';

  @override
  Map<String, String> get outputDirAliases => _aliases;

  @override
  List<String> universalGetters(ResourceDef def) {
    final attrs = def.root.attributes.map((a) => a.name).toSet();
    final lines = <String>[];
    if (attrs.contains('id')) {
      lines.add("TfRef<String> get id => TfRef.attribute<String>(this, 'id');");
    }
    if (attrs.contains('name')) {
      lines.add(
        "TfRef<String> get name => TfRef.attribute<String>(this, 'name');",
      );
    }
    return lines;
  }

  @override
  bool get exactlyOneDefaults => true;

  @override
  bool get typedNestedDefaults => true;

  static const Map<String, String> _aliases = {
    'cloudtasks': 'cloud_tasks',
    'secretmanager': 'secret_manager',
    'cloudscheduler': 'cloud_scheduler',
    'resourcemanager': 'project',
    'cloud_tasks': 'cloud_tasks',
    'secret_manager': 'secret_manager',
    'cloud_scheduler': 'cloud_scheduler',
    'service_account': 'iam',
    'project_service': 'project',
    'cloudrunv2': 'cloud_run',
    'artifact_registry': 'artifact_registry',
    'certificate': 'certificate_manager',
    'certificate_manager': 'certificate_manager',
    'cloud_run': 'cloud_run',
    'cloudbuild': 'cloud_build',
    'cloudbuildv2': 'cloud_build',
    'cloudfunctions2': 'cloud_functions',
    'firebase_app_check': 'firebase_app_check',
    'firebase_app_hosting': 'firebase_app_hosting',
    'firebase_data_connect': 'firebase_data_connect',
    'firebase_remote_config': 'firebase_remote_config',
    'project_iam': 'iam',
    'service_networking': 'service_networking',
    'vpc_access': 'service_networking',
    'gke': 'container',
    'containeranalysis': 'container_analysis',
    'container_analysis': 'container_analysis',
    'gke_backup': 'gke_backup',
    'license': 'license_manager',
    'discovery': 'discovery_engine',
    'access': 'access_context_manager',
    'access_context': 'access_context_manager',
    'access_context_manager': 'access_context_manager',
    'accesscontextmanager': 'access_context_manager',
    'active': 'active_directory',
    'active_directory': 'active_directory',
    'activedirectory': 'active_directory',
    'essential': 'essential_contacts',
    'service_directory': 'service_directory',
    'document_ai': 'document_ai',
    'parameter_manager': 'parameter_manager',
    'vertex_ai': 'vertex_ai',
    'os': 'os_config',
    'os_config': 'os_config',
    'os_config_v2': 'os_config',
    'osconfigv2': 'os_config',
    'os_login': 'iam',
    'oslogin': 'iam',
    'workload_identity': 'iam',
    'workloadidentity': 'iam',
    'binary': 'binary_authorization',
    'binary_authorization': 'binary_authorization',
    'apphub': 'apphub',
    'apikeys': 'apikeys',
    'apihub': 'apihub',
    'recaptcha': 'recaptcha',
    'recaptcha_enterprise': 'recaptcha',
    'network_management': 'network',
    'public': 'public_ca',
    'public_ca': 'public_ca',
    'publicca': 'public_ca',
    'data_loss_prevention': 'dlp',
    'data_loss': 'dlp',
    'dlp': 'dlp',
    'datacatalog': 'data_catalog',
    'data_catalog': 'data_catalog',
    'datafusion': 'data_fusion',
    'data_fusion': 'data_fusion',
    'dataflow': 'dataflow',
    'dataproc_gdc': 'dataproc',
    'dataprocgdc': 'dataproc',
    'lustre': 'lustre',
    'edgecontainer': 'edgecontainer',
    'gkeonprem': 'gkeonprem',
    'edgenetwork': 'edgenetwork',
    'containeraws': 'container_aws',
    'container_aws': 'container_aws',
    'containerazure': 'container_azure',
    'container_azure': 'container_azure',
    'containerattached': 'container_attached',
    'container_attached': 'container_attached',
    'pubsublite': 'pubsub_lite',
    'pubsub_lite': 'pubsub_lite',
    'beyondcorp': 'beyondcorp',
    'integration_connectors': 'integration_connectors',
    'integrationconnectors': 'integration_connectors',
    'cloud_asset': 'cloud_asset',
    'cloudasset': 'cloud_asset',
    'cloud_ids': 'cloud_ids',
    'cloudids': 'cloud_ids',
    'cloud_quotas': 'cloud_quotas',
    'cloudquotas': 'cloud_quotas',
    'cloud_support': 'cloud_support',
    'cloudsupport': 'cloud_support',
    'blockchain': 'blockchain',
    'blockchain_node_engine': 'blockchain',
    'blockchainnodeengine': 'blockchain',
    'vmwareengine': 'vmwareengine',
    'hypercomputecluster': 'hypercomputecluster',
    'parallelstore': 'parallelstore',
    'datalineage': 'dataplex',
    'data_lineage': 'dataplex',
    'model': 'model_armor',
    'model_armor': 'model_armor',
    'modelarmor': 'model_armor',
    'developer': 'developer_connect',
    'developer_connect': 'developer_connect',
    'developerconnect': 'developer_connect',
    'privileged': 'privileged_access_manager',
    'privileged_access': 'privileged_access_manager',
    'privileged_access_manager': 'privileged_access_manager',
    'privilegedaccessmanager': 'privileged_access_manager',
    'scc': 'scc',
    'scc_v2': 'scc',
    'securitycenterv2': 'scc',
    'storagecontrol': 'storage_control',
    'storage_control': 'storage_control',
    'storageinsights': 'storage',
    'storage_insights': 'storage',
    'storagetransfer': 'storage',
    'storage_transfer': 'storage',
    'backup': 'backup_dr',
    'backup_dr': 'backup_dr',
    'backupdr': 'backup_dr',
    'cloud_identity': 'identity',
    'cloudidentity': 'identity',
    'cloud_security_compliance': 'cloud_security_compliance',
    'cloudsecuritycompliance': 'cloud_security_compliance',
    'assured': 'assured_workloads',
    'assured_workloads': 'assured_workloads',
    'assuredworkloads': 'assured_workloads',
    'clouddomains': 'clouddomains',
    'data_pipeline': 'dataflow',
    'datapipeline': 'dataflow',
    'database_migration': 'database_migration',
    'database_migration_service': 'database_migration',
    'databasemigrationservice': 'database_migration',
    'datastream': 'datastream',
    'deployment': 'deployment_manager',
    'deployment_manager': 'deployment_manager',
    'deploymentmanager': 'deployment_manager',
    'site': 'site_verification',
    'site_verification': 'site_verification',
    'siteverification': 'site_verification',
    'securityposture': 'securityposture',
    'resource_manager': 'project',
    'org_policy': 'organization',
    'orgpolicy': 'organization',
    'ml': 'vertex_ai',
    'ml_engine': 'vertex_ai',
    'mlengine': 'vertex_ai',
    'network_security': 'network',
  };
}

final class GoogleBetaProviderRules extends GoogleProviderRules {
  const GoogleBetaProviderRules();

  @override
  String get providerId => 'hashicorp/google-beta';

  @override
  bool get typedNestedDefaults => true;

  @override
  bool get derivedEnumDefaults => true;
}
