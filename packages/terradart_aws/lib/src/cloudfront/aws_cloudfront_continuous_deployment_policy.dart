// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_continuous_deployment_policy`.
const Set<String> _awsCloudfrontContinuousDeploymentPolicySensitive =
    <String>{};

/// Typed helper for the `staging_distribution_dns_names` block of
/// `aws_cloudfront_continuous_deployment_policy` (derived from provider schema).
@immutable
final class CloudfrontContinuousDeploymentPolicyStagingDistributionDnsNames {
  const CloudfrontContinuousDeploymentPolicyStagingDistributionDnsNames({
    this.items,
    required this.quantity,
  });

  final TfArg<List<String>>? items;

  final TfArg<num> quantity;

  Map<String, Object?> encode() => {
    'items': ?items?.toTfJson(),
    'quantity': quantity.toTfJson(),
  };
}

/// Typed helper for the `traffic_config` block of
/// `aws_cloudfront_continuous_deployment_policy` (derived from provider schema).
@immutable
final class CloudfrontContinuousDeploymentPolicyTrafficConfig {
  const CloudfrontContinuousDeploymentPolicyTrafficConfig({
    required this.type,
    this.singleHeaderConfig,
    this.singleWeightConfig,
  });

  final TfArg<CloudfrontContinuousDeploymentPolicyType> type;

  final List<CloudfrontContinuousDeploymentPolicySingleHeaderConfig>?
  singleHeaderConfig;

  final List<CloudfrontContinuousDeploymentPolicySingleWeightConfig>?
  singleWeightConfig;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (singleHeaderConfig != null)
      'single_header_config': [for (final e in singleHeaderConfig!) e.encode()],
    if (singleWeightConfig != null)
      'single_weight_config': [for (final e in singleWeightConfig!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
enum CloudfrontContinuousDeploymentPolicyType implements TerraformEnum {
  singleweight('SingleWeight'),
  singleheader('SingleHeader');

  const CloudfrontContinuousDeploymentPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `traffic_config.single_header_config` block of
/// `aws_cloudfront_continuous_deployment_policy` (derived from provider schema).
@immutable
final class CloudfrontContinuousDeploymentPolicySingleHeaderConfig {
  const CloudfrontContinuousDeploymentPolicySingleHeaderConfig({
    required this.header,
    required this.value,
  });

  final TfArg<String> header;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'header': header.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `traffic_config.single_weight_config` block of
/// `aws_cloudfront_continuous_deployment_policy` (derived from provider schema).
@immutable
final class CloudfrontContinuousDeploymentPolicySingleWeightConfig {
  const CloudfrontContinuousDeploymentPolicySingleWeightConfig({
    required this.weight,
    this.sessionStickinessConfig,
  });

  final TfArg<num> weight;

  final List<CloudfrontContinuousDeploymentPolicySessionStickinessConfig>?
  sessionStickinessConfig;

  Map<String, Object?> encode() => {
    'weight': weight.toTfJson(),
    if (sessionStickinessConfig != null)
      'session_stickiness_config': [
        for (final e in sessionStickinessConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `traffic_config.single_weight_config.session_stickiness_config` block of
/// `aws_cloudfront_continuous_deployment_policy` (derived from provider schema).
@immutable
final class CloudfrontContinuousDeploymentPolicySessionStickinessConfig {
  const CloudfrontContinuousDeploymentPolicySessionStickinessConfig({
    required this.idleTtl,
    required this.maximumTtl,
  });

  final TfArg<num> idleTtl;

  final TfArg<num> maximumTtl;

  Map<String, Object?> encode() => {
    'idle_ttl': idleTtl.toTfJson(),
    'maximum_ttl': maximumTtl.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_continuous_deployment_policy`.
final class AwsCloudfrontContinuousDeploymentPolicy extends Resource {
  static const String tfType = 'aws_cloudfront_continuous_deployment_policy';

  AwsCloudfrontContinuousDeploymentPolicy({
    required super.localName,
    required TfArg<bool> enabled,
    List<CloudfrontContinuousDeploymentPolicyStagingDistributionDnsNames>?
    stagingDistributionDnsNames,
    List<CloudfrontContinuousDeploymentPolicyTrafficConfig>? trafficConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': enabled,
           if (stagingDistributionDnsNames != null)
             'staging_distribution_dns_names': TfArg.literal([
               for (final e in stagingDistributionDnsNames) e.encode(),
             ]),
           if (trafficConfig != null)
             'traffic_config': TfArg.literal([
               for (final e in trafficConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontContinuousDeploymentPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontContinuousDeploymentPolicy>`.
  RefTo<AwsCloudfrontContinuousDeploymentPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
