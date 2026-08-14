import '../../ir/resource_def.dart';
import 'provider_rules.dart';

final class GoogleProviderRules extends ProviderRules {
  const GoogleProviderRules();

  @override
  String get providerId => 'hashicorp/google';

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
        "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
      );
    }
    return lines;
  }

  /// Google provider alias map. Bootstrap entries derived from the 13 yaml
  /// files shipped in Phase 4.1; extend during Phase 4.5 wave rollout when
  /// new MM products land.
  static const Map<String, String> _aliases = {
    // Strategy 1 — MM `product` field normalization (snake_case alignment).
    'cloudtasks': 'cloud_tasks',
    'secretmanager': 'secret_manager',
    'cloudscheduler': 'cloud_scheduler',
    'resourcemanager': 'project',

    // Strategy 2 — terraform-type prefix / segment overrides.
    'cloud_tasks': 'cloud_tasks',
    'secret_manager': 'secret_manager',
    'cloud_scheduler': 'cloud_scheduler',
    'service_account': 'iam',
    'project_service': 'project',

    // Phase 4.5 pilot — additional MM-product alias.
    'cloudrunv2': 'cloud_run',

    // Phase D — product folding: terraform-type prefix -> product directory.
    // Closes the convergence outputDir gap via resolver Step 2 (longest-prefix)
    // / Step 3 (segment-1). Keys verified against the tracer.
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

    // Wave 25 — Serverless VPC Access shares the service_networking barrel.
    'vpc_access': 'service_networking',

    // Wave 9 — GKE Hub factories share the `container` barrel with GKE core.
    'gke': 'container',

    // Container Analysis (`google_container_analysis_*`) — distinct from GKE.
    'containeranalysis': 'container_analysis',
    'container_analysis': 'container_analysis',

    // Wave 10 — GKE Backup (distinct from Hub / core GKE).
    'gke_backup': 'gke_backup',

    // License Manager (`google_license_manager_*` → segment `license`).
    'license': 'license_manager',

    // Vertex AI Search (`google_discovery_engine_*` → segment `discovery`).
    'discovery': 'discovery_engine',

    // Essential Contacts (`google_essential_contacts_*` → segment `essential`).
    'access': 'access_context_manager',
    'access_context': 'access_context_manager',
    'access_context_manager': 'access_context_manager',
    'accesscontextmanager': 'access_context_manager',

    // Managed Microsoft AD (`google_active_directory_*`; MM product activedirectory).
    'active': 'active_directory',
    'active_directory': 'active_directory',
    'activedirectory': 'active_directory',

    'essential': 'essential_contacts',

    // Service Directory (`google_service_directory_*` → segment `service`).
    'service_directory': 'service_directory',

    // Document AI (`google_document_ai_*` → segment `document`).
    'document_ai': 'document_ai',

    // Parameter Manager (`google_parameter_manager_*` → segment `parameter`).
    'parameter_manager': 'parameter_manager',

    // Vertex AI (`google_vertex_ai_*` → segment `vertex`).
    'vertex_ai': 'vertex_ai',

    // Wave 76 — OS Config (`google_os_config_*` → segment `os`).
    'os': 'os_config',
    'os_config': 'os_config',

    // Wave 76 — Binary Authorization (`google_binary_authorization_*`).
    'binary': 'binary_authorization',
    'binary_authorization': 'binary_authorization',

    // App Hub (`google_apphub_*`).
    'apphub': 'apphub',

    // Wave 77 — API Keys (`google_apikeys_*`).
    'apikeys': 'apikeys',

    // Apigee API Hub (`google_apihub_*`; MM product apihub).
    'apihub': 'apihub',

    // Wave 77 — reCAPTCHA Enterprise (`google_recaptcha_enterprise_*`).
    'recaptcha': 'recaptcha',
    'recaptcha_enterprise': 'recaptcha',

    // Wave 77 — Network Management (`google_network_management_*` → network barrel).
    'network_management': 'network',

    // Public CA (`google_public_ca_*` → segment `public`; MM product PublicCA).
    'public': 'public_ca',
    'public_ca': 'public_ca',
    'publicca': 'public_ca',

    // Sensitive Data Protection / DLP (`google_data_loss_prevention_*`).
    // Segment-1 would be `data` (conflicts with the data-source barrel).
    'data_loss_prevention': 'dlp',
    'data_loss': 'dlp',
    'dlp': 'dlp',

    // Data Catalog (`google_data_catalog_*` → segment `data`; MM product DataCatalog).
    'datacatalog': 'data_catalog',
    'data_catalog': 'data_catalog',

    // Cloud Data Fusion (`google_data_fusion_*` → segment `data`; MM product datafusion).
    // Distinct from the data-source barrel and from Data Catalog / Dataplex.
    'datafusion': 'data_fusion',
    'data_fusion': 'data_fusion',

    // Cloud Dataflow (`google_dataflow_*`; handwritten third_party — product.yaml only).
    'dataflow': 'dataflow',

    // Dataproc on GDC (`google_dataproc_gdc_*`; MM product dataprocgdc).
    // Fold into the dataproc barrel (operator on a GDCE cluster).
    'dataproc_gdc': 'dataproc',
    'dataprocgdc': 'dataproc',

    // Managed Lustre (`google_lustre_*`; MM product lustre).
    'lustre': 'lustre',

    // Google Distributed Cloud Edge (`google_edgecontainer_*`; MM product edgecontainer).
    'edgecontainer': 'edgecontainer',
    // GKE on-prem / GDC (`google_gkeonprem_*`; MM product gkeonprem).
    'gkeonprem': 'gkeonprem',

    // Distributed Cloud Edge Network (`google_edgenetwork_*`).
    'edgenetwork': 'edgenetwork',

    // GKE multi-cloud / attached (`google_container_aws_*` etc. — override
    // outputDir in YAML; aliases cover MM product-style segments).
    'containeraws': 'container_aws',
    'container_aws': 'container_aws',
    'containerazure': 'container_azure',
    'container_azure': 'container_azure',
    'containerattached': 'container_attached',
    'container_attached': 'container_attached',

    // Pub/Sub Lite (`google_pubsub_lite_*` — override outputDir; wrap-init
    // otherwise collapses to the classic `pubsub` barrel).
    'pubsublite': 'pubsub_lite',
    'pubsub_lite': 'pubsub_lite',

    // BeyondCorp Enterprise (`google_beyondcorp_*`).
    'beyondcorp': 'beyondcorp',

    // Integration Connectors (`google_integration_connectors_*`;
    // MM product integrationconnectors). Distinct from Application
    // Integration (`google_integrations_*` → integrations barrel).
    'integration_connectors': 'integration_connectors',
    'integrationconnectors': 'integration_connectors',

    // Cloud Asset Inventory (`google_cloud_asset_*` → segment `cloud`
    // without alias; MM product cloudasset). Distinct from cloud_ids /
    // cloud_run / cloud_build / …
    'cloud_asset': 'cloud_asset',
    'cloudasset': 'cloud_asset',

    // Cloud IDS (`google_cloud_ids_*` → segment `cloud` without alias;
    // MM product cloudids). Distinct from cloud_run / cloud_build / …
    'cloud_ids': 'cloud_ids',
    'cloudids': 'cloud_ids',

    // Cloud Quotas (`google_cloud_quotas_*` → segment `cloud` without alias;
    // MM product cloudquotas). Distinct from cloud_ids / cloud_run / …
    'cloud_quotas': 'cloud_quotas',
    'cloudquotas': 'cloud_quotas',

    // Cloud Support (`google_cloud_support_*` → segment `cloud` without alias;
    // MM product cloudsupport). Distinct from cloud_ids / cloud_quotas / …
    'cloud_support': 'cloud_support',
    'cloudsupport': 'cloud_support',

    // Blockchain Node Engine (`google_blockchain_node_engine_*`;
    // MM product blockchainnodeengine).
    'blockchain': 'blockchain',
    'blockchain_node_engine': 'blockchain',
    'blockchainnodeengine': 'blockchain',

    // Google Cloud VMware Engine (`google_vmwareengine_*`).
    'vmwareengine': 'vmwareengine',

    // Cluster Director / Hypercompute Cluster (`google_hypercomputecluster_*`).
    'hypercomputecluster': 'hypercomputecluster',
    // Parallelstore (`google_parallelstore_*`; MM product parallelstore).
    'parallelstore': 'parallelstore',

    // Data Lineage (`google_data_lineage_*` → segment `data`; MM product datalineage).
    // Shares the dataplex barrel (lineage is a Dataplex-adjacent control plane).
    'datalineage': 'dataplex',
    'data_lineage': 'dataplex',

    // Model Armor (`google_model_armor_*`; MM product ModelArmor).
    // wrap-init segment is `model`; alias to the model_armor barrel.
    'model': 'model_armor',
    'model_armor': 'model_armor',
    'modelarmor': 'model_armor',

    // Security Command Center v2 (`google_scc_v2_*` → segment `scc`).
    'scc': 'scc',
    'scc_v2': 'scc',
    'securitycenterv2': 'scc',

    // Storage Control / Intelligence (`google_storage_control_*`;
    // MM product StorageControl). Distinct from the `storage` barrel.
    'storagecontrol': 'storage_control',
    'storage_control': 'storage_control',

    // Storage Insights + Storage Transfer Service (`google_storage_insights_*`,
    // `google_storage_transfer_*`; MM products storageinsights /
    // storagetransfer). Same Cloud Storage family as the `storage` barrel
    // (batch operations already live there despite a distinct API).
    'storageinsights': 'storage',
    'storage_insights': 'storage',
    'storagetransfer': 'storage',
    'storage_transfer': 'storage',

    // Backup and DR (`google_backup_dr_*` → segment `backup`; MM product backupdr).
    'backup': 'backup_dr',
    'backup_dr': 'backup_dr',
    'backupdr': 'backup_dr',
  };
}
