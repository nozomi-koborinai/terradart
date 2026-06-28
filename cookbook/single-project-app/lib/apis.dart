/// Tier 1: API enablement.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';

/// All 8 project_service activations the recipe requires.
/// Caller adds them to its Stack via `for (final api in buildProjectServices()) add(api);`.
List<GoogleProjectService> buildProjectServices() => [
      GoogleProjectService(
        localName: 'api_run',
        service: TfArg.literal('run.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
      GoogleProjectService(
        localName: 'api_sql',
        service: TfArg.literal('sqladmin.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
      GoogleProjectService(
        localName: 'api_pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
      GoogleProjectService(
        localName: 'api_monitoring',
        service: TfArg.literal('monitoring.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
      GoogleProjectService(
        localName: 'api_secret',
        service: TfArg.literal('secretmanager.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
      GoogleProjectService(
        localName: 'api_iam',
        service: TfArg.literal('iam.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
      GoogleProjectService(
        localName: 'api_compute',
        service: TfArg.literal('compute.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
      GoogleProjectService(
        localName: 'api_servicenetworking',
        service: TfArg.literal('servicenetworking.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    ];
