// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_account_vdm_attributes`.
const Set<String> _awsSesv2AccountVdmAttributesSensitive = <String>{};

/// Sesv2 Account Vdm Attributes Vdm enum for `vdm_enabled`.
enum Sesv2AccountVdmAttributesVdmEnabled implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const Sesv2AccountVdmAttributesVdmEnabled(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `dashboard_attributes` block of
/// `aws_sesv2_account_vdm_attributes` (derived from provider schema).
@immutable
final class Sesv2AccountVdmAttributesDashboardAttributes {
  const Sesv2AccountVdmAttributesDashboardAttributes({this.engagementMetrics});

  final TfArg<Sesv2AccountVdmAttributesDashboardAttributesEngagementMetrics>?
  engagementMetrics;

  Map<String, Object?> encode() => {
    'engagement_metrics': ?engagementMetrics?.toTfJson(),
  };
}

/// `engagement_metrics` — derived from the provider schema description.
enum Sesv2AccountVdmAttributesDashboardAttributesEngagementMetrics
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const Sesv2AccountVdmAttributesDashboardAttributesEngagementMetrics(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `guardian_attributes` block of
/// `aws_sesv2_account_vdm_attributes` (derived from provider schema).
@immutable
final class Sesv2AccountVdmAttributesGuardianAttributes {
  const Sesv2AccountVdmAttributesGuardianAttributes({
    this.optimizedSharedDelivery,
  });

  final TfArg<
    Sesv2AccountVdmAttributesGuardianAttributesOptimizedSharedDelivery
  >?
  optimizedSharedDelivery;

  Map<String, Object?> encode() => {
    'optimized_shared_delivery': ?optimizedSharedDelivery?.toTfJson(),
  };
}

/// `optimized_shared_delivery` — derived from the provider schema description.
enum Sesv2AccountVdmAttributesGuardianAttributesOptimizedSharedDelivery
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const Sesv2AccountVdmAttributesGuardianAttributesOptimizedSharedDelivery(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sesv2_account_vdm_attributes`.
final class AwsSesv2AccountVdmAttributes extends Resource {
  static const String tfType = 'aws_sesv2_account_vdm_attributes';

  AwsSesv2AccountVdmAttributes({
    required super.localName,
    TfArg<String>? region,
    required TfArg<Sesv2AccountVdmAttributesVdmEnabled> vdmEnabled,
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
}
