// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_vpc_connection`.
const Set<String> _awsQuicksightVpcConnectionSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_vpc_connection`.
final class AwsQuicksightVpcConnection extends Resource {
  static const String tfType = 'aws_quicksight_vpc_connection';

  AwsQuicksightVpcConnection({
    required super.localName,
    TfArg<String>? awsAccountId,
    TfArg<List<String>>? dnsResolvers,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    required TfArg<List<String>> securityGroupIds,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcConnectionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           if (dnsResolvers != null) 'dns_resolvers': dnsResolvers,
           'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           'security_group_ids': securityGroupIds,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           'vpc_connection_id': vpcConnectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightVpcConnectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_status` attribute.
  TfRef<String> get availabilityStatus =>
      TfRef.attribute<String>(this, 'availability_status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
