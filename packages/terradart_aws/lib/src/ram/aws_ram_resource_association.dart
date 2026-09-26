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
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
           'resource_share_arn': resourceShareArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRamResourceAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
