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

  final Sesv2ConfigurationSetTlsPolicy? tlsPolicy;

  @internal
  Map<String, Object?> encode() => {
    'max_delivery_seconds': ?maxDeliverySeconds?.toTfJson(),
    'sending_pool_name': ?sendingPoolName?.toTfJson(),
    'tls_policy': ?tlsPolicy?.toTfJson(),
  };
}

/// `tls_policy` — derived from the provider schema description.
extension type const Sesv2ConfigurationSetTlsPolicy._(TfArg<String> _)
    implements TfArg<String> {
  Sesv2ConfigurationSetTlsPolicy.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2ConfigurationSetTlsPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2ConfigurationSetTlsPolicy.arg(TfArg<String> arg) : this._(arg);

  static const require = Sesv2ConfigurationSetTlsPolicy._(
    TfArgLiteral('REQUIRE'),
  );
  static const optional = Sesv2ConfigurationSetTlsPolicy._(
    TfArgLiteral('OPTIONAL'),
  );

  static const List<Sesv2ConfigurationSetTlsPolicy> values = [
    require,
    optional,
  ];
}

/// Typed helper for the `reputation_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetReputationOptions {
  const Sesv2ConfigurationSetReputationOptions({this.reputationMetricsEnabled});

  final TfArg<bool>? reputationMetricsEnabled;

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'sending_enabled': ?sendingEnabled?.toTfJson(),
  };
}

/// Typed helper for the `suppression_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetSuppressionOptions {
  const Sesv2ConfigurationSetSuppressionOptions({this.suppressedReasons});

  final List<Sesv2ConfigurationSetSuppressedReasons>? suppressedReasons;

  @internal
  Map<String, Object?> encode() => {
    if (suppressedReasons != null)
      'suppressed_reasons': [for (final e in suppressedReasons!) e.toTfJson()],
  };
}

/// `suppressed_reasons` — derived from the provider schema description.
extension type const Sesv2ConfigurationSetSuppressedReasons._(TfArg<String> _)
    implements TfArg<String> {
  Sesv2ConfigurationSetSuppressedReasons.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2ConfigurationSetSuppressedReasons.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2ConfigurationSetSuppressedReasons.arg(TfArg<String> arg)
    : this._(arg);

  static const bounce = Sesv2ConfigurationSetSuppressedReasons._(
    TfArgLiteral('BOUNCE'),
  );
  static const complaint = Sesv2ConfigurationSetSuppressedReasons._(
    TfArgLiteral('COMPLAINT'),
  );

  static const List<Sesv2ConfigurationSetSuppressedReasons> values = [
    bounce,
    complaint,
  ];
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

  final Sesv2ConfigurationSetHttpsPolicy? httpsPolicy;

  @internal
  Map<String, Object?> encode() => {
    'custom_redirect_domain': customRedirectDomain.toTfJson(),
    'https_policy': ?httpsPolicy?.toTfJson(),
  };
}

/// `https_policy` — derived from the provider schema description.
extension type const Sesv2ConfigurationSetHttpsPolicy._(TfArg<String> _)
    implements TfArg<String> {
  Sesv2ConfigurationSetHttpsPolicy.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2ConfigurationSetHttpsPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2ConfigurationSetHttpsPolicy.arg(TfArg<String> arg) : this._(arg);

  static const require = Sesv2ConfigurationSetHttpsPolicy._(
    TfArgLiteral('REQUIRE'),
  );
  static const requireOpenOnly = Sesv2ConfigurationSetHttpsPolicy._(
    TfArgLiteral('REQUIRE_OPEN_ONLY'),
  );
  static const optional = Sesv2ConfigurationSetHttpsPolicy._(
    TfArgLiteral('OPTIONAL'),
  );

  static const List<Sesv2ConfigurationSetHttpsPolicy> values = [
    require,
    requireOpenOnly,
    optional,
  ];
}

/// Typed helper for the `vdm_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetVdmOptions {
  const Sesv2ConfigurationSetVdmOptions({
    this.dashboardOptions,
    this.guardianOptions,
  });

  final Sesv2ConfigurationSetDashboardOptions? dashboardOptions;

  final Sesv2ConfigurationSetGuardianOptions? guardianOptions;

  @internal
  Map<String, Object?> encode() => {
    'dashboard_options': ?dashboardOptions?.encode(),
    'guardian_options': ?guardianOptions?.encode(),
  };
}

/// Typed helper for the `vdm_options.dashboard_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetDashboardOptions {
  const Sesv2ConfigurationSetDashboardOptions({this.engagementMetrics});

  final Sesv2ConfigurationSetEngagementMetrics? engagementMetrics;

  @internal
  Map<String, Object?> encode() => {
    'engagement_metrics': ?engagementMetrics?.toTfJson(),
  };
}

/// `engagement_metrics` — derived from the provider schema description.
extension type const Sesv2ConfigurationSetEngagementMetrics._(TfArg<String> _)
    implements TfArg<String> {
  Sesv2ConfigurationSetEngagementMetrics.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2ConfigurationSetEngagementMetrics.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2ConfigurationSetEngagementMetrics.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = Sesv2ConfigurationSetEngagementMetrics._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = Sesv2ConfigurationSetEngagementMetrics._(
    TfArgLiteral('DISABLED'),
  );

  static const List<Sesv2ConfigurationSetEngagementMetrics> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `vdm_options.guardian_options` block of
/// `aws_sesv2_configuration_set` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetGuardianOptions {
  const Sesv2ConfigurationSetGuardianOptions({this.optimizedSharedDelivery});

  final Sesv2ConfigurationSetOptimizedSharedDelivery? optimizedSharedDelivery;

  @internal
  Map<String, Object?> encode() => {
    'optimized_shared_delivery': ?optimizedSharedDelivery?.toTfJson(),
  };
}

/// `optimized_shared_delivery` — derived from the provider schema description.
extension type const Sesv2ConfigurationSetOptimizedSharedDelivery._(
  TfArg<String> _
) implements TfArg<String> {
  Sesv2ConfigurationSetOptimizedSharedDelivery.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2ConfigurationSetOptimizedSharedDelivery.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2ConfigurationSetOptimizedSharedDelivery.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = Sesv2ConfigurationSetOptimizedSharedDelivery._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = Sesv2ConfigurationSetOptimizedSharedDelivery._(
    TfArgLiteral('DISABLED'),
  );

  static const List<Sesv2ConfigurationSetOptimizedSharedDelivery> values = [
    enabled,
    disabled,
  ];
}

/// Factory wrapper for `aws_sesv2_configuration_set`.
final class AwsSesv2ConfigurationSet extends Resource {
  static const String tfType = 'aws_sesv2_configuration_set';

  AwsSesv2ConfigurationSet(
    super.localName, {
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
  TfRef<String> get configurationSetName =>
      TfRef.attribute<String>(this, 'configuration_set_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
