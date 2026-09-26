// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_configuration_set`.
const Set<String> _awsSesConfigurationSetSensitive = <String>{};

/// Typed helper for the `delivery_options` block of
/// `aws_ses_configuration_set` (derived from provider schema).
@immutable
final class SesConfigurationSetDeliveryOptions {
  const SesConfigurationSetDeliveryOptions({this.tlsPolicy});

  final TfArg<String>? tlsPolicy;

  Map<String, Object?> encode() => {
    if (tlsPolicy != null) 'tls_policy': tlsPolicy!.toTfJson(),
  };
}

/// Typed helper for the `tracking_options` block of
/// `aws_ses_configuration_set` (derived from provider schema).
@immutable
final class SesConfigurationSetTrackingOptions {
  const SesConfigurationSetTrackingOptions({this.customRedirectDomain});

  final TfArg<String>? customRedirectDomain;

  Map<String, Object?> encode() => {
    if (customRedirectDomain != null)
      'custom_redirect_domain': customRedirectDomain!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ses_configuration_set`.
final class AwsSesConfigurationSet extends Resource {
  static const String tfType = 'aws_ses_configuration_set';

  AwsSesConfigurationSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? reputationMetricsEnabled,
    TfArg<bool>? sendingEnabled,
    SesConfigurationSetDeliveryOptions? deliveryOptions,
    SesConfigurationSetTrackingOptions? trackingOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (reputationMetricsEnabled != null)
             'reputation_metrics_enabled': reputationMetricsEnabled,
           if (sendingEnabled != null) 'sending_enabled': sendingEnabled,
           if (deliveryOptions != null)
             'delivery_options': TfArg.literal(deliveryOptions.encode()),
           if (trackingOptions != null)
             'tracking_options': TfArg.literal(trackingOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesConfigurationSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `last_fresh_start` attribute.
  TfRef<String> get lastFreshStart =>
      TfRef.attribute<String>(this, 'last_fresh_start');
}
