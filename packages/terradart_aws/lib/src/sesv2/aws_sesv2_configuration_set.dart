// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_configuration_set`.
const Set<String> _awsSesv2ConfigurationSetSensitive = <String>{};

/// Typed helper for the `delivery_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetDeliveryOptions {
  const Sesv2ConfigurationSetDeliveryOptions({
    this.maxDeliverySeconds,
    this.sendingPoolName,
    this.tlsPolicy,
  });

  final TfArg<num>? maxDeliverySeconds;

  final TfArg<String>? sendingPoolName;

  final TfArg<Sesv2ConfigurationSetDeliveryOptionsTlsPolicy>? tlsPolicy;

  Map<String, Object?> encode() => {
    'max_delivery_seconds': ?maxDeliverySeconds?.toTfJson(),
    'sending_pool_name': ?sendingPoolName?.toTfJson(),
    'tls_policy': ?tlsPolicy?.toTfJson(),
  };
}

/// `tls_policy` — derived from the provider schema description.
enum Sesv2ConfigurationSetDeliveryOptionsTlsPolicy implements TerraformEnum {
  require('REQUIRE'),
  optional('OPTIONAL');

  const Sesv2ConfigurationSetDeliveryOptionsTlsPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `reputation_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetReputationOptions {
  const Sesv2ConfigurationSetReputationOptions({this.reputationMetricsEnabled});

  final TfArg<bool>? reputationMetricsEnabled;

  Map<String, Object?> encode() => {
    'reputation_metrics_enabled': ?reputationMetricsEnabled?.toTfJson(),
  };
}

/// Typed helper for the `sending_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetSendingOptions {
  const Sesv2ConfigurationSetSendingOptions({this.sendingEnabled});

  final TfArg<bool>? sendingEnabled;

  Map<String, Object?> encode() => {
    'sending_enabled': ?sendingEnabled?.toTfJson(),
  };
}

/// Typed helper for the `suppression_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetSuppressionOptions {
  const Sesv2ConfigurationSetSuppressionOptions({this.suppressedReasons});

  final List<TfArg<Sesv2ConfigurationSetSuppressionOptionsSuppressedReasons>>?
  suppressedReasons;

  Map<String, Object?> encode() => {
    if (suppressedReasons != null)
      'suppressed_reasons': [for (final e in suppressedReasons!) e.toTfJson()],
  };
}

/// `suppressed_reasons` — derived from the provider schema description.
enum Sesv2ConfigurationSetSuppressionOptionsSuppressedReasons
    implements TerraformEnum {
  bounce('BOUNCE'),
  complaint('COMPLAINT');

  const Sesv2ConfigurationSetSuppressionOptionsSuppressedReasons(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `tracking_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetTrackingOptions {
  const Sesv2ConfigurationSetTrackingOptions({
    required this.customRedirectDomain,
    this.httpsPolicy,
  });

  final TfArg<String> customRedirectDomain;

  final TfArg<Sesv2ConfigurationSetTrackingOptionsHttpsPolicy>? httpsPolicy;

  Map<String, Object?> encode() => {
    'custom_redirect_domain': customRedirectDomain.toTfJson(),
    'https_policy': ?httpsPolicy?.toTfJson(),
  };
}

/// `https_policy` — derived from the provider schema description.
enum Sesv2ConfigurationSetTrackingOptionsHttpsPolicy implements TerraformEnum {
  require('REQUIRE'),
  requireOpenOnly('REQUIRE_OPEN_ONLY'),
  optional('OPTIONAL');

  const Sesv2ConfigurationSetTrackingOptionsHttpsPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vdm_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetVdmOptions {
  const Sesv2ConfigurationSetVdmOptions({
    this.dashboardOptions,
    this.guardianOptions,
  });

  final Sesv2ConfigurationSetVdmOptionsDashboardOptions? dashboardOptions;

  final Sesv2ConfigurationSetVdmOptionsGuardianOptions? guardianOptions;

  Map<String, Object?> encode() => {
    'dashboard_options': ?dashboardOptions?.encode(),
    'guardian_options': ?guardianOptions?.encode(),
  };
}

/// Typed helper for the `vdm_options.dashboard_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetVdmOptionsDashboardOptions {
  const Sesv2ConfigurationSetVdmOptionsDashboardOptions({
    this.engagementMetrics,
  });

  final TfArg<Sesv2ConfigurationSetVdmOptionsDashboardOptionsEngagementMetrics>?
  engagementMetrics;

  Map<String, Object?> encode() => {
    'engagement_metrics': ?engagementMetrics?.toTfJson(),
  };
}

/// `engagement_metrics` — derived from the provider schema description.
enum Sesv2ConfigurationSetVdmOptionsDashboardOptionsEngagementMetrics
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const Sesv2ConfigurationSetVdmOptionsDashboardOptionsEngagementMetrics(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `vdm_options.guardian_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetVdmOptionsGuardianOptions {
  const Sesv2ConfigurationSetVdmOptionsGuardianOptions({
    this.optimizedSharedDelivery,
  });

  final TfArg<
    Sesv2ConfigurationSetVdmOptionsGuardianOptionsOptimizedSharedDelivery
  >?
  optimizedSharedDelivery;

  Map<String, Object?> encode() => {
    'optimized_shared_delivery': ?optimizedSharedDelivery?.toTfJson(),
  };
}

/// `optimized_shared_delivery` — derived from the provider schema description.
enum Sesv2ConfigurationSetVdmOptionsGuardianOptionsOptimizedSharedDelivery
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const Sesv2ConfigurationSetVdmOptionsGuardianOptionsOptimizedSharedDelivery(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sesv2_configuration_set`.
final class AwsSesv2ConfigurationSet extends Resource {
  static const String tfType = 'aws_sesv2_configuration_set';

  AwsSesv2ConfigurationSet({
    required super.localName,
    required TfArg<String> configurationSetName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    Sesv2ConfigurationSetDeliveryOptions? deliveryOptions,
    Sesv2ConfigurationSetReputationOptions? reputationOptions,
    Sesv2ConfigurationSetSendingOptions? sendingOptions,
    Sesv2ConfigurationSetSuppressionOptions? suppressionOptions,
    Sesv2ConfigurationSetTrackingOptions? trackingOptions,
    Sesv2ConfigurationSetVdmOptions? vdmOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_set_name': configurationSetName,
           'region': ?region,
           'tags': ?tags,
           if (deliveryOptions != null)
             'delivery_options': TfArg.literal(deliveryOptions.encode()),
           if (reputationOptions != null)
             'reputation_options': TfArg.literal(reputationOptions.encode()),
           if (sendingOptions != null)
             'sending_options': TfArg.literal(sendingOptions.encode()),
           if (suppressionOptions != null)
             'suppression_options': TfArg.literal(suppressionOptions.encode()),
           if (trackingOptions != null)
             'tracking_options': TfArg.literal(trackingOptions.encode()),
           if (vdmOptions != null)
             'vdm_options': TfArg.literal(vdmOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2ConfigurationSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2ConfigurationSet>`.
  RefTo<AwsSesv2ConfigurationSet> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configuration_set_name` attribute.
  TfRef<String> get configurationSetNameRef =>
      TfRef.attribute<String>(this, 'configuration_set_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
