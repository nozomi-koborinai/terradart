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

export 'bigquery.dart';
export 'cloud_run.dart';
export 'cloud_scheduler.dart';
export 'cloud_tasks.dart';
export 'compute.dart';
export 'data.dart';
export 'dns.dart';
export 'iam.dart';
export 'kms.dart';
export 'logging.dart';
export 'monitoring.dart';
export 'project.dart';
export 'provider.dart';
export 'pubsub.dart';
export 'secret_manager.dart';
export 'storage.dart';
