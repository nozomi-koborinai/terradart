// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_kendra_data_source`.
const Set<String> _awsKendraDataSourceSensitive = <String>{};

/// Kendra Data Source enum for `type`.
enum KendraDataSourceType implements TerraformEnum {
  s3('S3'),
  sharepoint('SHAREPOINT'),
  database('DATABASE'),
  salesforce('SALESFORCE'),
  onedrive('ONEDRIVE'),
  servicenow('SERVICENOW'),
  custom('CUSTOM'),
  confluence('CONFLUENCE'),
  googledrive('GOOGLEDRIVE'),
  webcrawler('WEBCRAWLER'),
  workdocs('WORKDOCS'),
  fsx('FSX'),
  slack('SLACK'),
  box('BOX'),
  quip('QUIP'),
  jira('JIRA'),
  github('GITHUB'),
  alfresco('ALFRESCO'),
  template('TEMPLATE');

  const KendraDataSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfiguration {
  const KendraDataSourceConfiguration({
    this.s3Configuration,
    this.templateConfiguration,
    this.webCrawlerConfiguration,
  });

  final KendraDataSourceConfigurationS3Configuration? s3Configuration;

  final KendraDataSourceConfigurationTemplateConfiguration?
  templateConfiguration;

  final KendraDataSourceConfigurationWebCrawlerConfiguration?
  webCrawlerConfiguration;

  Map<String, Object?> encode() => {
    's3_configuration': ?s3Configuration?.encode(),
    'template_configuration': ?templateConfiguration?.encode(),
    'web_crawler_configuration': ?webCrawlerConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration.s3_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationS3Configuration {
  const KendraDataSourceConfigurationS3Configuration({
    required this.bucketName,
    this.exclusionPatterns,
    this.inclusionPatterns,
    this.inclusionPrefixes,
    this.accessControlListConfiguration,
    this.documentsMetadataConfiguration,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<List<String>>? exclusionPatterns;

  final TfArg<List<String>>? inclusionPatterns;

  final TfArg<List<String>>? inclusionPrefixes;

  final KendraDataSourceConfigurationS3ConfigurationAccessControlListConfiguration?
  accessControlListConfiguration;

  final KendraDataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration?
  documentsMetadataConfiguration;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'exclusion_patterns': ?exclusionPatterns?.toTfJson(),
    'inclusion_patterns': ?inclusionPatterns?.toTfJson(),
    'inclusion_prefixes': ?inclusionPrefixes?.toTfJson(),
    'access_control_list_configuration': ?accessControlListConfiguration
        ?.encode(),
    'documents_metadata_configuration': ?documentsMetadataConfiguration
        ?.encode(),
  };
}

/// Typed helper for the `configuration.s3_configuration.access_control_list_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationS3ConfigurationAccessControlListConfiguration {
  const KendraDataSourceConfigurationS3ConfigurationAccessControlListConfiguration({
    this.keyPath,
  });

  final TfArg<String>? keyPath;

  Map<String, Object?> encode() => {'key_path': ?keyPath?.toTfJson()};
}

/// Typed helper for the `configuration.s3_configuration.documents_metadata_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration {
  const KendraDataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration({
    this.s3Prefix,
  });

  final TfArg<String>? s3Prefix;

  Map<String, Object?> encode() => {'s3_prefix': ?s3Prefix?.toTfJson()};
}

/// Typed helper for the `configuration.template_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationTemplateConfiguration {
  const KendraDataSourceConfigurationTemplateConfiguration({
    required this.template,
  });

  final TfArg<String> template;

  Map<String, Object?> encode() => {'template': template.toTfJson()};
}

/// Typed helper for the `configuration.web_crawler_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationWebCrawlerConfiguration {
  const KendraDataSourceConfigurationWebCrawlerConfiguration({
    this.crawlDepth,
    this.maxContentSizePerPageInMegaBytes,
    this.maxLinksPerPage,
    this.maxUrlsPerMinuteCrawlRate,
    this.urlExclusionPatterns,
    this.urlInclusionPatterns,
    this.authenticationConfiguration,
    this.proxyConfiguration,
    required this.urls,
  });

  final TfArg<num>? crawlDepth;

  final TfArg<num>? maxContentSizePerPageInMegaBytes;

  final TfArg<num>? maxLinksPerPage;

  final TfArg<num>? maxUrlsPerMinuteCrawlRate;

  final TfArg<List<String>>? urlExclusionPatterns;

  final TfArg<List<String>>? urlInclusionPatterns;

  final KendraDataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration?
  authenticationConfiguration;

  final KendraDataSourceConfigurationWebCrawlerConfigurationProxyConfiguration?
  proxyConfiguration;

  final KendraDataSourceConfigurationWebCrawlerConfigurationUrls urls;

  Map<String, Object?> encode() => {
    'crawl_depth': ?crawlDepth?.toTfJson(),
    'max_content_size_per_page_in_mega_bytes': ?maxContentSizePerPageInMegaBytes
        ?.toTfJson(),
    'max_links_per_page': ?maxLinksPerPage?.toTfJson(),
    'max_urls_per_minute_crawl_rate': ?maxUrlsPerMinuteCrawlRate?.toTfJson(),
    'url_exclusion_patterns': ?urlExclusionPatterns?.toTfJson(),
    'url_inclusion_patterns': ?urlInclusionPatterns?.toTfJson(),
    'authentication_configuration': ?authenticationConfiguration?.encode(),
    'proxy_configuration': ?proxyConfiguration?.encode(),
    'urls': urls.encode(),
  };
}

/// Typed helper for the `configuration.web_crawler_configuration.authentication_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration {
  const KendraDataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration({
    this.basicAuthentication,
  });

  final List<
    KendraDataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication
  >?
  basicAuthentication;

  Map<String, Object?> encode() => {
    if (basicAuthentication != null)
      'basic_authentication': [
        for (final e in basicAuthentication!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.web_crawler_configuration.authentication_configuration.basic_authentication` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication {
  const KendraDataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication({
    required this.credentials,
    required this.host,
    required this.port,
  });

  final TfArg<String> credentials;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'credentials': credentials.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `configuration.web_crawler_configuration.proxy_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationWebCrawlerConfigurationProxyConfiguration {
  const KendraDataSourceConfigurationWebCrawlerConfigurationProxyConfiguration({
    this.credentials,
    required this.host,
    required this.port,
  });

  final TfArg<String>? credentials;

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'credentials': ?credentials?.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `configuration.web_crawler_configuration.urls` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationWebCrawlerConfigurationUrls {
  const KendraDataSourceConfigurationWebCrawlerConfigurationUrls({
    this.seedUrlConfiguration,
    this.siteMapsConfiguration,
  });

  final KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration?
  seedUrlConfiguration;

  final KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration?
  siteMapsConfiguration;

  Map<String, Object?> encode() => {
    'seed_url_configuration': ?seedUrlConfiguration?.encode(),
    'site_maps_configuration': ?siteMapsConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration.web_crawler_configuration.urls.seed_url_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration {
  const KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration({
    required this.seedUrls,
    this.webCrawlerMode,
  });

  final TfArg<List<String>> seedUrls;

  final TfArg<
    KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationWebCrawlerMode
  >?
  webCrawlerMode;

  Map<String, Object?> encode() => {
    'seed_urls': seedUrls.toTfJson(),
    'web_crawler_mode': ?webCrawlerMode?.toTfJson(),
  };
}

/// `web_crawler_mode` — derived from the provider schema description.
enum KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationWebCrawlerMode
    implements TerraformEnum {
  hostOnly('HOST_ONLY'),
  subdomains('SUBDOMAINS'),
  everything('EVERYTHING');

  const KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationWebCrawlerMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration.web_crawler_configuration.urls.site_maps_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration {
  const KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration({
    required this.siteMaps,
  });

  final TfArg<List<String>> siteMaps;

  Map<String, Object?> encode() => {'site_maps': siteMaps.toTfJson()};
}

/// Typed helper for the `custom_document_enrichment_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfiguration {
  const KendraDataSourceCustomDocumentEnrichmentConfiguration({
    this.roleArn,
    this.inlineConfigurations,
    this.postExtractionHookConfiguration,
    this.preExtractionHookConfiguration,
  });

  final RefTo<AwsIamRole>? roleArn;

  final List<
    KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurations
  >?
  inlineConfigurations;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfiguration?
  postExtractionHookConfiguration;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration?
  preExtractionHookConfiguration;

  Map<String, Object?> encode() => {
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    if (inlineConfigurations != null)
      'inline_configurations': [
        for (final e in inlineConfigurations!) e.encode(),
      ],
    'post_extraction_hook_configuration': ?postExtractionHookConfiguration
        ?.encode(),
    'pre_extraction_hook_configuration': ?preExtractionHookConfiguration
        ?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.inline_configurations` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurations {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurations({
    this.documentContentDeletion,
    this.condition,
    this.target,
  });

  final TfArg<bool>? documentContentDeletion;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsCondition?
  condition;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsTarget?
  target;

  Map<String, Object?> encode() => {
    'document_content_deletion': ?documentContentDeletion?.toTfJson(),
    'condition': ?condition?.encode(),
    'target': ?target?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.inline_configurations.condition` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsCondition {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsCondition({
    required this.conditionDocumentAttributeKey,
    required this.operator,
    this.conditionOnValue,
  });

  final TfArg<String> conditionDocumentAttributeKey;

  final TfArg<String> operator;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsConditionConditionOnValue?
  conditionOnValue;

  Map<String, Object?> encode() => {
    'condition_document_attribute_key': conditionDocumentAttributeKey
        .toTfJson(),
    'operator': operator.toTfJson(),
    'condition_on_value': ?conditionOnValue?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.inline_configurations.condition.condition_on_value` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsConditionConditionOnValue {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsConditionConditionOnValue({
    this.dateValue,
    this.longValue,
    this.stringListValue,
    this.stringValue,
  });

  final TfArg<String>? dateValue;

  final TfArg<num>? longValue;

  final TfArg<List<String>>? stringListValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    'date_value': ?dateValue?.toTfJson(),
    'long_value': ?longValue?.toTfJson(),
    'string_list_value': ?stringListValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.inline_configurations.target` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsTarget {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsTarget({
    this.targetDocumentAttributeKey,
    this.targetDocumentAttributeValueDeletion,
    this.targetDocumentAttributeValue,
  });

  final TfArg<String>? targetDocumentAttributeKey;

  final TfArg<bool>? targetDocumentAttributeValueDeletion;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsTargetTargetDocumentAttributeValue?
  targetDocumentAttributeValue;

  Map<String, Object?> encode() => {
    'target_document_attribute_key': ?targetDocumentAttributeKey?.toTfJson(),
    'target_document_attribute_value_deletion':
        ?targetDocumentAttributeValueDeletion?.toTfJson(),
    'target_document_attribute_value': ?targetDocumentAttributeValue?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.inline_configurations.target.target_document_attribute_value` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsTargetTargetDocumentAttributeValue {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationsTargetTargetDocumentAttributeValue({
    this.dateValue,
    this.longValue,
    this.stringListValue,
    this.stringValue,
  });

  final TfArg<String>? dateValue;

  final TfArg<num>? longValue;

  final TfArg<List<String>>? stringListValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    'date_value': ?dateValue?.toTfJson(),
    'long_value': ?longValue?.toTfJson(),
    'string_list_value': ?stringListValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.post_extraction_hook_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfiguration {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfiguration({
    required this.lambdaArn,
    required this.s3Bucket,
    this.invocationCondition,
  });

  final RefTo<AwsLambdaFunction> lambdaArn;

  final RefTo<AwsS3Bucket> s3Bucket;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition?
  invocationCondition;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
    'invocation_condition': ?invocationCondition?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition({
    required this.conditionDocumentAttributeKey,
    required this.operator,
    this.conditionOnValue,
  });

  final TfArg<String> conditionDocumentAttributeKey;

  final TfArg<String> operator;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue?
  conditionOnValue;

  Map<String, Object?> encode() => {
    'condition_document_attribute_key': conditionDocumentAttributeKey
        .toTfJson(),
    'operator': operator.toTfJson(),
    'condition_on_value': ?conditionOnValue?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.condition_on_value` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue({
    this.dateValue,
    this.longValue,
    this.stringListValue,
    this.stringValue,
  });

  final TfArg<String>? dateValue;

  final TfArg<num>? longValue;

  final TfArg<List<String>>? stringListValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    'date_value': ?dateValue?.toTfJson(),
    'long_value': ?longValue?.toTfJson(),
    'string_list_value': ?stringListValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.pre_extraction_hook_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration({
    required this.lambdaArn,
    required this.s3Bucket,
    this.invocationCondition,
  });

  final RefTo<AwsLambdaFunction> lambdaArn;

  final RefTo<AwsS3Bucket> s3Bucket;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationCondition?
  invocationCondition;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
    'invocation_condition': ?invocationCondition?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationCondition {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationCondition({
    required this.conditionDocumentAttributeKey,
    required this.operator,
    this.conditionOnValue,
  });

  final TfArg<String> conditionDocumentAttributeKey;

  final TfArg<String> operator;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationConditionConditionOnValue?
  conditionOnValue;

  Map<String, Object?> encode() => {
    'condition_document_attribute_key': conditionDocumentAttributeKey
        .toTfJson(),
    'operator': operator.toTfJson(),
    'condition_on_value': ?conditionOnValue?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.condition_on_value` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationConditionConditionOnValue {
  const KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationConditionConditionOnValue({
    this.dateValue,
    this.longValue,
    this.stringListValue,
    this.stringValue,
  });

  final TfArg<String>? dateValue;

  final TfArg<num>? longValue;

  final TfArg<List<String>>? stringListValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    'date_value': ?dateValue?.toTfJson(),
    'long_value': ?longValue?.toTfJson(),
    'string_list_value': ?stringListValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
  };
}

/// Factory wrapper for `aws_kendra_data_source`.
final class AwsKendraDataSource extends Resource {
  static const String tfType = 'aws_kendra_data_source';

  AwsKendraDataSource({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> indexId,
    TfArg<String>? languageCode,
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    TfArg<String>? schedule,
    TfArg<Map<String, String>>? tags,
    required TfArg<KendraDataSourceType> type,
    KendraDataSourceConfiguration? configuration,
    KendraDataSourceCustomDocumentEnrichmentConfiguration?
    customDocumentEnrichmentConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'index_id': indexId,
           'language_code': ?languageCode,
           'name': name,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'schedule': ?schedule,
           'tags': ?tags,
           'type': type,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
           if (customDocumentEnrichmentConfiguration != null)
             'custom_document_enrichment_configuration': TfArg.literal(
               customDocumentEnrichmentConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKendraDataSourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKendraDataSource>`.
  RefTo<AwsKendraDataSource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceId =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `index_id` attribute.
  TfRef<String> get indexIdRef => TfRef.attribute<String>(this, 'index_id');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCodeRef =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `schedule` attribute.
  TfRef<String> get scheduleRef => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
