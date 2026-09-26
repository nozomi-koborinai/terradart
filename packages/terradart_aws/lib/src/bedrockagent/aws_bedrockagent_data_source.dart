// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_data_source`.
const Set<String> _awsBedrockagentDataSourceSensitive = <String>{};

/// Typed helper for the `data_source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfiguration {
  const BedrockagentDataSourceDataSourceConfiguration({
    required this.type,
    this.confluenceConfiguration,
    this.managedKnowledgeBaseConnectorConfiguration,
    this.s3Configuration,
    this.salesforceConfiguration,
    this.sharePointConfiguration,
    this.webConfiguration,
  });

  final TfArg<String> type;

  final List<
    BedrockagentDataSourceDataSourceConfigurationConfluenceConfiguration
  >?
  confluenceConfiguration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration
  >?
  managedKnowledgeBaseConnectorConfiguration;

  final List<BedrockagentDataSourceDataSourceConfigurationS3Configuration>?
  s3Configuration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationSalesforceConfiguration
  >?
  salesforceConfiguration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationSharePointConfiguration
  >?
  sharePointConfiguration;

  final List<BedrockagentDataSourceDataSourceConfigurationWebConfiguration>?
  webConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (confluenceConfiguration != null)
      'confluence_configuration': [
        for (final e in confluenceConfiguration!) e.encode(),
      ],
    if (managedKnowledgeBaseConnectorConfiguration != null)
      'managed_knowledge_base_connector_configuration': [
        for (final e in managedKnowledgeBaseConnectorConfiguration!) e.encode(),
      ],
    if (s3Configuration != null)
      's3_configuration': [for (final e in s3Configuration!) e.encode()],
    if (salesforceConfiguration != null)
      'salesforce_configuration': [
        for (final e in salesforceConfiguration!) e.encode(),
      ],
    if (sharePointConfiguration != null)
      'share_point_configuration': [
        for (final e in sharePointConfiguration!) e.encode(),
      ],
    if (webConfiguration != null)
      'web_configuration': [for (final e in webConfiguration!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.confluence_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationConfluenceConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationConfluenceConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration
  >?
  crawlerConfiguration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration
  >?
  sourceConfiguration;

  Map<String, Object?> encode() => {
    if (crawlerConfiguration != null)
      'crawler_configuration': [
        for (final e in crawlerConfiguration!) e.encode(),
      ],
    if (sourceConfiguration != null)
      'source_configuration': [
        for (final e in sourceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.confluence_configuration.crawler_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration
  >?
  filterConfiguration;

  Map<String, Object?> encode() => {
    if (filterConfiguration != null)
      'filter_configuration': [
        for (final e in filterConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfiguration({
    required this.type,
    this.patternObjectFilter,
  });

  final TfArg<String> type;

  final List<
    BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter
  >?
  patternObjectFilter;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (patternObjectFilter != null)
      'pattern_object_filter': [
        for (final e in patternObjectFilter!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter {
  const BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter({
    this.filters,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilters
  >?
  filters;

  Map<String, Object?> encode() => {
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilters {
  const BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilters({
    this.exclusionFilters,
    this.inclusionFilters,
    required this.objectType,
  });

  final TfArg<List<Object?>>? exclusionFilters;

  final TfArg<List<Object?>>? inclusionFilters;

  final TfArg<String> objectType;

  Map<String, Object?> encode() => {
    if (exclusionFilters != null)
      'exclusion_filters': exclusionFilters!.toTfJson(),
    if (inclusionFilters != null)
      'inclusion_filters': inclusionFilters!.toTfJson(),
    'object_type': objectType.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.confluence_configuration.source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationConfluenceConfigurationSourceConfiguration({
    required this.authType,
    required this.credentialsSecretArn,
    required this.hostType,
    required this.hostUrl,
  });

  final TfArg<String> authType;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> hostType;

  final TfArg<String> hostUrl;

  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'host_type': hostType.toTfJson(),
    'host_url': hostUrl.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration({
    this.connectorParameters,
    this.deletionProtectionConfiguration,
    this.mediaExtractionConfiguration,
  });

  final TfArg<String>? connectorParameters;

  final List<
    BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration
  >?
  deletionProtectionConfiguration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration
  >?
  mediaExtractionConfiguration;

  Map<String, Object?> encode() => {
    if (connectorParameters != null)
      'connector_parameters': connectorParameters!.toTfJson(),
    if (deletionProtectionConfiguration != null)
      'deletion_protection_configuration': [
        for (final e in deletionProtectionConfiguration!) e.encode(),
      ],
    if (mediaExtractionConfiguration != null)
      'media_extraction_configuration': [
        for (final e in mediaExtractionConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.deletion_protection_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration({
    required this.deletionProtectionStatus,
    this.deletionProtectionThreshold,
  });

  final TfArg<String> deletionProtectionStatus;

  final TfArg<num>? deletionProtectionThreshold;

  Map<String, Object?> encode() => {
    'deletion_protection_status': deletionProtectionStatus.toTfJson(),
    if (deletionProtectionThreshold != null)
      'deletion_protection_threshold': deletionProtectionThreshold!.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.media_extraction_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration({
    this.audioExtractionConfiguration,
    this.imageExtractionConfiguration,
    this.videoExtractionConfiguration,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration
  >?
  audioExtractionConfiguration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration
  >?
  imageExtractionConfiguration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration
  >?
  videoExtractionConfiguration;

  Map<String, Object?> encode() => {
    if (audioExtractionConfiguration != null)
      'audio_extraction_configuration': [
        for (final e in audioExtractionConfiguration!) e.encode(),
      ],
    if (imageExtractionConfiguration != null)
      'image_extraction_configuration': [
        for (final e in imageExtractionConfiguration!) e.encode(),
      ],
    if (videoExtractionConfiguration != null)
      'video_extraction_configuration': [
        for (final e in videoExtractionConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.media_extraction_configuration.audio_extraction_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration({
    required this.audioExtractionStatus,
  });

  final TfArg<String> audioExtractionStatus;

  Map<String, Object?> encode() => {
    'audio_extraction_status': audioExtractionStatus.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.media_extraction_configuration.image_extraction_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration({
    required this.imageExtractionStatus,
  });

  final TfArg<String> imageExtractionStatus;

  Map<String, Object?> encode() => {
    'image_extraction_status': imageExtractionStatus.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.media_extraction_configuration.video_extraction_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration({
    required this.videoExtractionStatus,
  });

  final TfArg<String> videoExtractionStatus;

  Map<String, Object?> encode() => {
    'video_extraction_status': videoExtractionStatus.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.s3_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationS3Configuration {
  const BedrockagentDataSourceDataSourceConfigurationS3Configuration({
    required this.bucketArn,
    this.bucketOwnerAccountId,
    this.inclusionPrefixes,
  });

  final TfArg<String> bucketArn;

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<List<Object?>>? inclusionPrefixes;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bucketOwnerAccountId != null)
      'bucket_owner_account_id': bucketOwnerAccountId!.toTfJson(),
    if (inclusionPrefixes != null)
      'inclusion_prefixes': inclusionPrefixes!.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.salesforce_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSalesforceConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationSalesforceConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration
  >?
  crawlerConfiguration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration
  >?
  sourceConfiguration;

  Map<String, Object?> encode() => {
    if (crawlerConfiguration != null)
      'crawler_configuration': [
        for (final e in crawlerConfiguration!) e.encode(),
      ],
    if (sourceConfiguration != null)
      'source_configuration': [
        for (final e in sourceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.salesforce_configuration.crawler_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration
  >?
  filterConfiguration;

  Map<String, Object?> encode() => {
    if (filterConfiguration != null)
      'filter_configuration': [
        for (final e in filterConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfiguration({
    required this.type,
    this.patternObjectFilter,
  });

  final TfArg<String> type;

  final List<
    BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter
  >?
  patternObjectFilter;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (patternObjectFilter != null)
      'pattern_object_filter': [
        for (final e in patternObjectFilter!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter {
  const BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter({
    this.filters,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilters
  >?
  filters;

  Map<String, Object?> encode() => {
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.salesforce_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilters {
  const BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilters({
    this.exclusionFilters,
    this.inclusionFilters,
    required this.objectType,
  });

  final TfArg<List<Object?>>? exclusionFilters;

  final TfArg<List<Object?>>? inclusionFilters;

  final TfArg<String> objectType;

  Map<String, Object?> encode() => {
    if (exclusionFilters != null)
      'exclusion_filters': exclusionFilters!.toTfJson(),
    if (inclusionFilters != null)
      'inclusion_filters': inclusionFilters!.toTfJson(),
    'object_type': objectType.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.salesforce_configuration.source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationSalesforceConfigurationSourceConfiguration({
    required this.authType,
    required this.credentialsSecretArn,
    required this.hostUrl,
  });

  final TfArg<String> authType;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> hostUrl;

  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'host_url': hostUrl.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.share_point_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSharePointConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationSharePointConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration
  >?
  crawlerConfiguration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration
  >?
  sourceConfiguration;

  Map<String, Object?> encode() => {
    if (crawlerConfiguration != null)
      'crawler_configuration': [
        for (final e in crawlerConfiguration!) e.encode(),
      ],
    if (sourceConfiguration != null)
      'source_configuration': [
        for (final e in sourceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.share_point_configuration.crawler_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration
  >?
  filterConfiguration;

  Map<String, Object?> encode() => {
    if (filterConfiguration != null)
      'filter_configuration': [
        for (final e in filterConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfiguration({
    required this.type,
    this.patternObjectFilter,
  });

  final TfArg<String> type;

  final List<
    BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter
  >?
  patternObjectFilter;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (patternObjectFilter != null)
      'pattern_object_filter': [
        for (final e in patternObjectFilter!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter {
  const BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilter({
    this.filters,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilters
  >?
  filters;

  Map<String, Object?> encode() => {
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.share_point_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilters {
  const BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilters({
    this.exclusionFilters,
    this.inclusionFilters,
    required this.objectType,
  });

  final TfArg<List<Object?>>? exclusionFilters;

  final TfArg<List<Object?>>? inclusionFilters;

  final TfArg<String> objectType;

  Map<String, Object?> encode() => {
    if (exclusionFilters != null)
      'exclusion_filters': exclusionFilters!.toTfJson(),
    if (inclusionFilters != null)
      'inclusion_filters': inclusionFilters!.toTfJson(),
    'object_type': objectType.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.share_point_configuration.source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationSharePointConfigurationSourceConfiguration({
    required this.authType,
    required this.credentialsSecretArn,
    required this.domain,
    required this.hostType,
    required this.siteUrls,
    this.tenantId,
  });

  final TfArg<String> authType;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> domain;

  final TfArg<String> hostType;

  final TfArg<List<Object?>> siteUrls;

  final TfArg<String>? tenantId;

  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'domain': domain.toTfJson(),
    'host_type': hostType.toTfJson(),
    'site_urls': siteUrls.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.web_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationWebConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationWebConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration
  >?
  crawlerConfiguration;

  final List<
    BedrockagentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration
  >?
  sourceConfiguration;

  Map<String, Object?> encode() => {
    if (crawlerConfiguration != null)
      'crawler_configuration': [
        for (final e in crawlerConfiguration!) e.encode(),
      ],
    if (sourceConfiguration != null)
      'source_configuration': [
        for (final e in sourceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.web_configuration.crawler_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration({
    this.exclusionFilters,
    this.inclusionFilters,
    this.scope,
    this.userAgent,
    this.crawlerLimits,
  });

  final TfArg<List<Object?>>? exclusionFilters;

  final TfArg<List<Object?>>? inclusionFilters;

  final TfArg<String>? scope;

  final TfArg<String>? userAgent;

  final List<
    BedrockagentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits
  >?
  crawlerLimits;

  Map<String, Object?> encode() => {
    if (exclusionFilters != null)
      'exclusion_filters': exclusionFilters!.toTfJson(),
    if (inclusionFilters != null)
      'inclusion_filters': inclusionFilters!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (userAgent != null) 'user_agent': userAgent!.toTfJson(),
    if (crawlerLimits != null)
      'crawler_limits': [for (final e in crawlerLimits!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.web_configuration.crawler_configuration.crawler_limits` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits {
  const BedrockagentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits({
    this.maxPages,
    this.rateLimit,
  });

  final TfArg<num>? maxPages;

  final TfArg<num>? rateLimit;

  Map<String, Object?> encode() => {
    if (maxPages != null) 'max_pages': maxPages!.toTfJson(),
    if (rateLimit != null) 'rate_limit': rateLimit!.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.web_configuration.source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationWebConfigurationSourceConfiguration({
    this.urlConfiguration,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration
  >?
  urlConfiguration;

  Map<String, Object?> encode() => {
    if (urlConfiguration != null)
      'url_configuration': [for (final e in urlConfiguration!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.web_configuration.source_configuration.url_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration {
  const BedrockagentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration({
    this.seedUrls,
  });

  final List<
    BedrockagentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrls
  >?
  seedUrls;

  Map<String, Object?> encode() => {
    if (seedUrls != null) 'seed_urls': [for (final e in seedUrls!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.web_configuration.source_configuration.url_configuration.seed_urls` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrls {
  const BedrockagentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrls({
    this.url,
  });

  final TfArg<String>? url;

  Map<String, Object?> encode() => {if (url != null) 'url': url!.toTfJson()};
}

/// Typed helper for the `server_side_encryption_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceServerSideEncryptionConfiguration {
  const BedrockagentDataSourceServerSideEncryptionConfiguration({
    this.kmsKeyArn,
  });

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
}

/// Typed helper for the `vector_ingestion_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfiguration {
  const BedrockagentDataSourceVectorIngestionConfiguration({
    this.chunkingConfiguration,
    this.customTransformationConfiguration,
    this.parsingConfiguration,
  });

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationChunkingConfiguration
  >?
  chunkingConfiguration;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration
  >?
  customTransformationConfiguration;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationParsingConfiguration
  >?
  parsingConfiguration;

  Map<String, Object?> encode() => {
    if (chunkingConfiguration != null)
      'chunking_configuration': [
        for (final e in chunkingConfiguration!) e.encode(),
      ],
    if (customTransformationConfiguration != null)
      'custom_transformation_configuration': [
        for (final e in customTransformationConfiguration!) e.encode(),
      ],
    if (parsingConfiguration != null)
      'parsing_configuration': [
        for (final e in parsingConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `vector_ingestion_configuration.chunking_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationChunkingConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationChunkingConfiguration({
    required this.chunkingStrategy,
    this.fixedSizeChunkingConfiguration,
    this.hierarchicalChunkingConfiguration,
    this.semanticChunkingConfiguration,
  });

  final TfArg<String> chunkingStrategy;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration
  >?
  fixedSizeChunkingConfiguration;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration
  >?
  hierarchicalChunkingConfiguration;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration
  >?
  semanticChunkingConfiguration;

  Map<String, Object?> encode() => {
    'chunking_strategy': chunkingStrategy.toTfJson(),
    if (fixedSizeChunkingConfiguration != null)
      'fixed_size_chunking_configuration': [
        for (final e in fixedSizeChunkingConfiguration!) e.encode(),
      ],
    if (hierarchicalChunkingConfiguration != null)
      'hierarchical_chunking_configuration': [
        for (final e in hierarchicalChunkingConfiguration!) e.encode(),
      ],
    if (semanticChunkingConfiguration != null)
      'semantic_chunking_configuration': [
        for (final e in semanticChunkingConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration({
    required this.maxTokens,
    required this.overlapPercentage,
  });

  final TfArg<num> maxTokens;

  final TfArg<num> overlapPercentage;

  Map<String, Object?> encode() => {
    'max_tokens': maxTokens.toTfJson(),
    'overlap_percentage': overlapPercentage.toTfJson(),
  };
}

/// Typed helper for the `vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfiguration({
    required this.overlapTokens,
    this.levelConfiguration,
  });

  final TfArg<num> overlapTokens;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration
  >?
  levelConfiguration;

  Map<String, Object?> encode() => {
    'overlap_tokens': overlapTokens.toTfJson(),
    if (levelConfiguration != null)
      'level_configuration': [for (final e in levelConfiguration!) e.encode()],
  };
}

/// Typed helper for the `vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration({
    required this.maxTokens,
  });

  final TfArg<num> maxTokens;

  Map<String, Object?> encode() => {'max_tokens': maxTokens.toTfJson()};
}

/// Typed helper for the `vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration({
    required this.breakpointPercentileThreshold,
    required this.bufferSize,
    required this.maxToken,
  });

  final TfArg<num> breakpointPercentileThreshold;

  final TfArg<num> bufferSize;

  final TfArg<num> maxToken;

  Map<String, Object?> encode() => {
    'breakpoint_percentile_threshold': breakpointPercentileThreshold.toTfJson(),
    'buffer_size': bufferSize.toTfJson(),
    'max_token': maxToken.toTfJson(),
  };
}

/// Typed helper for the `vector_ingestion_configuration.custom_transformation_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfiguration({
    this.intermediateStorage,
    this.transformation,
  });

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage
  >?
  intermediateStorage;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation
  >?
  transformation;

  Map<String, Object?> encode() => {
    if (intermediateStorage != null)
      'intermediate_storage': [
        for (final e in intermediateStorage!) e.encode(),
      ],
    if (transformation != null)
      'transformation': [for (final e in transformation!) e.encode()],
  };
}

/// Typed helper for the `vector_ingestion_configuration.custom_transformation_configuration.intermediate_storage` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage {
  const BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorage({
    this.s3Location,
  });

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location
  >?
  s3Location;

  Map<String, Object?> encode() => {
    if (s3Location != null)
      's3_location': [for (final e in s3Location!) e.encode()],
  };
}

/// Typed helper for the `vector_ingestion_configuration.custom_transformation_configuration.intermediate_storage.s3_location` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location {
  const BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location({
    required this.uri,
  });

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `vector_ingestion_configuration.custom_transformation_configuration.transformation` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation {
  const BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformation({
    required this.stepToApply,
    this.transformationFunction,
  });

  final TfArg<String> stepToApply;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction
  >?
  transformationFunction;

  Map<String, Object?> encode() => {
    'step_to_apply': stepToApply.toTfJson(),
    if (transformationFunction != null)
      'transformation_function': [
        for (final e in transformationFunction!) e.encode(),
      ],
  };
}

/// Typed helper for the `vector_ingestion_configuration.custom_transformation_configuration.transformation.transformation_function` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction {
  const BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunction({
    this.transformationLambdaConfiguration,
  });

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration
  >?
  transformationLambdaConfiguration;

  Map<String, Object?> encode() => {
    if (transformationLambdaConfiguration != null)
      'transformation_lambda_configuration': [
        for (final e in transformationLambdaConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `vector_ingestion_configuration.custom_transformation_configuration.transformation.transformation_function.transformation_lambda_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationTransformationTransformationFunctionTransformationLambdaConfiguration({
    required this.lambdaArn,
  });

  final TfArg<String> lambdaArn;

  Map<String, Object?> encode() => {'lambda_arn': lambdaArn.toTfJson()};
}

/// Typed helper for the `vector_ingestion_configuration.parsing_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationParsingConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationParsingConfiguration({
    required this.parsingStrategy,
    this.bedrockDataAutomationConfiguration,
    this.bedrockFoundationModelConfiguration,
  });

  final TfArg<String> parsingStrategy;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration
  >?
  bedrockDataAutomationConfiguration;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration
  >?
  bedrockFoundationModelConfiguration;

  Map<String, Object?> encode() => {
    'parsing_strategy': parsingStrategy.toTfJson(),
    if (bedrockDataAutomationConfiguration != null)
      'bedrock_data_automation_configuration': [
        for (final e in bedrockDataAutomationConfiguration!) e.encode(),
      ],
    if (bedrockFoundationModelConfiguration != null)
      'bedrock_foundation_model_configuration': [
        for (final e in bedrockFoundationModelConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `vector_ingestion_configuration.parsing_configuration.bedrock_data_automation_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration({
    this.parsingModality,
  });

  final TfArg<String>? parsingModality;

  Map<String, Object?> encode() => {
    if (parsingModality != null)
      'parsing_modality': parsingModality!.toTfJson(),
  };
}

/// Typed helper for the `vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration {
  const BedrockagentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration({
    required this.modelArn,
    this.parsingModality,
    this.parsingPrompt,
  });

  final TfArg<String> modelArn;

  final TfArg<String>? parsingModality;

  final List<
    BedrockagentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt
  >?
  parsingPrompt;

  Map<String, Object?> encode() => {
    'model_arn': modelArn.toTfJson(),
    if (parsingModality != null)
      'parsing_modality': parsingModality!.toTfJson(),
    if (parsingPrompt != null)
      'parsing_prompt': [for (final e in parsingPrompt!) e.encode()],
  };
}

/// Typed helper for the `vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_prompt` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt {
  const BedrockagentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt({
    required this.parsingPromptString,
  });

  final TfArg<String> parsingPromptString;

  Map<String, Object?> encode() => {
    'parsing_prompt_string': parsingPromptString.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagent_data_source`.
final class AwsBedrockagentDataSource extends Resource {
  static const String tfType = 'aws_bedrockagent_data_source';

  AwsBedrockagentDataSource({
    required super.localName,
    TfArg<String>? dataDeletionPolicy,
    TfArg<String>? description,
    required TfArg<String> knowledgeBaseId,
    required TfArg<String> name,
    TfArg<String>? region,
    List<BedrockagentDataSourceDataSourceConfiguration>?
    dataSourceConfiguration,
    List<BedrockagentDataSourceServerSideEncryptionConfiguration>?
    serverSideEncryptionConfiguration,
    List<BedrockagentDataSourceVectorIngestionConfiguration>?
    vectorIngestionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dataDeletionPolicy != null)
             'data_deletion_policy': dataDeletionPolicy,
           if (description != null) 'description': description,
           'knowledge_base_id': knowledgeBaseId,
           'name': name,
           if (region != null) 'region': region,
           if (dataSourceConfiguration != null)
             'data_source_configuration': TfArg.literal([
               for (final e in dataSourceConfiguration) e.encode(),
             ]),
           if (serverSideEncryptionConfiguration != null)
             'server_side_encryption_configuration': TfArg.literal([
               for (final e in serverSideEncryptionConfiguration) e.encode(),
             ]),
           if (vectorIngestionConfiguration != null)
             'vector_ingestion_configuration': TfArg.literal([
               for (final e in vectorIngestionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentDataSourceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceId =>
      TfRef.attribute<String>(this, 'data_source_id');
}
