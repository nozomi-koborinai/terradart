// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_resource_association`.
const Set<String> _awsRamResourceAssociationSensitive = <String>{};

/// Factory wrapper for `aws_ram_resource_association`.
final class AwsRamResourceAssociation extends Resource {
  static const String tfType = 'aws_ram_resource_association';

  AwsRamResourceAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required TfArg<String> resourceShareArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'resource_arn': resourceArn,
           'resource_share_arn': resourceShareArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRamResourceAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRamResourceAssociation>`.
  RefTo<AwsRamResourceAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArnRef =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `resource_share_arn` attribute.
  TfRef<String> get resourceShareArnRef =>
      TfRef.attribute<String>(this, 'resource_share_arn');
}
