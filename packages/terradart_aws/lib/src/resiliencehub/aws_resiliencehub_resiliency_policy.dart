// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehub_resiliency_policy`.
const Set<String> _awsResiliencehubResiliencyPolicySensitive = <String>{};

/// Typed helper for the `policy` block of
/// `aws_resiliencehub_resiliency_policy` (derived from provider schema).
@immutable
final class ResiliencehubResiliencyPolicyPolicy {
  const ResiliencehubResiliencyPolicyPolicy({
    this.az,
    this.hardware,
    this.region,
    this.software,
  });

  final List<ResiliencehubResiliencyPolicyPolicyAz>? az;

  final List<ResiliencehubResiliencyPolicyPolicyHardware>? hardware;

  final List<ResiliencehubResiliencyPolicyPolicyRegion>? region;

  final List<ResiliencehubResiliencyPolicyPolicySoftware>? software;

  Map<String, Object?> encode() => {
    if (az != null) 'az': [for (final e in az!) e.encode()],
    if (hardware != null) 'hardware': [for (final e in hardware!) e.encode()],
    if (region != null) 'region': [for (final e in region!) e.encode()],
    if (software != null) 'software': [for (final e in software!) e.encode()],
  };
}

/// Typed helper for the `policy.az` block of
/// `aws_resiliencehub_resiliency_policy` (derived from provider schema).
@immutable
final class ResiliencehubResiliencyPolicyPolicyAz {
  const ResiliencehubResiliencyPolicyPolicyAz({
    required this.rpo,
    required this.rto,
  });

  final TfArg<String> rpo;

  final TfArg<String> rto;

  Map<String, Object?> encode() => {
    'rpo': rpo.toTfJson(),
    'rto': rto.toTfJson(),
  };
}

/// Typed helper for the `policy.hardware` block of
/// `aws_resiliencehub_resiliency_policy` (derived from provider schema).
@immutable
final class ResiliencehubResiliencyPolicyPolicyHardware {
  const ResiliencehubResiliencyPolicyPolicyHardware({
    required this.rpo,
    required this.rto,
  });

  final TfArg<String> rpo;

  final TfArg<String> rto;

  Map<String, Object?> encode() => {
    'rpo': rpo.toTfJson(),
    'rto': rto.toTfJson(),
  };
}

/// Typed helper for the `policy.region` block of
/// `aws_resiliencehub_resiliency_policy` (derived from provider schema).
@immutable
final class ResiliencehubResiliencyPolicyPolicyRegion {
  const ResiliencehubResiliencyPolicyPolicyRegion({this.rpo, this.rto});

  final TfArg<String>? rpo;

  final TfArg<String>? rto;

  Map<String, Object?> encode() => {
    if (rpo != null) 'rpo': rpo!.toTfJson(),
    if (rto != null) 'rto': rto!.toTfJson(),
  };
}

/// Typed helper for the `policy.software` block of
/// `aws_resiliencehub_resiliency_policy` (derived from provider schema).
@immutable
final class ResiliencehubResiliencyPolicyPolicySoftware {
  const ResiliencehubResiliencyPolicyPolicySoftware({
    required this.rpo,
    required this.rto,
  });

  final TfArg<String> rpo;

  final TfArg<String> rto;

  Map<String, Object?> encode() => {
    'rpo': rpo.toTfJson(),
    'rto': rto.toTfJson(),
  };
}

/// Factory wrapper for `aws_resiliencehub_resiliency_policy`.
final class AwsResiliencehubResiliencyPolicy extends Resource {
  static const String tfType = 'aws_resiliencehub_resiliency_policy';

  AwsResiliencehubResiliencyPolicy({
    required super.localName,
    TfArg<String>? dataLocationConstraint,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> tier,
    List<ResiliencehubResiliencyPolicyPolicy>? policy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dataLocationConstraint != null)
             'data_location_constraint': dataLocationConstraint,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'tier': tier,
           if (policy != null)
             'policy': TfArg.literal([for (final e in policy) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubResiliencyPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `estimated_cost_tier` attribute.
  TfRef<String> get estimatedCostTier =>
      TfRef.attribute<String>(this, 'estimated_cost_tier');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
