// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_account_vdm_attributes`.
const Set<String> _awsSesv2AccountVdmAttributesSensitive = <String>{};

/// Sesv2 Account Vdm Attributes Vdm enum for `vdm_enabled`.
extension type const Sesv2AccountVdmAttributesVdmEnabled._(TfArg<String> _)
    implements TfArg<String> {
  Sesv2AccountVdmAttributesVdmEnabled.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2AccountVdmAttributesVdmEnabled.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2AccountVdmAttributesVdmEnabled.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = Sesv2AccountVdmAttributesVdmEnabled._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = Sesv2AccountVdmAttributesVdmEnabled._(
    TfArgLiteral('DISABLED'),
  );

  static const List<Sesv2AccountVdmAttributesVdmEnabled> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `dashboard_attributes` block of
/// `aws_sesv2_account_vdm_attributes` (derived from provider schema).
@immutable
final class Sesv2AccountVdmAttributesDashboardAttributes {
  const Sesv2AccountVdmAttributesDashboardAttributes({this.engagementMetrics});

  final Sesv2AccountVdmAttributesEngagementMetrics? engagementMetrics;

  @internal
  Map<String, Object?> encode() => {
    'engagement_metrics': ?engagementMetrics?.toTfJson(),
  };
}

/// `engagement_metrics` — derived from the provider schema description.
extension type const Sesv2AccountVdmAttributesEngagementMetrics._(
  TfArg<String> _
) implements TfArg<String> {
  Sesv2AccountVdmAttributesEngagementMetrics.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2AccountVdmAttributesEngagementMetrics.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2AccountVdmAttributesEngagementMetrics.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = Sesv2AccountVdmAttributesEngagementMetrics._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = Sesv2AccountVdmAttributesEngagementMetrics._(
    TfArgLiteral('DISABLED'),
  );

  static const List<Sesv2AccountVdmAttributesEngagementMetrics> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `guardian_attributes` block of
/// `aws_sesv2_account_vdm_attributes` (derived from provider schema).
@immutable
final class Sesv2AccountVdmAttributesGuardianAttributes {
  const Sesv2AccountVdmAttributesGuardianAttributes({
    this.optimizedSharedDelivery,
  });

  final Sesv2AccountVdmAttributesOptimizedSharedDelivery?
  optimizedSharedDelivery;

  @internal
  Map<String, Object?> encode() => {
    'optimized_shared_delivery': ?optimizedSharedDelivery?.toTfJson(),
  };
}

/// `optimized_shared_delivery` — derived from the provider schema description.
extension type const Sesv2AccountVdmAttributesOptimizedSharedDelivery._(
  TfArg<String> _
) implements TfArg<String> {
  Sesv2AccountVdmAttributesOptimizedSharedDelivery.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2AccountVdmAttributesOptimizedSharedDelivery.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2AccountVdmAttributesOptimizedSharedDelivery.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = Sesv2AccountVdmAttributesOptimizedSharedDelivery._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = Sesv2AccountVdmAttributesOptimizedSharedDelivery._(
    TfArgLiteral('DISABLED'),
  );

  static const List<Sesv2AccountVdmAttributesOptimizedSharedDelivery> values = [
    enabled,
    disabled,
  ];
}

/// Factory wrapper for `aws_sesv2_account_vdm_attributes`.
final class AwsSesv2AccountVdmAttributes extends Resource {
  static const String tfType = 'aws_sesv2_account_vdm_attributes';

  AwsSesv2AccountVdmAttributes(
    super.localName, {
    TfArg<String>? region,
    required Sesv2AccountVdmAttributesVdmEnabled vdmEnabled,
    Sesv2AccountVdmAttributesDashboardAttributes? dashboardAttributes,
    Sesv2AccountVdmAttributesGuardianAttributes? guardianAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'vdm_enabled': vdmEnabled,
           if (dashboardAttributes != null)
             'dashboard_attributes': TfArg.literal(
               dashboardAttributes.encode(),
             ),
           if (guardianAttributes != null)
             'guardian_attributes': TfArg.literal(guardianAttributes.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2AccountVdmAttributesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2AccountVdmAttributes>`.
  RefTo<AwsSesv2AccountVdmAttributes> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vdm_enabled` attribute.
  TfRef<String> get vdmEnabled => TfRef.attribute<String>(this, 'vdm_enabled');
}
