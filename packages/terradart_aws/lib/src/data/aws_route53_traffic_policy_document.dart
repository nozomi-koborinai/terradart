// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_traffic_policy_document`.
const Set<String> _awsRoute53TrafficPolicyDocumentSensitive = <String>{};

/// Typed helper for the `endpoint` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentEndpoint {
  const DataRoute53TrafficPolicyDocumentEndpoint({
    required this.id,
    this.region,
    this.type,
    this.value,
  });

  final TfArg<String> id;

  final TfArg<String>? region;

  final TfArg<String>? type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'region': ?region?.toTfJson(),
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `rule` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentRule {
  const DataRoute53TrafficPolicyDocumentRule({
    required this.id,
    this.type,
    this.geoProximityLocation,
    this.items,
    this.location,
    this.primary,
    this.region,
    this.secondary,
  });

  final TfArg<String> id;

  final TfArg<String>? type;

  final List<DataRoute53TrafficPolicyDocumentGeoProximityLocation>?
  geoProximityLocation;

  final List<DataRoute53TrafficPolicyDocumentItems>? items;

  final List<DataRoute53TrafficPolicyDocumentLocation>? location;

  final DataRoute53TrafficPolicyDocumentPrimary? primary;

  final List<DataRoute53TrafficPolicyDocumentRegion>? region;

  final DataRoute53TrafficPolicyDocumentSecondary? secondary;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': ?type?.toTfJson(),
    if (geoProximityLocation != null)
      'geo_proximity_location': [
        for (final e in geoProximityLocation!) e.encode(),
      ],
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (location != null) 'location': [for (final e in location!) e.encode()],
    'primary': ?primary?.encode(),
    if (region != null) 'region': [for (final e in region!) e.encode()],
    'secondary': ?secondary?.encode(),
  };
}

/// Typed helper for the `rule.geo_proximity_location` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentGeoProximityLocation {
  const DataRoute53TrafficPolicyDocumentGeoProximityLocation({
    this.bias,
    this.endpointReference,
    this.evaluateTargetHealth,
    this.healthCheck,
    this.latitude,
    this.longitude,
    this.region,
    this.ruleReference,
  });

  final TfArg<String>? bias;

  final TfArg<String>? endpointReference;

  final TfArg<bool>? evaluateTargetHealth;

  final TfArg<String>? healthCheck;

  final TfArg<String>? latitude;

  final TfArg<String>? longitude;

  final TfArg<String>? region;

  final TfArg<String>? ruleReference;

  Map<String, Object?> encode() => {
    'bias': ?bias?.toTfJson(),
    'endpoint_reference': ?endpointReference?.toTfJson(),
    'evaluate_target_health': ?evaluateTargetHealth?.toTfJson(),
    'health_check': ?healthCheck?.toTfJson(),
    'latitude': ?latitude?.toTfJson(),
    'longitude': ?longitude?.toTfJson(),
    'region': ?region?.toTfJson(),
    'rule_reference': ?ruleReference?.toTfJson(),
  };
}

/// Typed helper for the `rule.items` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentItems {
  const DataRoute53TrafficPolicyDocumentItems({
    this.endpointReference,
    this.healthCheck,
  });

  final TfArg<String>? endpointReference;

  final TfArg<String>? healthCheck;

  Map<String, Object?> encode() => {
    'endpoint_reference': ?endpointReference?.toTfJson(),
    'health_check': ?healthCheck?.toTfJson(),
  };
}

/// Typed helper for the `rule.location` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentLocation {
  const DataRoute53TrafficPolicyDocumentLocation({
    this.continent,
    this.country,
    this.endpointReference,
    this.evaluateTargetHealth,
    this.healthCheck,
    this.isDefault,
    this.ruleReference,
    this.subdivision,
  });

  final TfArg<String>? continent;

  final TfArg<String>? country;

  final TfArg<String>? endpointReference;

  final TfArg<bool>? evaluateTargetHealth;

  final TfArg<String>? healthCheck;

  final TfArg<bool>? isDefault;

  final TfArg<String>? ruleReference;

  final TfArg<String>? subdivision;

  Map<String, Object?> encode() => {
    'continent': ?continent?.toTfJson(),
    'country': ?country?.toTfJson(),
    'endpoint_reference': ?endpointReference?.toTfJson(),
    'evaluate_target_health': ?evaluateTargetHealth?.toTfJson(),
    'health_check': ?healthCheck?.toTfJson(),
    'is_default': ?isDefault?.toTfJson(),
    'rule_reference': ?ruleReference?.toTfJson(),
    'subdivision': ?subdivision?.toTfJson(),
  };
}

/// Typed helper for the `rule.primary` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentPrimary {
  const DataRoute53TrafficPolicyDocumentPrimary({
    this.endpointReference,
    this.evaluateTargetHealth,
    this.healthCheck,
    this.ruleReference,
  });

  final TfArg<String>? endpointReference;

  final TfArg<bool>? evaluateTargetHealth;

  final TfArg<String>? healthCheck;

  final TfArg<String>? ruleReference;

  Map<String, Object?> encode() => {
    'endpoint_reference': ?endpointReference?.toTfJson(),
    'evaluate_target_health': ?evaluateTargetHealth?.toTfJson(),
    'health_check': ?healthCheck?.toTfJson(),
    'rule_reference': ?ruleReference?.toTfJson(),
  };
}

/// Typed helper for the `rule.region` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentRegion {
  const DataRoute53TrafficPolicyDocumentRegion({
    this.endpointReference,
    this.evaluateTargetHealth,
    this.healthCheck,
    this.region,
    this.ruleReference,
  });

  final TfArg<String>? endpointReference;

  final TfArg<bool>? evaluateTargetHealth;

  final TfArg<String>? healthCheck;

  final TfArg<String>? region;

  final TfArg<String>? ruleReference;

  Map<String, Object?> encode() => {
    'endpoint_reference': ?endpointReference?.toTfJson(),
    'evaluate_target_health': ?evaluateTargetHealth?.toTfJson(),
    'health_check': ?healthCheck?.toTfJson(),
    'region': ?region?.toTfJson(),
    'rule_reference': ?ruleReference?.toTfJson(),
  };
}

/// Typed helper for the `rule.secondary` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentSecondary {
  const DataRoute53TrafficPolicyDocumentSecondary({
    this.endpointReference,
    this.evaluateTargetHealth,
    this.healthCheck,
    this.ruleReference,
  });

  final TfArg<String>? endpointReference;

  final TfArg<bool>? evaluateTargetHealth;

  final TfArg<String>? healthCheck;

  final TfArg<String>? ruleReference;

  Map<String, Object?> encode() => {
    'endpoint_reference': ?endpointReference?.toTfJson(),
    'evaluate_target_health': ?evaluateTargetHealth?.toTfJson(),
    'health_check': ?healthCheck?.toTfJson(),
    'rule_reference': ?ruleReference?.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53_traffic_policy_document`.
final class DataAwsRoute53TrafficPolicyDocument extends Data {
  static const String tfType = 'aws_route53_traffic_policy_document';

  DataAwsRoute53TrafficPolicyDocument({
    required super.localName,
    TfArg<String>? recordType,
    TfArg<String>? startEndpoint,
    TfArg<String>? startRule,
    TfArg<String>? version,
    List<DataRoute53TrafficPolicyDocumentEndpoint>? endpoint,
    List<DataRoute53TrafficPolicyDocumentRule>? rule,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'record_type': ?recordType,
           'start_endpoint': ?startEndpoint,
           'start_rule': ?startRule,
           'version': ?version,
           if (endpoint != null)
             'endpoint': TfArg.literal([for (final e in endpoint) e.encode()]),
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53TrafficPolicyDocumentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `json` attribute.
  TfRef<String> get json => TfRef.attribute<String>(this, 'json');

  /// Reference to `record_type` attribute.
  TfRef<String> get recordType => TfRef.attribute<String>(this, 'record_type');

  /// Reference to `start_endpoint` attribute.
  TfRef<String> get startEndpoint =>
      TfRef.attribute<String>(this, 'start_endpoint');

  /// Reference to `start_rule` attribute.
  TfRef<String> get startRule => TfRef.attribute<String>(this, 'start_rule');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
