// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_route53_zone`.
const Set<String> _awsRoute53ZoneSensitive = <String>{};

/// At most one of `delegation_set_id`, `vpc` on `aws_route53_zone`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.delegationSetId(...)`.
sealed class Route53ZoneVisibility {
  const Route53ZoneVisibility();

  /// Sets `delegation_set_id`.
  const factory Route53ZoneVisibility.delegationSetId(
    TfArg<String> delegationSetId,
  ) = Route53ZoneVisibilityDelegationSetId;

  /// Sets `vpc`.
  const factory Route53ZoneVisibility.vpc(List<Route53ZoneVpc> vpc) =
      Route53ZoneVisibilityVpc;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Route53ZoneVisibility.delegationSetId] choice: sets `delegation_set_id`.
final class Route53ZoneVisibilityDelegationSetId extends Route53ZoneVisibility {
  const Route53ZoneVisibilityDelegationSetId(this.delegationSetId);

  final TfArg<String> delegationSetId;

  @override
  String get blockKey => 'delegation_set_id';

  @override
  Map<String, Object?> encode() => {
    'delegation_set_id': delegationSetId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'delegation_set_id': delegationSetId,
  };
}

/// The [Route53ZoneVisibility.vpc] choice: sets `vpc`.
final class Route53ZoneVisibilityVpc extends Route53ZoneVisibility {
  const Route53ZoneVisibilityVpc(this.vpc);

  final List<Route53ZoneVpc> vpc;

  @override
  String get blockKey => 'vpc';

  @override
  Map<String, Object?> encode() => {
    'vpc': [for (final e in vpc) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vpc': TfArg.literal([for (final e in vpc) e.encode()]),
  };
}

/// Typed helper for the `vpc` block of
/// `aws_route53_zone` (derived from provider schema).
@immutable
final class Route53ZoneVpc {
  const Route53ZoneVpc({required this.vpcId, this.vpcRegion});

  final RefTo<AwsVpc> vpcId;

  final TfArg<String>? vpcRegion;

  Map<String, Object?> encode() => {
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
    'vpc_region': ?vpcRegion?.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53_zone`.
final class AwsRoute53Zone extends Resource {
  static const String tfType = 'aws_route53_zone';

  AwsRoute53Zone({
    required super.localName,
    TfArg<String>? comment,
    Route53ZoneVisibility? visibility,
    TfArg<bool>? enableAcceleratedRecovery,
    TfArg<bool>? forceDestroy,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'comment': ?comment,
           ...?visibility?.argMap,
           'enable_accelerated_recovery': ?enableAcceleratedRecovery,
           'force_destroy': ?forceDestroy,
           'name': name,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ZoneSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53Zone>`.
  RefTo<AwsRoute53Zone> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `name_servers` attribute.
  TfRef<List<String>> get nameServers =>
      TfRef.attribute<List<String>>(this, 'name_servers');

  /// Reference to `primary_name_server` attribute.
  TfRef<String> get primaryNameServer =>
      TfRef.attribute<String>(this, 'primary_name_server');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `delegation_set_id` attribute.
  TfRef<String> get delegationSetId =>
      TfRef.attribute<String>(this, 'delegation_set_id');

  /// Reference to `enable_accelerated_recovery` attribute.
  TfRef<bool> get enableAcceleratedRecovery =>
      TfRef.attribute<bool>(this, 'enable_accelerated_recovery');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
