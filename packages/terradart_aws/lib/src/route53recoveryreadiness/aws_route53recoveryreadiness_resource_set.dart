// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53recoveryreadiness_resource_set`.
const Set<String> _awsRoute53recoveryreadinessResourceSetSensitive = <String>{};

/// Typed helper for the `resources` block of
/// `aws_route53recoveryreadiness_resource_set` (derived from provider schema).
@immutable
final class Route53recoveryreadinessResourceSetResources {
  const Route53recoveryreadinessResourceSetResources({
    this.readinessScopes,
    this.resourceArn,
    this.dnsTargetResource,
  });

  final TfArg<List<Object?>>? readinessScopes;

  final TfArg<String>? resourceArn;

  final Route53recoveryreadinessResourceSetResourcesDnsTargetResource?
  dnsTargetResource;

  Map<String, Object?> encode() => {
    if (readinessScopes != null)
      'readiness_scopes': readinessScopes!.toTfJson(),
    if (resourceArn != null) 'resource_arn': resourceArn!.toTfJson(),
    if (dnsTargetResource != null)
      'dns_target_resource': dnsTargetResource!.encode(),
  };
}

/// Typed helper for the `resources.dns_target_resource` block of
/// `aws_route53recoveryreadiness_resource_set` (derived from provider schema).
@immutable
final class Route53recoveryreadinessResourceSetResourcesDnsTargetResource {
  const Route53recoveryreadinessResourceSetResourcesDnsTargetResource({
    required this.domainName,
    this.hostedZoneArn,
    this.recordSetId,
    this.recordType,
    this.targetResource,
  });

  final TfArg<String> domainName;

  final TfArg<String>? hostedZoneArn;

  final TfArg<String>? recordSetId;

  final TfArg<String>? recordType;

  final Route53recoveryreadinessResourceSetResourcesDnsTargetResourceTargetResource?
  targetResource;

  Map<String, Object?> encode() => {
    'domain_name': domainName.toTfJson(),
    if (hostedZoneArn != null) 'hosted_zone_arn': hostedZoneArn!.toTfJson(),
    if (recordSetId != null) 'record_set_id': recordSetId!.toTfJson(),
    if (recordType != null) 'record_type': recordType!.toTfJson(),
    if (targetResource != null) 'target_resource': targetResource!.encode(),
  };
}

/// Typed helper for the `resources.dns_target_resource.target_resource` block of
/// `aws_route53recoveryreadiness_resource_set` (derived from provider schema).
@immutable
final class Route53recoveryreadinessResourceSetResourcesDnsTargetResourceTargetResource {
  const Route53recoveryreadinessResourceSetResourcesDnsTargetResourceTargetResource({
    this.nlbResource,
    this.r53Resource,
  });

  final Route53recoveryreadinessResourceSetResourcesDnsTargetResourceTargetResourceNlbResource?
  nlbResource;

  final Route53recoveryreadinessResourceSetResourcesDnsTargetResourceTargetResourceR53Resource?
  r53Resource;

  Map<String, Object?> encode() => {
    if (nlbResource != null) 'nlb_resource': nlbResource!.encode(),
    if (r53Resource != null) 'r53_resource': r53Resource!.encode(),
  };
}

/// Typed helper for the `resources.dns_target_resource.target_resource.nlb_resource` block of
/// `aws_route53recoveryreadiness_resource_set` (derived from provider schema).
@immutable
final class Route53recoveryreadinessResourceSetResourcesDnsTargetResourceTargetResourceNlbResource {
  const Route53recoveryreadinessResourceSetResourcesDnsTargetResourceTargetResourceNlbResource({
    this.arn,
  });

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {if (arn != null) 'arn': arn!.toTfJson()};
}

/// Typed helper for the `resources.dns_target_resource.target_resource.r53_resource` block of
/// `aws_route53recoveryreadiness_resource_set` (derived from provider schema).
@immutable
final class Route53recoveryreadinessResourceSetResourcesDnsTargetResourceTargetResourceR53Resource {
  const Route53recoveryreadinessResourceSetResourcesDnsTargetResourceTargetResourceR53Resource({
    this.domainName,
    this.recordSetId,
  });

  final TfArg<String>? domainName;

  final TfArg<String>? recordSetId;

  Map<String, Object?> encode() => {
    if (domainName != null) 'domain_name': domainName!.toTfJson(),
    if (recordSetId != null) 'record_set_id': recordSetId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53recoveryreadiness_resource_set`.
final class AwsRoute53recoveryreadinessResourceSet extends Resource {
  static const String tfType = 'aws_route53recoveryreadiness_resource_set';

  AwsRoute53recoveryreadinessResourceSet({
    required super.localName,
    required TfArg<String> resourceSetName,
    required TfArg<String> resourceSetType,
    TfArg<Map<String, String>>? tags,
    required List<Route53recoveryreadinessResourceSetResources> resources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'resource_set_name': resourceSetName,
           'resource_set_type': resourceSetType,
           if (tags != null) 'tags': tags,
           'resources': TfArg.literal([for (final e in resources) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53recoveryreadinessResourceSetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
