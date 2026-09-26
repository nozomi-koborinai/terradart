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

  final TfArg<String>? tlsPolicy;

  Map<String, Object?> encode() => {
    if (maxDeliverySeconds != null)
      'max_delivery_seconds': maxDeliverySeconds!.toTfJson(),
    if (sendingPoolName != null)
      'sending_pool_name': sendingPoolName!.toTfJson(),
    if (tlsPolicy != null) 'tls_policy': tlsPolicy!.toTfJson(),
  };
}

/// Typed helper for the `reputation_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetReputationOptions {
  const Sesv2ConfigurationSetReputationOptions({this.reputationMetricsEnabled});

  final TfArg<bool>? reputationMetricsEnabled;

  Map<String, Object?> encode() => {
    if (reputationMetricsEnabled != null)
      'reputation_metrics_enabled': reputationMetricsEnabled!.toTfJson(),
  };
}

/// Typed helper for the `sending_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetSendingOptions {
  const Sesv2ConfigurationSetSendingOptions({this.sendingEnabled});

  final TfArg<bool>? sendingEnabled;

  Map<String, Object?> encode() => {
    if (sendingEnabled != null) 'sending_enabled': sendingEnabled!.toTfJson(),
  };
}

/// Typed helper for the `suppression_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetSuppressionOptions {
  const Sesv2ConfigurationSetSuppressionOptions({this.suppressedReasons});

  final TfArg<List<Object?>>? suppressedReasons;

  Map<String, Object?> encode() => {
    if (suppressedReasons != null)
      'suppressed_reasons': suppressedReasons!.toTfJson(),
  };
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

  final TfArg<String>? httpsPolicy;

  Map<String, Object?> encode() => {
    'custom_redirect_domain': customRedirectDomain.toTfJson(),
    if (httpsPolicy != null) 'https_policy': httpsPolicy!.toTfJson(),
  };
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
    if (dashboardOptions != null)
      'dashboard_options': dashboardOptions!.encode(),
    if (guardianOptions != null) 'guardian_options': guardianOptions!.encode(),
  };
}

/// Typed helper for the `vdm_options.dashboard_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetVdmOptionsDashboardOptions {
  const Sesv2ConfigurationSetVdmOptionsDashboardOptions({
    this.engagementMetrics,
  });

  final TfArg<String>? engagementMetrics;

  Map<String, Object?> encode() => {
    if (engagementMetrics != null)
      'engagement_metrics': engagementMetrics!.toTfJson(),
  };
}

/// Typed helper for the `vdm_options.guardian_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetVdmOptionsGuardianOptions {
  const Sesv2ConfigurationSetVdmOptionsGuardianOptions({
    this.optimizedSharedDelivery,
  });

  final TfArg<String>? optimizedSharedDelivery;

  Map<String, Object?> encode() => {
    if (optimizedSharedDelivery != null)
      'optimized_shared_delivery': optimizedSharedDelivery!.toTfJson(),
  };
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
