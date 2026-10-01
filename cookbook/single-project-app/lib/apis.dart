/// Tier 1: API enablement.
library;

import 'package:terradart_google/project.dart';

/// All 8 project_service activations the recipe requires.
/// Caller adds them to its Stack via `for (final api in buildProjectServices()) add(api);`.
List<GoogleProjectService> buildProjectServices() => [
  GoogleProjectService(
    'api_run',
    service: .literal('run.googleapis.com'),
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_sql',
    service: .literal('sqladmin.googleapis.com'),
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_pubsub',
    service: .literal('pubsub.googleapis.com'),
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_monitoring',
    service: .literal('monitoring.googleapis.com'),
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_secret',
    service: .literal('secretmanager.googleapis.com'),
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_iam',
    service: .literal('iam.googleapis.com'),
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_compute',
    service: .literal('compute.googleapis.com'),
    disableOnDestroy: .literal(false),
  ),
  GoogleProjectService(
    'api_servicenetworking',
    service: .literal('servicenetworking.googleapis.com'),
    disableOnDestroy: .literal(false),
  ),
];
