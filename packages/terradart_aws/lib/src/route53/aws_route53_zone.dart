// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_zone`.
const Set<String> _awsRoute53ZoneSensitive = <String>{};

/// Typed helper for the `vpc` block of
/// `aws_route53_zone` (derived from provider schema).
@immutable
final class Route53ZoneVpc {
  const Route53ZoneVpc({required this.vpcId, this.vpcRegion});

  final TfArg<String> vpcId;

  final TfArg<String>? vpcRegion;

  Map<String, Object?> encode() => {
    'vpc_id': vpcId.toTfJson(),
    if (vpcRegion != null) 'vpc_region': vpcRegion!.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53_zone`.
final class AwsRoute53Zone extends Resource {
  static const String tfType = 'aws_route53_zone';

  AwsRoute53Zone({
    required super.localName,
    TfArg<String>? comment,
    TfArg<String>? delegationSetId,
    TfArg<bool>? enableAcceleratedRecovery,
    TfArg<bool>? forceDestroy,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    List<Route53ZoneVpc>? vpc,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           if (delegationSetId != null) 'delegation_set_id': delegationSetId,
           if (enableAcceleratedRecovery != null)
             'enable_accelerated_recovery': enableAcceleratedRecovery,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'name': name,
           if (tags != null) 'tags': tags,
           if (vpc != null)
             'vpc': TfArg.literal([for (final e in vpc) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ZoneSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
