// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Cloud Logging: log-based metrics and sinks routed to BigQuery / Pub/Sub /
/// Storage / Logging-bucket destinations.
///
/// The three sink resources (`project`, `folder`, `organization`) share a
/// common shape but differ in scope: each entry filters only the log stream
/// produced under its respective resource hierarchy. `project_sink` predates
/// the unified prefix convention and keeps its unprefixed `LoggingProjectSinkBigqueryOptions` /
/// `LoggingProjectSinkLogSinkExclusion` helper types; the newer folder and organization sinks
/// use scope-prefixed names to avoid barrel-export collision.
library;

export 'src/logging/google_logging_folder_sink.dart'
    show
        GoogleLoggingFolderSink,
        LoggingFolderSinkBigqueryOptions,
        LoggingFolderSinkExclusion;
export 'src/logging/google_logging_linked_dataset.dart'
    show GoogleLoggingLinkedDataset, LoggingLinkedDatasetBigqueryDataset;
export 'src/logging/google_logging_log_scope.dart' show GoogleLoggingLogScope;
export 'src/logging/google_logging_log_view.dart' show GoogleLoggingLogView;
export 'src/logging/google_logging_log_view_iam_binding.dart'
    show GoogleLoggingLogViewIamBinding;
export 'src/logging/google_logging_log_view_iam_member.dart'
    show GoogleLoggingLogViewIamMember;
export 'src/logging/google_logging_log_view_iam_policy.dart'
    show GoogleLoggingLogViewIamPolicy;
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
export 'src/logging/google_logging_project_bucket_config.dart'
    show GoogleLoggingProjectBucketConfig;
export 'src/logging/google_logging_project_exclusion.dart'
    show GoogleLoggingProjectExclusion;
export 'src/logging/google_logging_project_sink.dart'
    show
        GoogleLoggingProjectSink,
        LoggingProjectSinkBigqueryOptions,
        LoggingProjectSinkLogSinkExclusion;
export 'src/logging/google_logging_saved_query.dart'
    show
        GoogleLoggingSavedQuery,
        LoggingSavedQueryLoggingQuery,
        LoggingSavedQueryOpsAnalyticsQuery,
        LoggingSavedQueryVisibility;
