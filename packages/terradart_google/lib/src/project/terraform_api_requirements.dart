/// Terraform resource type prefix → `google_project_service.service` API endpoint.
///
/// Longest-prefix wins. Types with no match are not API-gated by the example
/// enablement checker (e.g. pure IAM adjuncts).
const List<MapEntry<String, String>> terraformApiPrefixRules = [
  MapEntry('google_gke_backup_', 'gkebackup.googleapis.com'),
  MapEntry('google_gke_hub_', 'gkehub.googleapis.com'),
  MapEntry('google_cloudfunctions2_', 'cloudfunctions.googleapis.com'),
  MapEntry('google_cloud_run_v2_', 'run.googleapis.com'),
  MapEntry('google_cloud_asset_', 'cloudasset.googleapis.com'),
  MapEntry(
      'google_access_context_manager_', 'accesscontextmanager.googleapis.com'),
  MapEntry('google_alloydb_', 'alloydb.googleapis.com'),
  MapEntry('google_apigee_', 'apigee.googleapis.com'),
  MapEntry('google_apphub_', 'apphub.googleapis.com'),
  MapEntry('google_network_management_', 'networkmanagement.googleapis.com'),
  MapEntry(
      'google_recaptcha_enterprise_', 'recaptchaenterprise.googleapis.com'),
  MapEntry('google_apikeys_', 'apikeys.googleapis.com'),
  MapEntry('google_artifact_registry_', 'artifactregistry.googleapis.com'),
  MapEntry('google_certificate_manager_', 'certificatemanager.googleapis.com'),
  MapEntry('google_ces_', 'ces.googleapis.com'),
  MapEntry('google_chronicle_', 'chronicle.googleapis.com'),
  MapEntry('google_privateca_', 'privateca.googleapis.com'),
  MapEntry('google_public_ca_', 'publicca.googleapis.com'),
  MapEntry('google_secret_manager_', 'secretmanager.googleapis.com'),
  MapEntry(
    'google_firebase_data_connect_',
    'firebasedataconnect.googleapis.com',
  ),
  MapEntry('google_firebase_app_hosting_', 'firebaseapphosting.googleapis.com'),
  MapEntry('google_firebase_app_check_', 'firebaseappcheck.googleapis.com'),
  MapEntry(
    'google_firebase_remote_config_',
    'firebaseremoteconfig.googleapis.com',
  ),
  MapEntry('google_filestore_', 'file.googleapis.com'),
  MapEntry('google_firestore_', 'firestore.googleapis.com'),
  // Longer than `google_container_` so analysis notes/occurrences do not map
  // to the GKE Container API.
  MapEntry('google_container_analysis_', 'containeranalysis.googleapis.com'),
  MapEntry('google_container_', 'container.googleapis.com'),
  MapEntry('google_contact_center_insights_',
      'contactcenterinsights.googleapis.com'),
  MapEntry('google_data_catalog_', 'datacatalog.googleapis.com'),
  MapEntry('google_dataform_', 'dataform.googleapis.com'),
  MapEntry('google_dataplex_', 'dataplex.googleapis.com'),
  MapEntry('google_dataproc_metastore_', 'metastore.googleapis.com'),
  MapEntry('google_dataproc_', 'dataproc.googleapis.com'),
  MapEntry('google_discovery_engine_', 'discoveryengine.googleapis.com'),
  MapEntry('google_dialogflow_', 'dialogflow.googleapis.com'),
  MapEntry('google_composer_', 'composer.googleapis.com'),
  MapEntry('google_compute_', 'compute.googleapis.com'),
  // Longer than `google_bigquery_` — Reservation API (slots / groups), not
  // the core BigQuery data API.
  MapEntry(
    'google_bigquery_reservation',
    'bigqueryreservation.googleapis.com',
  ),
  MapEntry(
    'google_bigquery_capacity_commitment',
    'bigqueryreservation.googleapis.com',
  ),
  MapEntry(
    'google_bigquery_bi_reservation',
    'bigqueryreservation.googleapis.com',
  ),
  MapEntry('google_backup_dr_', 'backupdr.googleapis.com'),
  // Longer than `google_bigquery_` — Data Policy API (V1 + V2), not core BQ.
  MapEntry(
    'google_bigquery_datapolicyv2_',
    'bigquerydatapolicy.googleapis.com',
  ),
  MapEntry(
    'google_bigquery_datapolicy_',
    'bigquerydatapolicy.googleapis.com',
  ),
  MapEntry('google_bigquery_', 'bigquery.googleapis.com'),
  MapEntry('google_bigtable_', 'bigtableadmin.googleapis.com'),
  MapEntry('google_os_config_', 'osconfig.googleapis.com'),
  MapEntry(
      'google_binary_authorization_', 'binaryauthorization.googleapis.com'),
  MapEntry('google_pubsub_', 'pubsub.googleapis.com'),
  // SCC v2 notification configs use the Security Center API endpoint.
  MapEntry('google_scc_', 'securitycenter.googleapis.com'),
  MapEntry('google_redis_', 'redis.googleapis.com'),
  MapEntry('google_memorystore_', 'memorystore.googleapis.com'),
  // Longer than `google_storage_` — Batch Operations API, not the core
  // Cloud Storage JSON API.
  MapEntry(
    'google_storage_batch_operations_',
    'storagebatchoperations.googleapis.com',
  ),
  // Longer than `google_storage_` — Storage Insights API (inventory reports
  // + datasets), not the core Cloud Storage JSON API.
  MapEntry(
    'google_storage_insights_',
    'storageinsights.googleapis.com',
  ),
  // Longer than `google_storage_` — Storage Transfer Service API, not the
  // core Cloud Storage JSON API.
  MapEntry(
    'google_storage_transfer_',
    'storagetransfer.googleapis.com',
  ),
  MapEntry('google_storage_', 'storage.googleapis.com'),
  MapEntry('google_kms_', 'cloudkms.googleapis.com'),
  MapEntry('google_identity_platform_', 'identitytoolkit.googleapis.com'),
  MapEntry(
    'google_integration_connectors_',
    'connectors.googleapis.com',
  ),
  MapEntry('google_integrations_', 'integrations.googleapis.com'),
  MapEntry('google_license_manager_', 'licensemanager.googleapis.com'),
  MapEntry('google_managed_kafka_', 'managedkafka.googleapis.com'),
  MapEntry('google_memcache_', 'memcache.googleapis.com'),
  MapEntry('google_migration_center_', 'migrationcenter.googleapis.com'),
  MapEntry('google_looker_', 'looker.googleapis.com'),
  MapEntry('google_logging_', 'logging.googleapis.com'),
  MapEntry('google_model_armor_', 'modelarmor.googleapis.com'),
  MapEntry('google_monitoring_', 'monitoring.googleapis.com'),
  MapEntry('google_netapp_', 'netapp.googleapis.com'),
  MapEntry(
      'google_network_connectivity_', 'networkconnectivity.googleapis.com'),
  MapEntry('google_cloud_support_', 'cloudsupport.googleapis.com'),
  MapEntry('google_network_security_', 'networksecurity.googleapis.com'),
  MapEntry('google_network_services_', 'networkservices.googleapis.com'),
  MapEntry('google_notebooks_', 'notebooks.googleapis.com'),
  MapEntry('google_workbench_', 'notebooks.googleapis.com'),
  MapEntry('google_oracle_database_', 'oracledatabase.googleapis.com'),
  MapEntry('google_dns_', 'dns.googleapis.com'),
  MapEntry('google_cloudbuildv2_', 'cloudbuild.googleapis.com'),
  MapEntry('google_cloudbuild_', 'cloudbuild.googleapis.com'),
  MapEntry('google_clouddeploy_', 'clouddeploy.googleapis.com'),
  MapEntry('google_config_', 'config.googleapis.com'),
  MapEntry('google_sourcerepo_', 'sourcerepo.googleapis.com'),
  MapEntry('google_spanner_', 'spanner.googleapis.com'),
  MapEntry('google_sql_', 'sqladmin.googleapis.com'),
  MapEntry('google_cloud_tasks_', 'cloudtasks.googleapis.com'),
  MapEntry('google_cloud_scheduler_', 'cloudscheduler.googleapis.com'),
  MapEntry('google_eventarc_', 'eventarc.googleapis.com'),
  MapEntry('google_service_networking_', 'servicenetworking.googleapis.com'),
  MapEntry('google_vpc_access_', 'vpcaccess.googleapis.com'),
  MapEntry('google_workstations_', 'workstations.googleapis.com'),
  MapEntry('google_vector_search_', 'vectorsearch.googleapis.com'),
  MapEntry(
      'google_secure_source_manager_', 'securesourcemanager.googleapis.com'),
];

/// Returns the API endpoint a [terraformType] needs, or null when unchecked.
String? requiredApiForTerraformType(String terraformType) {
  if (terraformType == 'google_project_service' ||
      terraformType == 'google_project' ||
      terraformType.endsWith('_iam_member') ||
      terraformType.endsWith('_iam_binding') ||
      terraformType.endsWith('_iam_policy')) {
    return null;
  }
  for (final rule in terraformApiPrefixRules) {
    if (terraformType.startsWith(rule.key)) return rule.value;
  }
  return null;
}
