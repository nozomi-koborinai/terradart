// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_domain`.
const Set<String> _awsOpensearchDomainSensitive = <String>{};

/// Factory wrapper for `aws_opensearch_domain`.
final class DataAwsOpensearchDomain extends Data {
  static const String tfType = 'aws_opensearch_domain';

  DataAwsOpensearchDomain({
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
  Set<String> get sensitiveFields => _awsOpensearchDomainSensitive;

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

  /// Reference to `dashboard_endpoint` attribute.
  TfRef<String> get dashboardEndpoint =>
      TfRef.attribute<String>(this, 'dashboard_endpoint');

  /// Reference to `dashboard_endpoint_v2` attribute.
  TfRef<String> get dashboardEndpointV2 =>
      TfRef.attribute<String>(this, 'dashboard_endpoint_v2');

  /// Reference to `deleted` attribute.
  TfRef<bool> get deleted => TfRef.attribute<bool>(this, 'deleted');

  /// Reference to `deployment_strategy_options` attribute.
  TfRef<List<Map<String, Object?>>> get deploymentStrategyOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'deployment_strategy_options',
      );

  /// Reference to `domain_endpoint_v2_hosted_zone_id` attribute.
  TfRef<String> get domainEndpointV2HostedZoneId =>
      TfRef.attribute<String>(this, 'domain_endpoint_v2_hosted_zone_id');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `ebs_options` attribute.
  TfRef<List<Map<String, Object?>>> get ebsOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ebs_options');

  /// Reference to `encryption_at_rest` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionAtRest =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_at_rest');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `endpoint_v2` attribute.
  TfRef<String> get endpointV2 => TfRef.attribute<String>(this, 'endpoint_v2');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `identity_center_options` attribute.
  TfRef<List<Map<String, Object?>>> get identityCenterOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'identity_center_options',
      );

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

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

  /// Reference to `off_peak_window_options` attribute.
  TfRef<List<Map<String, Object?>>> get offPeakWindowOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'off_peak_window_options',
      );

  /// Reference to `processing` attribute.
  TfRef<bool> get processing => TfRef.attribute<bool>(this, 'processing');

  /// Reference to `snapshot_options` attribute.
  TfRef<List<Map<String, Object?>>> get snapshotOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'snapshot_options');

  /// Reference to `software_update_options` attribute.
  TfRef<List<Map<String, Object?>>> get softwareUpdateOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'software_update_options',
      );

  /// Reference to `vpc_options` attribute.
  TfRef<List<Map<String, Object?>>> get vpcOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpc_options');
}
