// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticsearch_domain`.
const Set<String> _awsElasticsearchDomainSensitive = <String>{};

/// Factory wrapper for `aws_elasticsearch_domain`.
final class DataAwsElasticsearchDomain extends Data {
  static const String tfType = 'aws_elasticsearch_domain';

  DataAwsElasticsearchDomain({
    required super.localName,
    required TfArg<String> domainName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticsearchDomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policies` attribute.
  TfRef<String> get accessPolicies =>
      TfRef.attribute<String>(this, 'access_policies');

  /// Reference to `advanced_options` attribute.
  TfRef<Map<String, String>> get advancedOptions =>
      TfRef.attribute<Map<String, String>>(this, 'advanced_options');

  /// Reference to `advanced_security_options` attribute.
  TfRef<List<Map<String, Object?>>> get advancedSecurityOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'advanced_security_options',
      );

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_tune_options` attribute.
  TfRef<List<Map<String, Object?>>> get autoTuneOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'auto_tune_options');

  /// Reference to `cluster_config` attribute.
  TfRef<List<Map<String, Object?>>> get clusterConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_config');

  /// Reference to `cognito_options` attribute.
  TfRef<List<Map<String, Object?>>> get cognitoOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cognito_options');

  /// Reference to `created` attribute.
  TfRef<bool> get created => TfRef.attribute<bool>(this, 'created');

  /// Reference to `deleted` attribute.
  TfRef<bool> get deleted => TfRef.attribute<bool>(this, 'deleted');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `ebs_options` attribute.
  TfRef<List<Map<String, Object?>>> get ebsOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ebs_options');

  /// Reference to `elasticsearch_version` attribute.
  TfRef<String> get elasticsearchVersion =>
      TfRef.attribute<String>(this, 'elasticsearch_version');

  /// Reference to `encryption_at_rest` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionAtRest =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_at_rest');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `kibana_endpoint` attribute.
  TfRef<String> get kibanaEndpoint =>
      TfRef.attribute<String>(this, 'kibana_endpoint');

  /// Reference to `log_publishing_options` attribute.
  TfRef<List<Map<String, Object?>>> get logPublishingOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'log_publishing_options',
      );

  /// Reference to `node_to_node_encryption` attribute.
  TfRef<List<Map<String, Object?>>> get nodeToNodeEncryption =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'node_to_node_encryption',
      );

  /// Reference to `processing` attribute.
  TfRef<bool> get processing => TfRef.attribute<bool>(this, 'processing');

  /// Reference to `snapshot_options` attribute.
  TfRef<List<Map<String, Object?>>> get snapshotOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'snapshot_options');

  /// Reference to `vpc_options` attribute.
  TfRef<List<Map<String, Object?>>> get vpcOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_options');
}
