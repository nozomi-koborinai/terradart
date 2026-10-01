// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_fleet_stack_association`.
const Set<String> _awsAppstreamFleetStackAssociationSensitive = <String>{};

/// Factory wrapper for `aws_appstream_fleet_stack_association`.
final class AwsAppstreamFleetStackAssociation extends Resource {
  static const String tfType = 'aws_appstream_fleet_stack_association';

  AwsAppstreamFleetStackAssociation({
    required super.localName,
    required TfArg<String> fleetName,
    TfArg<String>? region,
    required TfArg<String> stackName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fleet_name': fleetName,
           'region': ?region,
           'stack_name': stackName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAppstreamFleetStackAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppstreamFleetStackAssociation>`.
  RefTo<AwsAppstreamFleetStackAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fleet_name` attribute.
  TfRef<String> get fleetName => TfRef.attribute<String>(this, 'fleet_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `stack_name` attribute.
  TfRef<String> get stackName => TfRef.attribute<String>(this, 'stack_name');
}
