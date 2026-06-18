/// terradart_google — curated GCP factory wrappers for `terradart`.
///
/// Pinned to `hashicorp/google ~> 7.0`. See [kProviderSource] /
/// [kProviderVersionConstraint].
///
/// This umbrella re-exports every per-service barrel. New code is encouraged
/// to import the specific service barrels instead, e.g.
/// `import 'package:terradart_google/pubsub.dart';`, which keeps the IDE
/// auto-complete dropdown service-scoped and isolates name collisions
/// between services.
library;

export 'alloydb.dart';
export 'apigee.dart';
export 'artifact_registry.dart';
export 'bigquery.dart';
export 'cloud_build.dart';
export 'cloud_functions.dart';
export 'config.dart';
export 'cloud_run.dart';
export 'cloud_scheduler.dart';
export 'certificate_manager.dart';
export 'cloud_sql.dart';
export 'cloud_tasks.dart';
export 'compute.dart';
export 'container.dart';
export 'contact.dart';
export 'data.dart';
export 'dataplex.dart';
export 'discovery_engine.dart';
export 'dialogflow.dart';
export 'dns.dart';
export 'eventarc.dart';
export 'firebase_app_check.dart';
export 'firebase_app_hosting.dart';
export 'firebase_data_connect.dart';
export 'firebase_remote_config.dart';
export 'filestore.dart';
export 'firestore.dart';
export 'gke_backup.dart';
export 'iap.dart';
export 'iam.dart';
export 'kms.dart';
export 'license_manager.dart';
export 'logging.dart';
export 'memcache.dart';
export 'monitoring.dart';
export 'network.dart';
export 'privateca.dart';
export 'project.dart';
export 'provider.dart';
export 'pubsub.dart';
export 'redis.dart';
export 'secret_manager.dart';
export 'service_networking.dart';
export 'spanner.dart';
export 'storage.dart';
