// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_access_log_subscription`.
const Set<String> _awsVpclatticeAccessLogSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_access_log_subscription`.
final class AwsVpclatticeAccessLogSubscription extends Resource {
  static const String tfType = 'aws_vpclattice_access_log_subscription';

  AwsVpclatticeAccessLogSubscription({
    required super.localName,
    required TfArg<String> destinationArn,
    TfArg<String>? region,
    required TfArg<String> resourceIdentifier,
    TfArg<String>? serviceNetworkLogType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_arn': destinationArn,
           if (region != null) 'region': region,
           'resource_identifier': resourceIdentifier,
           if (serviceNetworkLogType != null)
             'service_network_log_type': serviceNetworkLogType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeAccessLogSubscriptionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
