/// Per-service import barrels aligned with [terradartCatalog] `barrel` names.
///
/// Use with [Apis.required] to derive the `google_project_service` set for the
/// factories you import from `package:terradart_google/<barrel>.dart`.
enum Barrels {
  alloydb('alloydb'),
  accessContextManager('access_context_manager'),
  apigee('apigee'),
  recaptcha('recaptcha'),
  apikeys('apikeys'),
  artifactRegistry('artifact_registry'),
  bigquery('bigquery'),
  bigtable('bigtable'),
  binaryAuthorization('binary_authorization'),
  certificateManager('certificate_manager'),
  chronicle('chronicle'),
  cloudBuild('cloud_build'),
  cloudFunctions('cloud_functions'),
  config('config'),
  cloudRun('cloud_run'),
  cloudScheduler('cloud_scheduler'),
  cloudTasks('cloud_tasks'),
  compute('compute'),
  container('container'),
  contact('contact'),
  dataplex('dataplex'),
  dataproc('dataproc'),
  discoveryEngine('discovery_engine'),
  dialogflow('dialogflow'),
  dnsApi('dns'),
  eventarc('eventarc'),
  firebaseAppCheck('firebase_app_check'),
  firebaseAppHosting('firebase_app_hosting'),
  firebaseDataConnect('firebase_data_connect'),
  firebaseRemoteConfig('firebase_remote_config'),
  filestore('filestore'),
  firestore('firestore'),
  gkeBackup('gke_backup'),
  iamApi('iam'),
  iapApi('iap'),
  kmsApi('kms'),
  licenseManager('license_manager'),
  logging('logging'),
  monitoring('monitoring'),
  network('network'),
  oracle('oracle'),
  osConfig('os_config'),
  spanner('spanner'),
  memcache('memcache'),
  migration('migration'),
  privateca('privateca'),
  project('project'),
  pubsub('pubsub'),
  redis('redis'),
  secretManager('secret_manager'),
  serviceNetworking('service_networking'),
  sql('sql'),
  storage('storage');

  const Barrels(this.catalogName);

  /// Catalog / `outputDir` string (e.g. `cloud_run`).
  final String catalogName;
}
