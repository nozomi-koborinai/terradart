// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_dedicated_ip_assignment`.
const Set<String> _awsSesv2DedicatedIpAssignmentSensitive = <String>{};

/// Factory wrapper for `aws_sesv2_dedicated_ip_assignment`.
final class AwsSesv2DedicatedIpAssignment extends Resource {
  static const String tfType = 'aws_sesv2_dedicated_ip_assignment';

  AwsSesv2DedicatedIpAssignment({
    required super.localName,
    required TfArg<String> destinationPoolName,
    required TfArg<String> ip,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_pool_name': destinationPoolName,
           'ip': ip,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2DedicatedIpAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2DedicatedIpAssignment>`.
  RefTo<AwsSesv2DedicatedIpAssignment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `destination_pool_name` attribute.
  TfRef<String> get destinationPoolNameRef =>
      TfRef.attribute<String>(this, 'destination_pool_name');

  /// Reference to `ip` attribute.
  TfRef<String> get ipRef => TfRef.attribute<String>(this, 'ip');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
