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
extension type const KendraDataSourceType._(TfArg<String> _)
    implements TfArg<String> {
  KendraDataSourceType.variable(String name) : this._(TfArg.variable(name));
  KendraDataSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const KendraDataSourceType.arg(TfArg<String> arg) : this._(arg);

  static const s3 = KendraDataSourceType._(TfArgLiteral('S3'));
  static const sharepoint = KendraDataSourceType._(TfArgLiteral('SHAREPOINT'));
  static const database = KendraDataSourceType._(TfArgLiteral('DATABASE'));
  static const salesforce = KendraDataSourceType._(TfArgLiteral('SALESFORCE'));
  static const onedrive = KendraDataSourceType._(TfArgLiteral('ONEDRIVE'));
  static const servicenow = KendraDataSourceType._(TfArgLiteral('SERVICENOW'));
  static const custom = KendraDataSourceType._(TfArgLiteral('CUSTOM'));
  static const confluence = KendraDataSourceType._(TfArgLiteral('CONFLUENCE'));
  static const googledrive = KendraDataSourceType._(
    TfArgLiteral('GOOGLEDRIVE'),
  );
  static const webcrawler = KendraDataSourceType._(TfArgLiteral('WEBCRAWLER'));
  static const workdocs = KendraDataSourceType._(TfArgLiteral('WORKDOCS'));
  static const fsx = KendraDataSourceType._(TfArgLiteral('FSX'));
  static const slack = KendraDataSourceType._(TfArgLiteral('SLACK'));
  static const box = KendraDataSourceType._(TfArgLiteral('BOX'));
  static const quip = KendraDataSourceType._(TfArgLiteral('QUIP'));
  static const jira = KendraDataSourceType._(TfArgLiteral('JIRA'));
  static const github = KendraDataSourceType._(TfArgLiteral('GITHUB'));
  static const alfresco = KendraDataSourceType._(TfArgLiteral('ALFRESCO'));
  static const template = KendraDataSourceType._(TfArgLiteral('TEMPLATE'));

  static const List<KendraDataSourceType> values = [
    s3,
    sharepoint,
    database,
    salesforce,
    onedrive,
    servicenow,
    custom,
    confluence,
    googledrive,
    webcrawler,
    workdocs,
    fsx,
    slack,
    box,
    quip,
    jira,
    github,
    alfresco,
    template,
  ];
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

  final KendraDataSourceS3Configuration? s3Configuration;

  final KendraDataSourceTemplateConfiguration? templateConfiguration;

  final KendraDataSourceWebCrawlerConfiguration? webCrawlerConfiguration;

  @internal
  Map<String, Object?> encode() => {
    's3_configuration': ?s3Configuration?.encode(),
    'template_configuration': ?templateConfiguration?.encode(),
    'web_crawler_configuration': ?webCrawlerConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration.s3_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceS3Configuration {
  const KendraDataSourceS3Configuration({
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

  final KendraDataSourceAccessControlListConfiguration?
  accessControlListConfiguration;

  final KendraDataSourceDocumentsMetadataConfiguration?
  documentsMetadataConfiguration;

  @internal
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
final class KendraDataSourceAccessControlListConfiguration {
  const KendraDataSourceAccessControlListConfiguration({this.keyPath});

  final TfArg<String>? keyPath;

  @internal
  Map<String, Object?> encode() => {'key_path': ?keyPath?.toTfJson()};
}

/// Typed helper for the `configuration.s3_configuration.documents_metadata_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceDocumentsMetadataConfiguration {
  const KendraDataSourceDocumentsMetadataConfiguration({this.s3Prefix});

  final TfArg<String>? s3Prefix;

  @internal
  Map<String, Object?> encode() => {'s3_prefix': ?s3Prefix?.toTfJson()};
}

/// Typed helper for the `configuration.template_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceTemplateConfiguration {
  const KendraDataSourceTemplateConfiguration({required this.template});

  final TfArg<String> template;

  @internal
  Map<String, Object?> encode() => {'template': template.toTfJson()};
}

/// Typed helper for the `configuration.web_crawler_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceWebCrawlerConfiguration {
  const KendraDataSourceWebCrawlerConfiguration({
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

  final KendraDataSourceAuthenticationConfiguration?
  authenticationConfiguration;

  final KendraDataSourceProxyConfiguration? proxyConfiguration;

  final KendraDataSourceUrls urls;

  @internal
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
final class KendraDataSourceAuthenticationConfiguration {
  const KendraDataSourceAuthenticationConfiguration({this.basicAuthentication});

  final List<KendraDataSourceBasicAuthentication>? basicAuthentication;

  @internal
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
final class KendraDataSourceBasicAuthentication {
  const KendraDataSourceBasicAuthentication({
    required this.credentials,
    required this.host,
    required this.port,
  });

  final TfArg<String> credentials;

  final TfArg<String> host;

  final TfArg<num> port;

  @internal
  Map<String, Object?> encode() => {
    'credentials': credentials.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `configuration.web_crawler_configuration.proxy_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceProxyConfiguration {
  const KendraDataSourceProxyConfiguration({
    this.credentials,
    required this.host,
    required this.port,
  });

  final TfArg<String>? credentials;

  final TfArg<String> host;

  final TfArg<num> port;

  @internal
  Map<String, Object?> encode() => {
    'credentials': ?credentials?.toTfJson(),
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `configuration.web_crawler_configuration.urls` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceUrls {
  const KendraDataSourceUrls({
    this.seedUrlConfiguration,
    this.siteMapsConfiguration,
  });

  final KendraDataSourceSeedUrlConfiguration? seedUrlConfiguration;

  final KendraDataSourceSiteMapsConfiguration? siteMapsConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'seed_url_configuration': ?seedUrlConfiguration?.encode(),
    'site_maps_configuration': ?siteMapsConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration.web_crawler_configuration.urls.seed_url_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceSeedUrlConfiguration {
  const KendraDataSourceSeedUrlConfiguration({
    required this.seedUrls,
    this.webCrawlerMode,
  });

  final TfArg<List<String>> seedUrls;

  final KendraDataSourceWebCrawlerMode? webCrawlerMode;

  @internal
  Map<String, Object?> encode() => {
    'seed_urls': seedUrls.toTfJson(),
    'web_crawler_mode': ?webCrawlerMode?.toTfJson(),
  };
}

/// `web_crawler_mode` — derived from the provider schema description.
extension type const KendraDataSourceWebCrawlerMode._(TfArg<String> _)
    implements TfArg<String> {
  KendraDataSourceWebCrawlerMode.variable(String name)
    : this._(TfArg.variable(name));
  KendraDataSourceWebCrawlerMode.expression(String template)
    : this._(TfArg.expression(template));
  const KendraDataSourceWebCrawlerMode.arg(TfArg<String> arg) : this._(arg);

  static const hostOnly = KendraDataSourceWebCrawlerMode._(
    TfArgLiteral('HOST_ONLY'),
  );
  static const subdomains = KendraDataSourceWebCrawlerMode._(
    TfArgLiteral('SUBDOMAINS'),
  );
  static const everything = KendraDataSourceWebCrawlerMode._(
    TfArgLiteral('EVERYTHING'),
  );

  static const List<KendraDataSourceWebCrawlerMode> values = [
    hostOnly,
    subdomains,
    everything,
  ];
}

/// Typed helper for the `configuration.web_crawler_configuration.urls.site_maps_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceSiteMapsConfiguration {
  const KendraDataSourceSiteMapsConfiguration({required this.siteMaps});

  final TfArg<List<String>> siteMaps;

  @internal
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

  final List<KendraDataSourceInlineConfigurations>? inlineConfigurations;

  final KendraDataSourcePostExtractionHookConfiguration?
  postExtractionHookConfiguration;

  final KendraDataSourcePreExtractionHookConfiguration?
  preExtractionHookConfiguration;

  @internal
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
final class KendraDataSourceInlineConfigurations {
  const KendraDataSourceInlineConfigurations({
    this.documentContentDeletion,
    this.condition,
    this.target,
  });

  final TfArg<bool>? documentContentDeletion;

  final KendraDataSourceCondition? condition;

  final KendraDataSourceTarget? target;

  @internal
  Map<String, Object?> encode() => {
    'document_content_deletion': ?documentContentDeletion?.toTfJson(),
    'condition': ?condition?.encode(),
    'target': ?target?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.inline_configurations.condition` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourceCondition {
  const KendraDataSourceCondition({
    required this.conditionDocumentAttributeKey,
    required this.operator,
    this.conditionOnValue,
  });

  final TfArg<String> conditionDocumentAttributeKey;

  final TfArg<String> operator;

  final KendraDataSourceConditionOnValue? conditionOnValue;

  @internal
  Map<String, Object?> encode() => {
    'condition_document_attribute_key': conditionDocumentAttributeKey
        .toTfJson(),
    'operator': operator.toTfJson(),
    'condition_on_value': ?conditionOnValue?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.inline_configurations.condition.condition_on_value` block of
/// `aws_kendra_data_source` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KendraDataSourceConditionOnValue {
  const KendraDataSourceConditionOnValue({
    this.dateValue,
    this.longValue,
    this.stringListValue,
    this.stringValue,
  });

  final TfArg<String>? dateValue;

  final TfArg<num>? longValue;

  final TfArg<List<String>>? stringListValue;

  final TfArg<String>? stringValue;

  @internal
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
final class KendraDataSourceTarget {
  const KendraDataSourceTarget({
    this.targetDocumentAttributeKey,
    this.targetDocumentAttributeValueDeletion,
    this.targetDocumentAttributeValue,
  });

  final TfArg<String>? targetDocumentAttributeKey;

  final TfArg<bool>? targetDocumentAttributeValueDeletion;

  final KendraDataSourceTargetDocumentAttributeValue?
  targetDocumentAttributeValue;

  @internal
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
final class KendraDataSourceTargetDocumentAttributeValue {
  const KendraDataSourceTargetDocumentAttributeValue({
    this.dateValue,
    this.longValue,
    this.stringListValue,
    this.stringValue,
  });

  final TfArg<String>? dateValue;

  final TfArg<num>? longValue;

  final TfArg<List<String>>? stringListValue;

  final TfArg<String>? stringValue;

  @internal
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
final class KendraDataSourcePostExtractionHookConfiguration {
  const KendraDataSourcePostExtractionHookConfiguration({
    required this.lambdaArn,
    required this.s3Bucket,
    this.invocationCondition,
  });

  final RefTo<AwsLambdaFunction> lambdaArn;

  final RefTo<AwsS3Bucket> s3Bucket;

  final KendraDataSourceInvocationCondition? invocationCondition;

  @internal
  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
    'invocation_condition': ?invocationCondition?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition` block of
/// `aws_kendra_data_source` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KendraDataSourceInvocationCondition {
  const KendraDataSourceInvocationCondition({
    required this.conditionDocumentAttributeKey,
    required this.operator,
    this.conditionOnValue,
  });

  final TfArg<String> conditionDocumentAttributeKey;

  final TfArg<String> operator;

  final KendraDataSourceConditionOnValue? conditionOnValue;

  @internal
  Map<String, Object?> encode() => {
    'condition_document_attribute_key': conditionDocumentAttributeKey
        .toTfJson(),
    'operator': operator.toTfJson(),
    'condition_on_value': ?conditionOnValue?.encode(),
  };
}

/// Typed helper for the `custom_document_enrichment_configuration.pre_extraction_hook_configuration` block of
/// `aws_kendra_data_source` (derived from provider schema).
@immutable
final class KendraDataSourcePreExtractionHookConfiguration {
  const KendraDataSourcePreExtractionHookConfiguration({
    required this.lambdaArn,
    required this.s3Bucket,
    this.invocationCondition,
  });

  final RefTo<AwsLambdaFunction> lambdaArn;

  final RefTo<AwsS3Bucket> s3Bucket;

  final KendraDataSourceInvocationCondition? invocationCondition;

  @internal
  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
    'invocation_condition': ?invocationCondition?.encode(),
  };
}

/// Factory wrapper for `aws_kendra_data_source`.
final class AwsKendraDataSource extends Resource {
  static const String tfType = 'aws_kendra_data_source';

  AwsKendraDataSource(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> indexId,
    TfArg<String>? languageCode,
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    TfArg<String>? schedule,
    TfArg<Map<String, String>>? tags,
    required KendraDataSourceType type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `index_id` attribute.
  TfRef<String> get indexId => TfRef.attribute<String>(this, 'index_id');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCode =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
