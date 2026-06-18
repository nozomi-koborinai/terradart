/// Terraform resource type prefix → `google_project_service.service` API endpoint.
///
/// Longest-prefix wins. Types with no match are not API-gated by the example
/// enablement checker (e.g. pure IAM adjuncts).
const List<MapEntry<String, String>> terraformApiPrefixRules = [
  MapEntry('google_gke_backup_', 'gkebackup.googleapis.com'),
  MapEntry('google_gke_hub_', 'gkehub.googleapis.com'),
  MapEntry('google_cloudfunctions2_', 'cloudfunctions.googleapis.com'),
  MapEntry('google_cloud_run_v2_', 'run.googleapis.com'),
  MapEntry('google_alloydb_', 'alloydb.googleapis.com'),
  MapEntry('google_apigee_', 'apigee.googleapis.com'),
  MapEntry('google_artifact_registry_', 'artifactregistry.googleapis.com'),
  MapEntry('google_certificate_manager_', 'certificatemanager.googleapis.com'),
  MapEntry('google_chronicle_', 'chronicle.googleapis.com'),
  MapEntry('google_privateca_', 'privateca.googleapis.com'),
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
  MapEntry('google_container_', 'container.googleapis.com'),
  MapEntry('google_contact_center_insights_', 'contactcenterinsights.googleapis.com'),
  MapEntry('google_dataplex_', 'dataplex.googleapis.com'),
  MapEntry('google_discovery_engine_', 'discoveryengine.googleapis.com'),
  MapEntry('google_dialogflow_', 'dialogflow.googleapis.com'),
  MapEntry('google_compute_', 'compute.googleapis.com'),
  MapEntry('google_bigquery_', 'bigquery.googleapis.com'),
  MapEntry('google_pubsub_', 'pubsub.googleapis.com'),
  MapEntry('google_redis_', 'redis.googleapis.com'),
  MapEntry('google_storage_', 'storage.googleapis.com'),
  MapEntry('google_kms_', 'cloudkms.googleapis.com'),
  MapEntry('google_license_manager_', 'licensemanager.googleapis.com'),
  MapEntry('google_memcache_', 'memcache.googleapis.com'),
  MapEntry('google_logging_', 'logging.googleapis.com'),
  MapEntry('google_monitoring_', 'monitoring.googleapis.com'),
  MapEntry('google_network_connectivity_', 'networkconnectivity.googleapis.com'),
  MapEntry('google_dns_', 'dns.googleapis.com'),
  MapEntry('google_cloudbuildv2_', 'cloudbuild.googleapis.com'),
  MapEntry('google_cloudbuild_', 'cloudbuild.googleapis.com'),
  MapEntry('google_config_', 'config.googleapis.com'),
  MapEntry('google_spanner_', 'spanner.googleapis.com'),
  MapEntry('google_sql_', 'sqladmin.googleapis.com'),
  MapEntry('google_cloud_tasks_', 'cloudtasks.googleapis.com'),
  MapEntry('google_cloud_scheduler_', 'cloudscheduler.googleapis.com'),
  MapEntry('google_eventarc_', 'eventarc.googleapis.com'),
  MapEntry('google_service_networking_', 'servicenetworking.googleapis.com'),
  MapEntry('google_vpc_access_', 'vpcaccess.googleapis.com'),
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
