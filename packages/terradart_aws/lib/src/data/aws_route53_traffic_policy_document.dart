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
    if (region != null) 'region': region!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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

  final List<DataRoute53TrafficPolicyDocumentRuleGeoProximityLocation>?
  geoProximityLocation;

  final List<DataRoute53TrafficPolicyDocumentRuleItems>? items;

  final List<DataRoute53TrafficPolicyDocumentRuleLocation>? location;

  final DataRoute53TrafficPolicyDocumentRulePrimary? primary;

  final List<DataRoute53TrafficPolicyDocumentRuleRegion>? region;

  final DataRoute53TrafficPolicyDocumentRuleSecondary? secondary;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (geoProximityLocation != null)
      'geo_proximity_location': [
        for (final e in geoProximityLocation!) e.encode(),
      ],
    if (items != null) 'items': [for (final e in items!) e.encode()],
    if (location != null) 'location': [for (final e in location!) e.encode()],
    if (primary != null) 'primary': primary!.encode(),
    if (region != null) 'region': [for (final e in region!) e.encode()],
    if (secondary != null) 'secondary': secondary!.encode(),
  };
}

/// Typed helper for the `rule.geo_proximity_location` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentRuleGeoProximityLocation {
  const DataRoute53TrafficPolicyDocumentRuleGeoProximityLocation({
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
    if (bias != null) 'bias': bias!.toTfJson(),
    if (endpointReference != null)
      'endpoint_reference': endpointReference!.toTfJson(),
    if (evaluateTargetHealth != null)
      'evaluate_target_health': evaluateTargetHealth!.toTfJson(),
    if (healthCheck != null) 'health_check': healthCheck!.toTfJson(),
    if (latitude != null) 'latitude': latitude!.toTfJson(),
    if (longitude != null) 'longitude': longitude!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (ruleReference != null) 'rule_reference': ruleReference!.toTfJson(),
  };
}

/// Typed helper for the `rule.items` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentRuleItems {
  const DataRoute53TrafficPolicyDocumentRuleItems({
    this.endpointReference,
    this.healthCheck,
  });

  final TfArg<String>? endpointReference;

  final TfArg<String>? healthCheck;

  Map<String, Object?> encode() => {
    if (endpointReference != null)
      'endpoint_reference': endpointReference!.toTfJson(),
    if (healthCheck != null) 'health_check': healthCheck!.toTfJson(),
  };
}

/// Typed helper for the `rule.location` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentRuleLocation {
  const DataRoute53TrafficPolicyDocumentRuleLocation({
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
    if (continent != null) 'continent': continent!.toTfJson(),
    if (country != null) 'country': country!.toTfJson(),
    if (endpointReference != null)
      'endpoint_reference': endpointReference!.toTfJson(),
    if (evaluateTargetHealth != null)
      'evaluate_target_health': evaluateTargetHealth!.toTfJson(),
    if (healthCheck != null) 'health_check': healthCheck!.toTfJson(),
    if (isDefault != null) 'is_default': isDefault!.toTfJson(),
    if (ruleReference != null) 'rule_reference': ruleReference!.toTfJson(),
    if (subdivision != null) 'subdivision': subdivision!.toTfJson(),
  };
}

/// Typed helper for the `rule.primary` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentRulePrimary {
  const DataRoute53TrafficPolicyDocumentRulePrimary({
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
    if (endpointReference != null)
      'endpoint_reference': endpointReference!.toTfJson(),
    if (evaluateTargetHealth != null)
      'evaluate_target_health': evaluateTargetHealth!.toTfJson(),
    if (healthCheck != null) 'health_check': healthCheck!.toTfJson(),
    if (ruleReference != null) 'rule_reference': ruleReference!.toTfJson(),
  };
}

/// Typed helper for the `rule.region` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentRuleRegion {
  const DataRoute53TrafficPolicyDocumentRuleRegion({
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
    if (endpointReference != null)
      'endpoint_reference': endpointReference!.toTfJson(),
    if (evaluateTargetHealth != null)
      'evaluate_target_health': evaluateTargetHealth!.toTfJson(),
    if (healthCheck != null) 'health_check': healthCheck!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (ruleReference != null) 'rule_reference': ruleReference!.toTfJson(),
  };
}

/// Typed helper for the `rule.secondary` block of
/// `aws_route53_traffic_policy_document` (derived from provider schema).
@immutable
final class DataRoute53TrafficPolicyDocumentRuleSecondary {
  const DataRoute53TrafficPolicyDocumentRuleSecondary({
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
    if (endpointReference != null)
      'endpoint_reference': endpointReference!.toTfJson(),
    if (evaluateTargetHealth != null)
      'evaluate_target_health': evaluateTargetHealth!.toTfJson(),
    if (healthCheck != null) 'health_check': healthCheck!.toTfJson(),
    if (ruleReference != null) 'rule_reference': ruleReference!.toTfJson(),
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
           if (recordType != null) 'record_type': recordType,
           if (startEndpoint != null) 'start_endpoint': startEndpoint,
           if (startRule != null) 'start_rule': startRule,
           if (version != null) 'version': version,
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
}
