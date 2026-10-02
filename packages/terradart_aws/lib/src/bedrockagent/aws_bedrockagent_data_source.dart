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
extension type const BedrockagentDataSourceDataDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentDataSourceDataDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceDataDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceDataDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const retain = BedrockagentDataSourceDataDeletionPolicy._(
    TfArgLiteral('RETAIN'),
  );
  static const delete = BedrockagentDataSourceDataDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );

  static const List<BedrockagentDataSourceDataDeletionPolicy> values = [
    retain,
    delete,
  ];
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

  final BedrockagentDataSourceType type;

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

  @internal
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
extension type const BedrockagentDataSourceType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentDataSourceType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceType.arg(TfArg<String> arg) : this._(arg);

  static const s3 = BedrockagentDataSourceType._(TfArgLiteral('S3'));
  static const web = BedrockagentDataSourceType._(TfArgLiteral('WEB'));
  static const confluence = BedrockagentDataSourceType._(
    TfArgLiteral('CONFLUENCE'),
  );
  static const salesforce = BedrockagentDataSourceType._(
    TfArgLiteral('SALESFORCE'),
  );
  static const sharepoint = BedrockagentDataSourceType._(
    TfArgLiteral('SHAREPOINT'),
  );
  static const custom = BedrockagentDataSourceType._(TfArgLiteral('CUSTOM'));
  static const redshiftMetadata = BedrockagentDataSourceType._(
    TfArgLiteral('REDSHIFT_METADATA'),
  );
  static const managedKnowledgeBaseConnector = BedrockagentDataSourceType._(
    TfArgLiteral('MANAGED_KNOWLEDGE_BASE_CONNECTOR'),
  );

  static const List<BedrockagentDataSourceType> values = [
    s3,
    web,
    confluence,
    salesforce,
    sharepoint,
    custom,
    redshiftMetadata,
    managedKnowledgeBaseConnector,
  ];
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final BedrockagentDataSourceConfluenceConfigurationAuthType authType;

  final TfArg<String> credentialsSecretArn;

  final BedrockagentDataSourceConfluenceConfigurationHostType hostType;

  final TfArg<String> hostUrl;

  @internal
  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'host_type': hostType.toTfJson(),
    'host_url': hostUrl.toTfJson(),
  };
}

/// `auth_type` — derived from the provider schema description.
extension type const BedrockagentDataSourceConfluenceConfigurationAuthType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentDataSourceConfluenceConfigurationAuthType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceConfluenceConfigurationAuthType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentDataSourceConfluenceConfigurationAuthType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const basic = BedrockagentDataSourceConfluenceConfigurationAuthType._(
    TfArgLiteral('BASIC'),
  );
  static const oauth2ClientCredentials =
      BedrockagentDataSourceConfluenceConfigurationAuthType._(
        TfArgLiteral('OAUTH2_CLIENT_CREDENTIALS'),
      );

  static const List<BedrockagentDataSourceConfluenceConfigurationAuthType>
  values = [basic, oauth2ClientCredentials];
}

/// `host_type` — derived from the provider schema description.
extension type const BedrockagentDataSourceConfluenceConfigurationHostType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentDataSourceConfluenceConfigurationHostType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceConfluenceConfigurationHostType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentDataSourceConfluenceConfigurationHostType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const saas = BedrockagentDataSourceConfluenceConfigurationHostType._(
    TfArgLiteral('SAAS'),
  );

  static const List<BedrockagentDataSourceConfluenceConfigurationHostType>
  values = [saas];
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

  @internal
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

  final BedrockagentDataSourceDeletionProtectionStatus deletionProtectionStatus;

  final TfArg<num>? deletionProtectionThreshold;

  @internal
  Map<String, Object?> encode() => {
    'deletion_protection_status': deletionProtectionStatus.toTfJson(),
    'deletion_protection_threshold': ?deletionProtectionThreshold?.toTfJson(),
  };
}

/// `deletion_protection_status` — derived from the provider schema description.
extension type const BedrockagentDataSourceDeletionProtectionStatus._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentDataSourceDeletionProtectionStatus.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceDeletionProtectionStatus.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceDeletionProtectionStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = BedrockagentDataSourceDeletionProtectionStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = BedrockagentDataSourceDeletionProtectionStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<BedrockagentDataSourceDeletionProtectionStatus> values = [
    enabled,
    disabled,
  ];
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

  @internal
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

  final BedrockagentDataSourceAudioExtractionStatus audioExtractionStatus;

  @internal
  Map<String, Object?> encode() => {
    'audio_extraction_status': audioExtractionStatus.toTfJson(),
  };
}

/// `audio_extraction_status` — derived from the provider schema description.
extension type const BedrockagentDataSourceAudioExtractionStatus._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentDataSourceAudioExtractionStatus.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceAudioExtractionStatus.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceAudioExtractionStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = BedrockagentDataSourceAudioExtractionStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = BedrockagentDataSourceAudioExtractionStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<BedrockagentDataSourceAudioExtractionStatus> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.media_extraction_configuration.image_extraction_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceImageExtractionConfiguration {
  const BedrockagentDataSourceImageExtractionConfiguration({
    required this.imageExtractionStatus,
  });

  final BedrockagentDataSourceImageExtractionStatus imageExtractionStatus;

  @internal
  Map<String, Object?> encode() => {
    'image_extraction_status': imageExtractionStatus.toTfJson(),
  };
}

/// `image_extraction_status` — derived from the provider schema description.
extension type const BedrockagentDataSourceImageExtractionStatus._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentDataSourceImageExtractionStatus.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceImageExtractionStatus.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceImageExtractionStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = BedrockagentDataSourceImageExtractionStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = BedrockagentDataSourceImageExtractionStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<BedrockagentDataSourceImageExtractionStatus> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `data_source_configuration.managed_knowledge_base_connector_configuration.media_extraction_configuration.video_extraction_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceVideoExtractionConfiguration {
  const BedrockagentDataSourceVideoExtractionConfiguration({
    required this.videoExtractionStatus,
  });

  final BedrockagentDataSourceVideoExtractionStatus videoExtractionStatus;

  @internal
  Map<String, Object?> encode() => {
    'video_extraction_status': videoExtractionStatus.toTfJson(),
  };
}

/// `video_extraction_status` — derived from the provider schema description.
extension type const BedrockagentDataSourceVideoExtractionStatus._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentDataSourceVideoExtractionStatus.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceVideoExtractionStatus.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceVideoExtractionStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = BedrockagentDataSourceVideoExtractionStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = BedrockagentDataSourceVideoExtractionStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<BedrockagentDataSourceVideoExtractionStatus> values = [
    enabled,
    disabled,
  ];
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

  @internal
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

  @internal
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

  final BedrockagentDataSourceSalesforceConfigurationAuthType authType;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> hostUrl;

  @internal
  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'host_url': hostUrl.toTfJson(),
  };
}

/// `auth_type` — derived from the provider schema description.
extension type const BedrockagentDataSourceSalesforceConfigurationAuthType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentDataSourceSalesforceConfigurationAuthType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceSalesforceConfigurationAuthType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentDataSourceSalesforceConfigurationAuthType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const oauth2ClientCredentials =
      BedrockagentDataSourceSalesforceConfigurationAuthType._(
        TfArgLiteral('OAUTH2_CLIENT_CREDENTIALS'),
      );

  static const List<BedrockagentDataSourceSalesforceConfigurationAuthType>
  values = [oauth2ClientCredentials];
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

  @internal
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

  final BedrockagentDataSourceSharePointConfigurationAuthType authType;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> domain;

  final BedrockagentDataSourceSharePointConfigurationHostType hostType;

  final TfArg<List<String>> siteUrls;

  final TfArg<String>? tenantId;

  @internal
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
extension type const BedrockagentDataSourceSharePointConfigurationAuthType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentDataSourceSharePointConfigurationAuthType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceSharePointConfigurationAuthType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentDataSourceSharePointConfigurationAuthType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const oauth2ClientCredentials =
      BedrockagentDataSourceSharePointConfigurationAuthType._(
        TfArgLiteral('OAUTH2_CLIENT_CREDENTIALS'),
      );
  static const oauth2SharepointAppOnlyClientCredentials =
      BedrockagentDataSourceSharePointConfigurationAuthType._(
        TfArgLiteral('OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS'),
      );

  static const List<BedrockagentDataSourceSharePointConfigurationAuthType>
  values = [oauth2ClientCredentials, oauth2SharepointAppOnlyClientCredentials];
}

/// `host_type` — derived from the provider schema description.
extension type const BedrockagentDataSourceSharePointConfigurationHostType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentDataSourceSharePointConfigurationHostType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceSharePointConfigurationHostType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentDataSourceSharePointConfigurationHostType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const online = BedrockagentDataSourceSharePointConfigurationHostType._(
    TfArgLiteral('ONLINE'),
  );

  static const List<BedrockagentDataSourceSharePointConfigurationHostType>
  values = [online];
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

  @internal
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

  final BedrockagentDataSourceScope? scope;

  final TfArg<String>? userAgent;

  final List<BedrockagentDataSourceCrawlerLimits>? crawlerLimits;

  @internal
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
extension type const BedrockagentDataSourceScope._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentDataSourceScope.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceScope.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceScope.arg(TfArg<String> arg) : this._(arg);

  static const hostOnly = BedrockagentDataSourceScope._(
    TfArgLiteral('HOST_ONLY'),
  );
  static const subdomains = BedrockagentDataSourceScope._(
    TfArgLiteral('SUBDOMAINS'),
  );

  static const List<BedrockagentDataSourceScope> values = [
    hostOnly,
    subdomains,
  ];
}

/// Typed helper for the `data_source_configuration.web_configuration.crawler_configuration.crawler_limits` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceCrawlerLimits {
  const BedrockagentDataSourceCrawlerLimits({this.maxPages, this.rateLimit});

  final TfArg<num>? maxPages;

  final TfArg<num>? rateLimit;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final BedrockagentDataSourceChunkingStrategy chunkingStrategy;

  final BedrockagentDataSourceStrategy? strategy;

  @internal
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
  @internal
  String get blockKey;

  @internal
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

  @internal
  @override
  String get blockKey => 'fixed_size_chunking_configuration';

  @internal
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

  @internal
  @override
  String get blockKey => 'hierarchical_chunking_configuration';

  @internal
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

  @internal
  @override
  String get blockKey => 'semantic_chunking_configuration';

  @internal
  @override
  Map<String, Object?> encode() => {
    'semantic_chunking_configuration': [
      for (final e in semanticChunkingConfiguration) e.encode(),
    ],
  };
}

/// `chunking_strategy` — derived from the provider schema description.
extension type const BedrockagentDataSourceChunkingStrategy._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentDataSourceChunkingStrategy.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceChunkingStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceChunkingStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const fixedSize = BedrockagentDataSourceChunkingStrategy._(
    TfArgLiteral('FIXED_SIZE'),
  );
  static const none = BedrockagentDataSourceChunkingStrategy._(
    TfArgLiteral('NONE'),
  );
  static const hierarchical = BedrockagentDataSourceChunkingStrategy._(
    TfArgLiteral('HIERARCHICAL'),
  );
  static const semantic = BedrockagentDataSourceChunkingStrategy._(
    TfArgLiteral('SEMANTIC'),
  );

  static const List<BedrockagentDataSourceChunkingStrategy> values = [
    fixedSize,
    none,
    hierarchical,
    semantic,
  ];
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final BedrockagentDataSourceStepToApply stepToApply;

  final List<BedrockagentDataSourceTransformationFunction>?
  transformationFunction;

  @internal
  Map<String, Object?> encode() => {
    'step_to_apply': stepToApply.toTfJson(),
    if (transformationFunction != null)
      'transformation_function': [
        for (final e in transformationFunction!) e.encode(),
      ],
  };
}

/// `step_to_apply` — derived from the provider schema description.
extension type const BedrockagentDataSourceStepToApply._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentDataSourceStepToApply.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceStepToApply.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceStepToApply.arg(TfArg<String> arg) : this._(arg);

  static const postChunking = BedrockagentDataSourceStepToApply._(
    TfArgLiteral('POST_CHUNKING'),
  );

  static const List<BedrockagentDataSourceStepToApply> values = [postChunking];
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

  @internal
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

  @internal
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

  final BedrockagentDataSourceParsingStrategy parsingStrategy;

  final List<BedrockagentDataSourceBedrockDataAutomationConfiguration>?
  bedrockDataAutomationConfiguration;

  final List<BedrockagentDataSourceBedrockFoundationModelConfiguration>?
  bedrockFoundationModelConfiguration;

  @internal
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
extension type const BedrockagentDataSourceParsingStrategy._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentDataSourceParsingStrategy.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceParsingStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceParsingStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const bedrockFoundationModel = BedrockagentDataSourceParsingStrategy._(
    TfArgLiteral('BEDROCK_FOUNDATION_MODEL'),
  );
  static const bedrockDataAutomation = BedrockagentDataSourceParsingStrategy._(
    TfArgLiteral('BEDROCK_DATA_AUTOMATION'),
  );
  static const smartParsing = BedrockagentDataSourceParsingStrategy._(
    TfArgLiteral('SMART_PARSING'),
  );
  static const multiModalEmbeddings = BedrockagentDataSourceParsingStrategy._(
    TfArgLiteral('MULTI_MODAL_EMBEDDINGS'),
  );

  static const List<BedrockagentDataSourceParsingStrategy> values = [
    bedrockFoundationModel,
    bedrockDataAutomation,
    smartParsing,
    multiModalEmbeddings,
  ];
}

/// Typed helper for the `vector_ingestion_configuration.parsing_configuration.bedrock_data_automation_configuration` block of
/// `aws_bedrockagent_data_source` (derived from provider schema).
@immutable
final class BedrockagentDataSourceBedrockDataAutomationConfiguration {
  const BedrockagentDataSourceBedrockDataAutomationConfiguration({
    this.parsingModality,
  });

  final BedrockagentDataSourceParsingModality? parsingModality;

  @internal
  Map<String, Object?> encode() => {
    'parsing_modality': ?parsingModality?.toTfJson(),
  };
}

/// `parsing_modality` — derived from the provider schema description.
extension type const BedrockagentDataSourceParsingModality._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentDataSourceParsingModality.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentDataSourceParsingModality.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentDataSourceParsingModality.arg(TfArg<String> arg)
    : this._(arg);

  static const multimodal = BedrockagentDataSourceParsingModality._(
    TfArgLiteral('MULTIMODAL'),
  );

  static const List<BedrockagentDataSourceParsingModality> values = [
    multimodal,
  ];
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

  final BedrockagentDataSourceParsingModality? parsingModality;

  final List<BedrockagentDataSourceParsingPrompt>? parsingPrompt;

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'parsing_prompt_string': parsingPromptString.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagent_data_source`.
final class AwsBedrockagentDataSource extends Resource {
  static const String tfType = 'aws_bedrockagent_data_source';

  AwsBedrockagentDataSource(
    super.localName, {
    BedrockagentDataSourceDataDeletionPolicy? dataDeletionPolicy,
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
