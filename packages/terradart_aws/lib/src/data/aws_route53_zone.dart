// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_zone`.
const Set<String> _awsRoute53ZoneSensitive = <String>{};

/// Factory wrapper for `aws_route53_zone`.
final class DataAwsRoute53Zone extends Data {
  static const String tfType = 'aws_route53_zone';

  DataAwsRoute53Zone({
    required super.localName,
    TfArg<bool>? enableAcceleratedRecovery,
    TfArg<String>? name,
    TfArg<bool>? privateZone,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcId,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enableAcceleratedRecovery != null)
             'enable_accelerated_recovery': enableAcceleratedRecovery,
           if (name != null) 'name': name,
           if (privateZone != null) 'private_zone': privateZone,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
           if (zoneId != null) 'zone_id': zoneId,
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

  /// Reference to `caller_reference` attribute.
  TfRef<String> get callerReference =>
      TfRef.attribute<String>(this, 'caller_reference');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `linked_service_description` attribute.
  TfRef<String> get linkedServiceDescription =>
      TfRef.attribute<String>(this, 'linked_service_description');

  /// Reference to `linked_service_principal` attribute.
  TfRef<String> get linkedServicePrincipal =>
      TfRef.attribute<String>(this, 'linked_service_principal');

  /// Reference to `name_servers` attribute.
  TfRef<List<String>> get nameServers =>
      TfRef.attribute<List<String>>(this, 'name_servers');

  /// Reference to `primary_name_server` attribute.
  TfRef<String> get primaryNameServer =>
      TfRef.attribute<String>(this, 'primary_name_server');

  /// Reference to `resource_record_set_count` attribute.
  TfRef<num> get resourceRecordSetCount =>
      TfRef.attribute<num>(this, 'resource_record_set_count');
}
