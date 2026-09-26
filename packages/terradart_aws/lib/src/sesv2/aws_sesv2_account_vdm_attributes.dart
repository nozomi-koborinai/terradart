// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_account_vdm_attributes`.
const Set<String> _awsSesv2AccountVdmAttributesSensitive = <String>{};

/// Typed helper for the `dashboard_attributes` block of
/// `aws_sesv2_account_vdm_attributes` (derived from provider schema).
@immutable
final class Sesv2AccountVdmAttributesDashboardAttributes {
  const Sesv2AccountVdmAttributesDashboardAttributes({this.engagementMetrics});

  final TfArg<String>? engagementMetrics;

  Map<String, Object?> encode() => {
    if (engagementMetrics != null)
      'engagement_metrics': engagementMetrics!.toTfJson(),
  };
}

/// Typed helper for the `guardian_attributes` block of
/// `aws_sesv2_account_vdm_attributes` (derived from provider schema).
@immutable
final class Sesv2AccountVdmAttributesGuardianAttributes {
  const Sesv2AccountVdmAttributesGuardianAttributes({
    this.optimizedSharedDelivery,
  });

  final TfArg<String>? optimizedSharedDelivery;

  Map<String, Object?> encode() => {
    if (optimizedSharedDelivery != null)
      'optimized_shared_delivery': optimizedSharedDelivery!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sesv2_account_vdm_attributes`.
final class AwsSesv2AccountVdmAttributes extends Resource {
  static const String tfType = 'aws_sesv2_account_vdm_attributes';

  AwsSesv2AccountVdmAttributes({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> vdmEnabled,
    Sesv2AccountVdmAttributesDashboardAttributes? dashboardAttributes,
    Sesv2AccountVdmAttributesGuardianAttributes? guardianAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
