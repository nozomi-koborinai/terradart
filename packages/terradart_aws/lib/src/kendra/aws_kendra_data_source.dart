// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kendra_data_source`.
const Set<String> _awsKendraDataSourceSensitive = <String>{};

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
    if (s3Configuration != null) 's3_configuration': s3Configuration!.encode(),
    if (templateConfiguration != null)
      'template_configuration': templateConfiguration!.encode(),
    if (webCrawlerConfiguration != null)
      'web_crawler_configuration': webCrawlerConfiguration!.encode(),
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

  final TfArg<String> bucketName;

  final TfArg<List<Object?>>? exclusionPatterns;

  final TfArg<List<Object?>>? inclusionPatterns;

  final TfArg<List<Object?>>? inclusionPrefixes;

  final KendraDataSourceConfigurationS3ConfigurationAccessControlListConfiguration?
  accessControlListConfiguration;

  final KendraDataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration?
  documentsMetadataConfiguration;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (exclusionPatterns != null)
      'exclusion_patterns': exclusionPatterns!.toTfJson(),
    if (inclusionPatterns != null)
      'inclusion_patterns': inclusionPatterns!.toTfJson(),
    if (inclusionPrefixes != null)
      'inclusion_prefixes': inclusionPrefixes!.toTfJson(),
    if (accessControlListConfiguration != null)
      'access_control_list_configuration': accessControlListConfiguration!
          .encode(),
    if (documentsMetadataConfiguration != null)
      'documents_metadata_configuration': documentsMetadataConfiguration!
          .encode(),
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

  Map<String, Object?> encode() => {
    if (keyPath != null) 'key_path': keyPath!.toTfJson(),
  };
}

/// Typed helper for the `configuration.s3_configuration.documents_metadata_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration {
  const KendraDataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration({
    this.s3Prefix,
  });

  final TfArg<String>? s3Prefix;

  Map<String, Object?> encode() => {
    if (s3Prefix != null) 's3_prefix': s3Prefix!.toTfJson(),
  };
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

  final TfArg<List<Object?>>? urlExclusionPatterns;

  final TfArg<List<Object?>>? urlInclusionPatterns;

  final KendraDataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration?
  authenticationConfiguration;

  final KendraDataSourceConfigurationWebCrawlerConfigurationProxyConfiguration?
  proxyConfiguration;

  final KendraDataSourceConfigurationWebCrawlerConfigurationUrls urls;

  Map<String, Object?> encode() => {
    if (crawlDepth != null) 'crawl_depth': crawlDepth!.toTfJson(),
    if (maxContentSizePerPageInMegaBytes != null)
      'max_content_size_per_page_in_mega_bytes':
          maxContentSizePerPageInMegaBytes!.toTfJson(),
    if (maxLinksPerPage != null)
      'max_links_per_page': maxLinksPerPage!.toTfJson(),
    if (maxUrlsPerMinuteCrawlRate != null)
      'max_urls_per_minute_crawl_rate': maxUrlsPerMinuteCrawlRate!.toTfJson(),
    if (urlExclusionPatterns != null)
      'url_exclusion_patterns': urlExclusionPatterns!.toTfJson(),
    if (urlInclusionPatterns != null)
      'url_inclusion_patterns': urlInclusionPatterns!.toTfJson(),
    if (authenticationConfiguration != null)
      'authentication_configuration': authenticationConfiguration!.encode(),
    if (proxyConfiguration != null)
      'proxy_configuration': proxyConfiguration!.encode(),
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
    if (credentials != null) 'credentials': credentials!.toTfJson(),
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
    if (seedUrlConfiguration != null)
      'seed_url_configuration': seedUrlConfiguration!.encode(),
    if (siteMapsConfiguration != null)
      'site_maps_configuration': siteMapsConfiguration!.encode(),
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

  final TfArg<List<Object?>> seedUrls;

  final TfArg<String>? webCrawlerMode;

  Map<String, Object?> encode() => {
    'seed_urls': seedUrls.toTfJson(),
    if (webCrawlerMode != null) 'web_crawler_mode': webCrawlerMode!.toTfJson(),
  };
}

/// Typed helper for the `configuration.web_crawler_configuration.urls.site_maps_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration {
  const KendraDataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration({
    required this.siteMaps,
  });

  final TfArg<List<Object?>> siteMaps;

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

  final TfArg<String>? roleArn;

  final List<
    KendraDataSourceCustomDocumentEnrichmentConfigurationInlineConfigurations
  >?
  inlineConfigurations;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfiguration?
  postExtractionHookConfiguration;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration?
  preExtractionHookConfiguration;

  Map<String, Object?> encode() => {
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (inlineConfigurations != null)
      'inline_configurations': [
        for (final e in inlineConfigurations!) e.encode(),
      ],
    if (postExtractionHookConfiguration != null)
      'post_extraction_hook_configuration': postExtractionHookConfiguration!
          .encode(),
    if (preExtractionHookConfiguration != null)
      'pre_extraction_hook_configuration': preExtractionHookConfiguration!
          .encode(),
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
    if (documentContentDeletion != null)
      'document_content_deletion': documentContentDeletion!.toTfJson(),
    if (condition != null) 'condition': condition!.encode(),
    if (target != null) 'target': target!.encode(),
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
    if (conditionOnValue != null)
      'condition_on_value': conditionOnValue!.encode(),
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

  final TfArg<List<Object?>>? stringListValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    if (dateValue != null) 'date_value': dateValue!.toTfJson(),
    if (longValue != null) 'long_value': longValue!.toTfJson(),
    if (stringListValue != null)
      'string_list_value': stringListValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
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
    if (targetDocumentAttributeKey != null)
      'target_document_attribute_key': targetDocumentAttributeKey!.toTfJson(),
    if (targetDocumentAttributeValueDeletion != null)
      'target_document_attribute_value_deletion':
          targetDocumentAttributeValueDeletion!.toTfJson(),
    if (targetDocumentAttributeValue != null)
      'target_document_attribute_value': targetDocumentAttributeValue!.encode(),
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

  final TfArg<List<Object?>>? stringListValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    if (dateValue != null) 'date_value': dateValue!.toTfJson(),
    if (longValue != null) 'long_value': longValue!.toTfJson(),
    if (stringListValue != null)
      'string_list_value': stringListValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
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

  final TfArg<String> lambdaArn;

  final TfArg<String> s3Bucket;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition?
  invocationCondition;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.toTfJson(),
    's3_bucket': s3Bucket.toTfJson(),
    if (invocationCondition != null)
      'invocation_condition': invocationCondition!.encode(),
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
    if (conditionOnValue != null)
      'condition_on_value': conditionOnValue!.encode(),
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

  final TfArg<List<Object?>>? stringListValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    if (dateValue != null) 'date_value': dateValue!.toTfJson(),
    if (longValue != null) 'long_value': longValue!.toTfJson(),
    if (stringListValue != null)
      'string_list_value': stringListValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
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

  final TfArg<String> lambdaArn;

  final TfArg<String> s3Bucket;

  final KendraDataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationCondition?
  invocationCondition;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.toTfJson(),
    's3_bucket': s3Bucket.toTfJson(),
    if (invocationCondition != null)
      'invocation_condition': invocationCondition!.encode(),
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
    if (conditionOnValue != null)
      'condition_on_value': conditionOnValue!.encode(),
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

  final TfArg<List<Object?>>? stringListValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    if (dateValue != null) 'date_value': dateValue!.toTfJson(),
    if (longValue != null) 'long_value': longValue!.toTfJson(),
    if (stringListValue != null)
      'string_list_value': stringListValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
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
    TfArg<String>? roleArn,
    TfArg<String>? schedule,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
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
           if (description != null) 'description': description,
           'index_id': indexId,
           if (languageCode != null) 'language_code': languageCode,
           'name': name,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           if (schedule != null) 'schedule': schedule,
           if (tags != null) 'tags': tags,
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
}
