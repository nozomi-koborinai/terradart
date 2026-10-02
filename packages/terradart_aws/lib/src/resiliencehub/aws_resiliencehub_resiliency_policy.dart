// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehub_resiliency_policy`.
const Set<String> _awsResiliencehubResiliencyPolicySensitive = <String>{};

/// Resiliencehub Resiliency Policy Data Location enum for `data_location_constraint`.
extension type const ResiliencehubResiliencyPolicyDataLocationConstraint._(
  TfArg<String> _
) implements TfArg<String> {
  ResiliencehubResiliencyPolicyDataLocationConstraint.variable(String name)
    : this._(TfArg.variable(name));
  ResiliencehubResiliencyPolicyDataLocationConstraint.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ResiliencehubResiliencyPolicyDataLocationConstraint.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const anylocation =
      ResiliencehubResiliencyPolicyDataLocationConstraint._(
        TfArgLiteral('AnyLocation'),
      );
  static const samecontinent =
      ResiliencehubResiliencyPolicyDataLocationConstraint._(
        TfArgLiteral('SameContinent'),
      );
  static const samecountry =
      ResiliencehubResiliencyPolicyDataLocationConstraint._(
        TfArgLiteral('SameCountry'),
      );

  static const List<ResiliencehubResiliencyPolicyDataLocationConstraint>
  values = [anylocation, samecontinent, samecountry];
}

/// Resiliencehub Resiliency Policy enum for `tier`.
extension type const ResiliencehubResiliencyPolicyTier._(TfArg<String> _)
    implements TfArg<String> {
  ResiliencehubResiliencyPolicyTier.variable(String name)
    : this._(TfArg.variable(name));
  ResiliencehubResiliencyPolicyTier.expression(String template)
    : this._(TfArg.expression(template));
  const ResiliencehubResiliencyPolicyTier.arg(TfArg<String> arg) : this._(arg);

  static const missioncritical = ResiliencehubResiliencyPolicyTier._(
    TfArgLiteral('MissionCritical'),
  );
  static const critical = ResiliencehubResiliencyPolicyTier._(
    TfArgLiteral('Critical'),
  );
  static const important = ResiliencehubResiliencyPolicyTier._(
    TfArgLiteral('Important'),
  );
  static const coreservices = ResiliencehubResiliencyPolicyTier._(
    TfArgLiteral('CoreServices'),
  );
  static const noncritical = ResiliencehubResiliencyPolicyTier._(
    TfArgLiteral('NonCritical'),
  );
  static const notapplicable = ResiliencehubResiliencyPolicyTier._(
    TfArgLiteral('NotApplicable'),
  );

  static const List<ResiliencehubResiliencyPolicyTier> values = [
    missioncritical,
    critical,
    important,
    coreservices,
    noncritical,
    notapplicable,
  ];
}

/// Typed helper for the `policy` block of
/// `aws_resiliencehub_resiliency_policy` (derived from provider schema).
@immutable
final class ResiliencehubResiliencyPolicy {
  const ResiliencehubResiliencyPolicy({
    this.az,
    this.hardware,
    this.region,
    this.software,
  });

  final List<ResiliencehubResiliencyPolicyAz>? az;

  final List<ResiliencehubResiliencyPolicyHardware>? hardware;

  final List<ResiliencehubResiliencyPolicyPolicyRegion>? region;

  final List<ResiliencehubResiliencyPolicySoftware>? software;

  @internal
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
final class ResiliencehubResiliencyPolicyAz {
  const ResiliencehubResiliencyPolicyAz({required this.rpo, required this.rto});

  final TfArg<String> rpo;

  final TfArg<String> rto;

  @internal
  Map<String, Object?> encode() => {
    'rpo': rpo.toTfJson(),
    'rto': rto.toTfJson(),
  };
}

/// Typed helper for the `policy.hardware` block of
/// `aws_resiliencehub_resiliency_policy` (derived from provider schema).
@immutable
final class ResiliencehubResiliencyPolicyHardware {
  const ResiliencehubResiliencyPolicyHardware({
    required this.rpo,
    required this.rto,
  });

  final TfArg<String> rpo;

  final TfArg<String> rto;

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'rpo': ?rpo?.toTfJson(),
    'rto': ?rto?.toTfJson(),
  };
}

/// Typed helper for the `policy.software` block of
/// `aws_resiliencehub_resiliency_policy` (derived from provider schema).
@immutable
final class ResiliencehubResiliencyPolicySoftware {
  const ResiliencehubResiliencyPolicySoftware({
    required this.rpo,
    required this.rto,
  });

  final TfArg<String> rpo;

  final TfArg<String> rto;

  @internal
  Map<String, Object?> encode() => {
    'rpo': rpo.toTfJson(),
    'rto': rto.toTfJson(),
  };
}

/// Factory wrapper for `aws_resiliencehub_resiliency_policy`.
final class AwsResiliencehubResiliencyPolicy extends Resource {
  static const String tfType = 'aws_resiliencehub_resiliency_policy';

  AwsResiliencehubResiliencyPolicy(
    super.localName, {
    ResiliencehubResiliencyPolicyDataLocationConstraint? dataLocationConstraint,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required ResiliencehubResiliencyPolicyTier tier,
    List<ResiliencehubResiliencyPolicy>? policy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_location_constraint': ?dataLocationConstraint,
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'tier': tier,
           if (policy != null)
             'policy': TfArg.literal([for (final e in policy) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubResiliencyPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsResiliencehubResiliencyPolicy>`.
  RefTo<AwsResiliencehubResiliencyPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `estimated_cost_tier` attribute.
  TfRef<String> get estimatedCostTier =>
      TfRef.attribute<String>(this, 'estimated_cost_tier');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `data_location_constraint` attribute.
  TfRef<String> get dataLocationConstraint =>
      TfRef.attribute<String>(this, 'data_location_constraint');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');
}
