// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_bedrockagent_data_source`.
const Set<String> _awsBedrockagentDataSourceSensitive = <String>{};

/// Bedrockagent Data Source Data Deletion enum for `data_deletion_policy`.
enum BedrockagentDataSourceDataDeletionPolicy implements TerraformEnum {
  retain('RETAIN'),
  delete('DELETE');

  const BedrockagentDataSourceDataDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceConfiguration {
  const BedrockagentDataSourceConfiguration({
    required this.type,
    this.confluenceConfiguration,
    this.managedKnowledgeBaseConnectorConfiguration,
    this.s3Configuration,
    this.salesforceConfiguration,
    this.sharePointConfiguration,
    this.webConfiguration,
  });

  final TfArg<BedrockagentDataSourceType> type;

  final List<BedrockagentDataSourceConfluenceConfiguration>?
  confluenceConfiguration;

  final List<BedrockagentDataSourceManagedKnowledgeBaseConnectorConfiguration>?
  managedKnowledgeBaseConnectorConfiguration;

  final List<BedrockagentDataSourceS3Configuration>? s3Configuration;

  final List<BedrockagentDataSourceSalesforceConfiguration>?
  salesforceConfiguration;

  final List<BedrockagentDataSourceSharePointConfiguration>?
  sharePointConfiguration;

  final List<BedrockagentDataSourceWebConfiguration>? webConfiguration;

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

/// `type` — derived from the provider schema description.
enum BedrockagentDataSourceType implements TerraformEnum {
  s3('S3'),
  web('WEB'),
  confluence('CONFLUENCE'),
  salesforce('SALESFORCE'),
  sharepoint('SHAREPOINT'),
  custom('CUSTOM'),
  redshiftMetadata('REDSHIFT_METADATA'),
  managedKnowledgeBaseConnector('MANAGED_KNOWLEDGE_BASE_CONNECTOR');

  const BedrockagentDataSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration.confluence_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceConfluenceConfiguration {
  const BedrockagentDataSourceConfluenceConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  final List<BedrockagentDataSourceConfluenceConfigurationCrawlerConfiguration>?
  crawlerConfiguration;

  final List<BedrockagentDataSourceConfluenceConfigurationSourceConfiguration>?
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentDataSourceConfluenceConfigurationCrawlerConfiguration {
  const BedrockagentDataSourceConfluenceConfigurationCrawlerConfiguration({
    this.filterConfiguration,
  });

  final List<BedrockagentDataSourceFilterConfiguration>? filterConfiguration;

  Map<String, Object?> encode() => {
    if (filterConfiguration != null)
      'filter_configuration': [
        for (final e in filterConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentDataSourceFilterConfiguration {
  const BedrockagentDataSourceFilterConfiguration({
    required this.type,
    this.patternObjectFilter,
  });

  final TfArg<String> type;

  final List<BedrockagentDataSourcePatternObjectFilter>? patternObjectFilter;

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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentDataSourcePatternObjectFilter {
  const BedrockagentDataSourcePatternObjectFilter({this.filters});

  final List<BedrockagentDataSourceFilters>? filters;

  Map<String, Object?> encode() => {
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.confluence_configuration.crawler_configuration.filter_configuration.pattern_object_filter.filters` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentDataSourceFilters {
  const BedrockagentDataSourceFilters({
    this.exclusionFilters,
    this.inclusionFilters,
    required this.objectType,
  });

  final TfArg<List<String>>? exclusionFilters;

  final TfArg<List<String>>? inclusionFilters;

  final TfArg<String> objectType;

  Map<String, Object?> encode() => {
    'exclusion_filters': ?exclusionFilters?.toTfJson(),
    'inclusion_filters': ?inclusionFilters?.toTfJson(),
    'object_type': objectType.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.confluence_configuration.source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceConfluenceConfigurationSourceConfiguration {
  const BedrockagentDataSourceConfluenceConfigurationSourceConfiguration({
    required this.authType,
    required this.credentialsSecretArn,
    required this.hostType,
    required this.hostUrl,
  });

  final TfArg<BedrockagentDataSourceConfluenceConfigurationAuthType> authType;

  final TfArg<String> credentialsSecretArn;

  final TfArg<BedrockagentDataSourceConfluenceConfigurationHostType> hostType;

  final TfArg<String> hostUrl;

  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'host_type': hostType.toTfJson(),
    'host_url': hostUrl.toTfJson(),
  };
}

/// `auth_type` — derived from the provider schema description.
enum BedrockagentDataSourceConfluenceConfigurationAuthType
    implements TerraformEnum {
  basic('BASIC'),
  oauth2ClientCredentials('OAUTH2_CLIENT_CREDENTIALS');

  const BedrockagentDataSourceConfluenceConfigurationAuthType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `host_type` — derived from the provider schema description.
enum BedrockagentDataSourceConfluenceConfigurationHostType
    implements TerraformEnum {
  saas('SAAS');

  const BedrockagentDataSourceConfluenceConfigurationHostType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceManagedKnowledgeBaseConnectorConfiguration {
  const BedrockagentDataSourceManagedKnowledgeBaseConnectorConfiguration({
    this.connectorParameters,
    this.deletionProtectionConfiguration,
    this.mediaExtractionConfiguration,
  });

  final TfArg<String>? connectorParameters;

  final List<BedrockagentDataSourceDeletionProtectionConfiguration>?
  deletionProtectionConfiguration;

  final List<BedrockagentDataSourceMediaExtractionConfiguration>?
  mediaExtractionConfiguration;

  Map<String, Object?> encode() => {
    'connector_parameters': ?connectorParameters?.toTfJson(),
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
final class BedrockagentDataSourceDeletionProtectionConfiguration {
  const BedrockagentDataSourceDeletionProtectionConfiguration({
    required this.deletionProtectionStatus,
    this.deletionProtectionThreshold,
  });

  final TfArg<BedrockagentDataSourceDeletionProtectionStatus>
  deletionProtectionStatus;

  final TfArg<num>? deletionProtectionThreshold;

  Map<String, Object?> encode() => {
    'deletion_protection_status': deletionProtectionStatus.toTfJson(),
    'deletion_protection_threshold': ?deletionProtectionThreshold?.toTfJson(),
  };
}

/// `deletion_protection_status` — derived from the provider schema description.
enum BedrockagentDataSourceDeletionProtectionStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const BedrockagentDataSourceDeletionProtectionStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.media_extraction_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceMediaExtractionConfiguration {
  const BedrockagentDataSourceMediaExtractionConfiguration({
    this.audioExtractionConfiguration,
    this.imageExtractionConfiguration,
    this.videoExtractionConfiguration,
  });

  final List<BedrockagentDataSourceAudioExtractionConfiguration>?
  audioExtractionConfiguration;

  final List<BedrockagentDataSourceImageExtractionConfiguration>?
  imageExtractionConfiguration;

  final List<BedrockagentDataSourceVideoExtractionConfiguration>?
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
final class BedrockagentDataSourceAudioExtractionConfiguration {
  const BedrockagentDataSourceAudioExtractionConfiguration({
    required this.audioExtractionStatus,
  });

  final TfArg<BedrockagentDataSourceAudioExtractionStatus>
  audioExtractionStatus;

  Map<String, Object?> encode() => {
    'audio_extraction_status': audioExtractionStatus.toTfJson(),
  };
}

/// `audio_extraction_status` — derived from the provider schema description.
enum BedrockagentDataSourceAudioExtractionStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const BedrockagentDataSourceAudioExtractionStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.media_extraction_configuration.image_extraction_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceImageExtractionConfiguration {
  const BedrockagentDataSourceImageExtractionConfiguration({
    required this.imageExtractionStatus,
  });

  final TfArg<BedrockagentDataSourceImageExtractionStatus>
  imageExtractionStatus;

  Map<String, Object?> encode() => {
    'image_extraction_status': imageExtractionStatus.toTfJson(),
  };
}

/// `image_extraction_status` — derived from the provider schema description.
enum BedrockagentDataSourceImageExtractionStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const BedrockagentDataSourceImageExtractionStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.media_extraction_configuration.video_extraction_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVideoExtractionConfiguration {
  const BedrockagentDataSourceVideoExtractionConfiguration({
    required this.videoExtractionStatus,
  });

  final TfArg<BedrockagentDataSourceVideoExtractionStatus>
  videoExtractionStatus;

  Map<String, Object?> encode() => {
    'video_extraction_status': videoExtractionStatus.toTfJson(),
  };
}

/// `video_extraction_status` — derived from the provider schema description.
enum BedrockagentDataSourceVideoExtractionStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const BedrockagentDataSourceVideoExtractionStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration.s3_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceS3Configuration {
  const BedrockagentDataSourceS3Configuration({
    required this.bucketArn,
    this.bucketOwnerAccountId,
    this.inclusionPrefixes,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<String>? bucketOwnerAccountId;

  final TfArg<List<String>>? inclusionPrefixes;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'bucket_owner_account_id': ?bucketOwnerAccountId?.toTfJson(),
    'inclusion_prefixes': ?inclusionPrefixes?.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.salesforce_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceSalesforceConfiguration {
  const BedrockagentDataSourceSalesforceConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  final List<BedrockagentDataSourceConfluenceConfigurationCrawlerConfiguration>?
  crawlerConfiguration;

  final List<BedrockagentDataSourceSalesforceConfigurationSourceConfiguration>?
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

/// Typed helper for the `data_source_configuration.salesforce_configuration.source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceSalesforceConfigurationSourceConfiguration {
  const BedrockagentDataSourceSalesforceConfigurationSourceConfiguration({
    required this.authType,
    required this.credentialsSecretArn,
    required this.hostUrl,
  });

  final TfArg<BedrockagentDataSourceSalesforceConfigurationAuthType> authType;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> hostUrl;

  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'host_url': hostUrl.toTfJson(),
  };
}

/// `auth_type` — derived from the provider schema description.
enum BedrockagentDataSourceSalesforceConfigurationAuthType
    implements TerraformEnum {
  oauth2ClientCredentials('OAUTH2_CLIENT_CREDENTIALS');

  const BedrockagentDataSourceSalesforceConfigurationAuthType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration.share_point_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceSharePointConfiguration {
  const BedrockagentDataSourceSharePointConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  final List<BedrockagentDataSourceConfluenceConfigurationCrawlerConfiguration>?
  crawlerConfiguration;

  final List<BedrockagentDataSourceSharePointConfigurationSourceConfiguration>?
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

/// Typed helper for the `data_source_configuration.share_point_configuration.source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceSharePointConfigurationSourceConfiguration {
  const BedrockagentDataSourceSharePointConfigurationSourceConfiguration({
    required this.authType,
    required this.credentialsSecretArn,
    required this.domain,
    required this.hostType,
    required this.siteUrls,
    this.tenantId,
  });

  final TfArg<BedrockagentDataSourceSharePointConfigurationAuthType> authType;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> domain;

  final TfArg<BedrockagentDataSourceSharePointConfigurationHostType> hostType;

  final TfArg<List<String>> siteUrls;

  final TfArg<String>? tenantId;

  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'domain': domain.toTfJson(),
    'host_type': hostType.toTfJson(),
    'site_urls': siteUrls.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// `auth_type` — derived from the provider schema description.
enum BedrockagentDataSourceSharePointConfigurationAuthType
    implements TerraformEnum {
  oauth2ClientCredentials('OAUTH2_CLIENT_CREDENTIALS'),
  oauth2SharepointAppOnlyClientCredentials(
    'OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS',
  );

  const BedrockagentDataSourceSharePointConfigurationAuthType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `host_type` — derived from the provider schema description.
enum BedrockagentDataSourceSharePointConfigurationHostType
    implements TerraformEnum {
  online('ONLINE');

  const BedrockagentDataSourceSharePointConfigurationHostType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration.web_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceWebConfiguration {
  const BedrockagentDataSourceWebConfiguration({
    this.crawlerConfiguration,
    this.sourceConfiguration,
  });

  final List<BedrockagentDataSourceWebConfigurationCrawlerConfiguration>?
  crawlerConfiguration;

  final List<BedrockagentDataSourceWebConfigurationSourceConfiguration>?
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
final class BedrockagentDataSourceWebConfigurationCrawlerConfiguration {
  const BedrockagentDataSourceWebConfigurationCrawlerConfiguration({
    this.exclusionFilters,
    this.inclusionFilters,
    this.scope,
    this.userAgent,
    this.crawlerLimits,
  });

  final TfArg<List<String>>? exclusionFilters;

  final TfArg<List<String>>? inclusionFilters;

  final TfArg<BedrockagentDataSourceScope>? scope;

  final TfArg<String>? userAgent;

  final List<BedrockagentDataSourceCrawlerLimits>? crawlerLimits;

  Map<String, Object?> encode() => {
    'exclusion_filters': ?exclusionFilters?.toTfJson(),
    'inclusion_filters': ?inclusionFilters?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'user_agent': ?userAgent?.toTfJson(),
    if (crawlerLimits != null)
      'crawler_limits': [for (final e in crawlerLimits!) e.encode()],
  };
}

/// `scope` — derived from the provider schema description.
enum BedrockagentDataSourceScope implements TerraformEnum {
  hostOnly('HOST_ONLY'),
  subdomains('SUBDOMAINS');

  const BedrockagentDataSourceScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_source_configuration.web_configuration.crawler_configuration.crawler_limits` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceCrawlerLimits {
  const BedrockagentDataSourceCrawlerLimits({this.maxPages, this.rateLimit});

  final TfArg<num>? maxPages;

  final TfArg<num>? rateLimit;

  Map<String, Object?> encode() => {
    'max_pages': ?maxPages?.toTfJson(),
    'rate_limit': ?rateLimit?.toTfJson(),
  };
}

/// Typed helper for the `data_source_configuration.web_configuration.source_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceWebConfigurationSourceConfiguration {
  const BedrockagentDataSourceWebConfigurationSourceConfiguration({
    this.urlConfiguration,
  });

  final List<BedrockagentDataSourceUrlConfiguration>? urlConfiguration;

  Map<String, Object?> encode() => {
    if (urlConfiguration != null)
      'url_configuration': [for (final e in urlConfiguration!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.web_configuration.source_configuration.url_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceUrlConfiguration {
  const BedrockagentDataSourceUrlConfiguration({this.seedUrls});

  final List<BedrockagentDataSourceSeedUrls>? seedUrls;

  Map<String, Object?> encode() => {
    if (seedUrls != null) 'seed_urls': [for (final e in seedUrls!) e.encode()],
  };
}

/// Typed helper for the `data_source_configuration.web_configuration.source_configuration.url_configuration.seed_urls` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceSeedUrls {
  const BedrockagentDataSourceSeedUrls({this.url});

  final TfArg<String>? url;

  Map<String, Object?> encode() => {'url': ?url?.toTfJson()};
}

/// Typed helper for the `server_side_encryption_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceServerSideEncryptionConfiguration {
  const BedrockagentDataSourceServerSideEncryptionConfiguration({
    this.kmsKeyArn,
  });

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
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

  final List<BedrockagentDataSourceChunkingConfiguration>?
  chunkingConfiguration;

  final List<BedrockagentDataSourceCustomTransformationConfiguration>?
  customTransformationConfiguration;

  final List<BedrockagentDataSourceParsingConfiguration>? parsingConfiguration;

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
final class BedrockagentDataSourceChunkingConfiguration {
  const BedrockagentDataSourceChunkingConfiguration({
    required this.chunkingStrategy,
    this.strategy,
  });

  final TfArg<BedrockagentDataSourceChunkingStrategy> chunkingStrategy;

  final BedrockagentDataSourceStrategy? strategy;

  Map<String, Object?> encode() => {
    'chunking_strategy': chunkingStrategy.toTfJson(),
    ...?strategy?.encode(),
  };
}

/// At most one of `fixed_size_chunking_configuration`, `hierarchical_chunking_configuration`, `semantic_chunking_configuration` on the `vector_ingestion_configuration.chunking_configuration` block of `aws_bedrockagent_data_source`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.fixedSizeChunkingConfiguration(...)`.
sealed class BedrockagentDataSourceStrategy {
  const BedrockagentDataSourceStrategy();

  /// Sets `fixed_size_chunking_configuration`.
  const factory BedrockagentDataSourceStrategy.fixedSizeChunkingConfiguration(
    List<BedrockagentDataSourceFixedSizeChunkingConfiguration>
    fixedSizeChunkingConfiguration,
  ) = BedrockagentDataSourceStrategyFixedSizeChunkingConfiguration;

  /// Sets `hierarchical_chunking_configuration`.
  const factory BedrockagentDataSourceStrategy.hierarchicalChunkingConfiguration(
    List<BedrockagentDataSourceHierarchicalChunkingConfiguration>
    hierarchicalChunkingConfiguration,
  ) = BedrockagentDataSourceStrategyHierarchicalChunkingConfiguration;

  /// Sets `semantic_chunking_configuration`.
  const factory BedrockagentDataSourceStrategy.semanticChunkingConfiguration(
    List<BedrockagentDataSourceSemanticChunkingConfiguration>
    semanticChunkingConfiguration,
  ) = BedrockagentDataSourceStrategySemanticChunkingConfiguration;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentDataSourceStrategy.fixedSizeChunkingConfiguration] choice: sets `fixed_size_chunking_configuration`.
final class BedrockagentDataSourceStrategyFixedSizeChunkingConfiguration
    extends BedrockagentDataSourceStrategy {
  const BedrockagentDataSourceStrategyFixedSizeChunkingConfiguration(
    this.fixedSizeChunkingConfiguration,
  );

  final List<BedrockagentDataSourceFixedSizeChunkingConfiguration>
  fixedSizeChunkingConfiguration;

  @override
  String get blockKey => 'fixed_size_chunking_configuration';

  @override
  Map<String, Object?> encode() => {
    'fixed_size_chunking_configuration': [
      for (final e in fixedSizeChunkingConfiguration) e.encode(),
    ],
  };
}

/// The [BedrockagentDataSourceStrategy.hierarchicalChunkingConfiguration] choice: sets `hierarchical_chunking_configuration`.
final class BedrockagentDataSourceStrategyHierarchicalChunkingConfiguration
    extends BedrockagentDataSourceStrategy {
  const BedrockagentDataSourceStrategyHierarchicalChunkingConfiguration(
    this.hierarchicalChunkingConfiguration,
  );

  final List<BedrockagentDataSourceHierarchicalChunkingConfiguration>
  hierarchicalChunkingConfiguration;

  @override
  String get blockKey => 'hierarchical_chunking_configuration';

  @override
  Map<String, Object?> encode() => {
    'hierarchical_chunking_configuration': [
      for (final e in hierarchicalChunkingConfiguration) e.encode(),
    ],
  };
}

/// The [BedrockagentDataSourceStrategy.semanticChunkingConfiguration] choice: sets `semantic_chunking_configuration`.
final class BedrockagentDataSourceStrategySemanticChunkingConfiguration
    extends BedrockagentDataSourceStrategy {
  const BedrockagentDataSourceStrategySemanticChunkingConfiguration(
    this.semanticChunkingConfiguration,
  );

  final List<BedrockagentDataSourceSemanticChunkingConfiguration>
  semanticChunkingConfiguration;

  @override
  String get blockKey => 'semantic_chunking_configuration';

  @override
  Map<String, Object?> encode() => {
    'semantic_chunking_configuration': [
      for (final e in semanticChunkingConfiguration) e.encode(),
    ],
  };
}

/// `chunking_strategy` — derived from the provider schema description.
enum BedrockagentDataSourceChunkingStrategy implements TerraformEnum {
  fixedSize('FIXED_SIZE'),
  none('NONE'),
  hierarchical('HIERARCHICAL'),
  semantic('SEMANTIC');

  const BedrockagentDataSourceChunkingStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceFixedSizeChunkingConfiguration {
  const BedrockagentDataSourceFixedSizeChunkingConfiguration({
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
final class BedrockagentDataSourceHierarchicalChunkingConfiguration {
  const BedrockagentDataSourceHierarchicalChunkingConfiguration({
    required this.overlapTokens,
    this.levelConfiguration,
  });

  final TfArg<num> overlapTokens;

  final List<BedrockagentDataSourceLevelConfiguration>? levelConfiguration;

  Map<String, Object?> encode() => {
    'overlap_tokens': overlapTokens.toTfJson(),
    if (levelConfiguration != null)
      'level_configuration': [for (final e in levelConfiguration!) e.encode()],
  };
}

/// Typed helper for the `vector_ingestion_configuration.chunking_configuration.hierarchical_chunking_configuration.level_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceLevelConfiguration {
  const BedrockagentDataSourceLevelConfiguration({required this.maxTokens});

  final TfArg<num> maxTokens;

  Map<String, Object?> encode() => {'max_tokens': maxTokens.toTfJson()};
}

/// Typed helper for the `vector_ingestion_configuration.chunking_configuration.semantic_chunking_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceSemanticChunkingConfiguration {
  const BedrockagentDataSourceSemanticChunkingConfiguration({
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
final class BedrockagentDataSourceCustomTransformationConfiguration {
  const BedrockagentDataSourceCustomTransformationConfiguration({
    this.intermediateStorage,
    this.transformation,
  });

  final List<BedrockagentDataSourceIntermediateStorage>? intermediateStorage;

  final List<BedrockagentDataSourceTransformation>? transformation;

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
final class BedrockagentDataSourceIntermediateStorage {
  const BedrockagentDataSourceIntermediateStorage({this.s3Location});

  final List<BedrockagentDataSourceS3Location>? s3Location;

  Map<String, Object?> encode() => {
    if (s3Location != null)
      's3_location': [for (final e in s3Location!) e.encode()],
  };
}

/// Typed helper for the `vector_ingestion_configuration.custom_transformation_configuration.intermediate_storage.s3_location` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceS3Location {
  const BedrockagentDataSourceS3Location({required this.uri});

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `vector_ingestion_configuration.custom_transformation_configuration.transformation` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceTransformation {
  const BedrockagentDataSourceTransformation({
    required this.stepToApply,
    this.transformationFunction,
  });

  final TfArg<BedrockagentDataSourceStepToApply> stepToApply;

  final List<BedrockagentDataSourceTransformationFunction>?
  transformationFunction;

  Map<String, Object?> encode() => {
    'step_to_apply': stepToApply.toTfJson(),
    if (transformationFunction != null)
      'transformation_function': [
        for (final e in transformationFunction!) e.encode(),
      ],
  };
}

/// `step_to_apply` — derived from the provider schema description.
enum BedrockagentDataSourceStepToApply implements TerraformEnum {
  postChunking('POST_CHUNKING');

  const BedrockagentDataSourceStepToApply(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vector_ingestion_configuration.custom_transformation_configuration.transformation.transformation_function` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceTransformationFunction {
  const BedrockagentDataSourceTransformationFunction({
    this.transformationLambdaConfiguration,
  });

  final List<BedrockagentDataSourceTransformationLambdaConfiguration>?
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
final class BedrockagentDataSourceTransformationLambdaConfiguration {
  const BedrockagentDataSourceTransformationLambdaConfiguration({
    required this.lambdaArn,
  });

  final RefTo<AwsLambdaFunction> lambdaArn;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `vector_ingestion_configuration.parsing_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceParsingConfiguration {
  const BedrockagentDataSourceParsingConfiguration({
    required this.parsingStrategy,
    this.bedrockDataAutomationConfiguration,
    this.bedrockFoundationModelConfiguration,
  });

  final TfArg<BedrockagentDataSourceParsingStrategy> parsingStrategy;

  final List<BedrockagentDataSourceBedrockDataAutomationConfiguration>?
  bedrockDataAutomationConfiguration;

  final List<BedrockagentDataSourceBedrockFoundationModelConfiguration>?
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

/// `parsing_strategy` — derived from the provider schema description.
enum BedrockagentDataSourceParsingStrategy implements TerraformEnum {
  bedrockFoundationModel('BEDROCK_FOUNDATION_MODEL'),
  bedrockDataAutomation('BEDROCK_DATA_AUTOMATION'),
  smartParsing('SMART_PARSING'),
  multiModalEmbeddings('MULTI_MODAL_EMBEDDINGS');

  const BedrockagentDataSourceParsingStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vector_ingestion_configuration.parsing_configuration.bedrock_data_automation_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceBedrockDataAutomationConfiguration {
  const BedrockagentDataSourceBedrockDataAutomationConfiguration({
    this.parsingModality,
  });

  final TfArg<BedrockagentDataSourceParsingModality>? parsingModality;

  Map<String, Object?> encode() => {
    'parsing_modality': ?parsingModality?.toTfJson(),
  };
}

/// `parsing_modality` — derived from the provider schema description.
enum BedrockagentDataSourceParsingModality implements TerraformEnum {
  multimodal('MULTIMODAL');

  const BedrockagentDataSourceParsingModality(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceBedrockFoundationModelConfiguration {
  const BedrockagentDataSourceBedrockFoundationModelConfiguration({
    required this.modelArn,
    this.parsingModality,
    this.parsingPrompt,
  });

  final TfArg<String> modelArn;

  final TfArg<BedrockagentDataSourceParsingModality>? parsingModality;

  final List<BedrockagentDataSourceParsingPrompt>? parsingPrompt;

  Map<String, Object?> encode() => {
    'model_arn': modelArn.toTfJson(),
    'parsing_modality': ?parsingModality?.toTfJson(),
    if (parsingPrompt != null)
      'parsing_prompt': [for (final e in parsingPrompt!) e.encode()],
  };
}

/// Typed helper for the `vector_ingestion_configuration.parsing_configuration.bedrock_foundation_model_configuration.parsing_prompt` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceParsingPrompt {
  const BedrockagentDataSourceParsingPrompt({
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

  AwsBedrockagentDataSource(
    super.localName, {
    TfArg<BedrockagentDataSourceDataDeletionPolicy>? dataDeletionPolicy,
    TfArg<String>? description,
    required TfArg<String> knowledgeBaseId,
    required TfArg<String> name,
    TfArg<String>? region,
    List<BedrockagentDataSourceConfiguration>? dataSourceConfiguration,
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
           'data_deletion_policy': ?dataDeletionPolicy,
           'description': ?description,
           'knowledge_base_id': knowledgeBaseId,
           'name': name,
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentDataSource>`.
  RefTo<AwsBedrockagentDataSource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceId =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `data_deletion_policy` attribute.
  TfRef<String> get dataDeletionPolicy =>
      TfRef.attribute<String>(this, 'data_deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `knowledge_base_id` attribute.
  TfRef<String> get knowledgeBaseId =>
      TfRef.attribute<String>(this, 'knowledge_base_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
