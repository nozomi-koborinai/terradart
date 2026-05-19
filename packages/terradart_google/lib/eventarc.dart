// packages/terradart_google/lib/eventarc.dart
/// Eventarc triggers — fan out Google Cloud events (Storage object writes,
/// Pub/Sub publishes, Audit Log entries, etc.) to Cloud Run services,
/// Cloud Run functions, Workflows, GKE pods, or arbitrary HTTP endpoints.
///
/// Single-resource barrel today (`GoogleEventarcTrigger`); future waves may
/// add `eventarc_channel` (Advanced edition) and similar siblings.
library;

export 'src/eventarc/google_eventarc_trigger.dart'
    show
        EventarcTriggerCloudRunService,
        EventarcTriggerDestination,
        EventarcTriggerGkeService,
        EventarcTriggerHttpEndpoint,
        EventarcTriggerMatchingCriteria,
        EventarcTriggerNetworkConfig,
        EventarcTriggerPubsubTransport,
        EventarcTriggerRetryPolicy,
        EventarcTriggerTransport,
        GoogleEventarcTrigger;
