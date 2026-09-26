// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elb`.
const Set<String> _awsElbSensitive = <String>{};

/// Factory wrapper for `aws_elb`.
final class DataAwsElb extends Data {
  static const String tfType = 'aws_elb';

  DataAwsElb({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElbSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_logs` attribute.
  TfRef<List<Map<String, Object?>>> get accessLogs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_logs');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `connection_draining` attribute.
  TfRef<bool> get connectionDraining =>
      TfRef.attribute<bool>(this, 'connection_draining');

  /// Reference to `connection_draining_timeout` attribute.
  TfRef<num> get connectionDrainingTimeout =>
      TfRef.attribute<num>(this, 'connection_draining_timeout');

  /// Reference to `cross_zone_load_balancing` attribute.
  TfRef<bool> get crossZoneLoadBalancing =>
      TfRef.attribute<bool>(this, 'cross_zone_load_balancing');

  /// Reference to `desync_mitigation_mode` attribute.
  TfRef<String> get desyncMitigationMode =>
      TfRef.attribute<String>(this, 'desync_mitigation_mode');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `health_check` attribute.
  TfRef<List<Map<String, Object?>>> get healthCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'health_check');

  /// Reference to `idle_timeout` attribute.
  TfRef<num> get idleTimeout => TfRef.attribute<num>(this, 'idle_timeout');

  /// Reference to `instances` attribute.
  TfRef<List<String>> get instances =>
      TfRef.attribute<List<String>>(this, 'instances');

  /// Reference to `internal` attribute.
  TfRef<bool> get internal => TfRef.attribute<bool>(this, 'internal');

  /// Reference to `listener` attribute.
  TfRef<List<Map<String, Object?>>> get listener =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'listener');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `source_security_group` attribute.
  TfRef<String> get sourceSecurityGroup =>
      TfRef.attribute<String>(this, 'source_security_group');

  /// Reference to `source_security_group_id` attribute.
  TfRef<String> get sourceSecurityGroupId =>
      TfRef.attribute<String>(this, 'source_security_group_id');

  /// Reference to `subnets` attribute.
  TfRef<List<String>> get subnets =>
      TfRef.attribute<List<String>>(this, 'subnets');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
