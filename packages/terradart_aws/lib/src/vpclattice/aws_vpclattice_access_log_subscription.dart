// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_access_log_subscription`.
const Set<String> _awsVpclatticeAccessLogSubscriptionSensitive = <String>{};

/// Vpclattice Access Log Subscription Service Network Log enum for `service_network_log_type`.
enum VpclatticeAccessLogSubscriptionServiceNetworkLogType
    implements TerraformEnum {
  service('SERVICE'),
  resource('RESOURCE');

  const VpclatticeAccessLogSubscriptionServiceNetworkLogType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_vpclattice_access_log_subscription`.
final class AwsVpclatticeAccessLogSubscription extends Resource {
  static const String tfType = 'aws_vpclattice_access_log_subscription';

  AwsVpclatticeAccessLogSubscription({
    required super.localName,
    required TfArg<String> destinationArn,
    TfArg<String>? region,
    required TfArg<String> resourceIdentifier,
    TfArg<VpclatticeAccessLogSubscriptionServiceNetworkLogType>?
    serviceNetworkLogType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_arn': destinationArn,
           'region': ?region,
           'resource_identifier': resourceIdentifier,
           'service_network_log_type': ?serviceNetworkLogType,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpclatticeAccessLogSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeAccessLogSubscription>`.
  RefTo<AwsVpclatticeAccessLogSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `destination_arn` attribute.
  TfRef<String> get destinationArn =>
      TfRef.attribute<String>(this, 'destination_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_identifier` attribute.
  TfRef<String> get resourceIdentifier =>
      TfRef.attribute<String>(this, 'resource_identifier');

  /// Reference to `service_network_log_type` attribute.
  TfRef<String> get serviceNetworkLogType =>
      TfRef.attribute<String>(this, 'service_network_log_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
