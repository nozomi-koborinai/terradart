/// Tier 1: API enablement.
library;

import 'package:terradart_google/project.dart';

/// All 8 project_service activations the recipe requires.
/// Caller adds them to its Stack via `for (final api in buildProjectServices()) add(api);`.
List<GoogleProjectService> buildProjectServices() => [
  GoogleProjectService(
    'api_run',
    service: .run,
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_sql',
    service: .sqladmin,
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_pubsub',
    service: .pubsub,
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_monitoring',
    service: .monitoring,
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_secret',
    service: .secretmanager,
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_iam',
    service: .iam,
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_compute',
    service: .compute,
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_servicenetworking',
    service: .servicenetworking,
    disableOnDestroy: .literal(false),
  ),
];
