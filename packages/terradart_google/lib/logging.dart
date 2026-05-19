// packages/terradart_google/lib/logging.dart
/// Cloud Logging: log-based metrics and sinks routed to BigQuery / Pub/Sub /
/// Storage / Logging-bucket destinations.
///
/// The three sink resources (`project`, `folder`, `organization`) share a
/// common shape but differ in scope: each entry filters only the log stream
/// produced under its respective resource hierarchy. `project_sink` predates
/// the unified prefix convention and keeps its unprefixed `BigqueryOptions` /
/// `LogSinkExclusion` helper types; the newer folder and organization sinks
/// use scope-prefixed names to avoid barrel-export collision.
library;

export 'src/logging/google_logging_folder_sink.dart'
    show
        GoogleLoggingFolderSink,
        LoggingFolderSinkBigqueryOptions,
        LoggingFolderSinkExclusion;
export 'src/logging/google_logging_metric.dart'
    show
        GoogleLoggingMetric,
        LoggingMetricBucketOptions,
        LoggingMetricDescriptor,
        LoggingMetricExplicitBuckets,
        LoggingMetricExponentialBuckets,
        LoggingMetricKind,
        LoggingMetricLabel,
        LoggingMetricLabelValueType,
        LoggingMetricLinearBuckets,
        LoggingMetricValueType;
export 'src/logging/google_logging_organization_sink.dart'
    show
        GoogleLoggingOrganizationSink,
        LoggingOrganizationSinkBigqueryOptions,
        LoggingOrganizationSinkExclusion;
export 'src/logging/google_logging_project_sink.dart'
    show BigqueryOptions, GoogleLoggingProjectSink, LogSinkExclusion;
