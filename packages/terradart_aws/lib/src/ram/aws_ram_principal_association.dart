// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_principal_association`.
const Set<String> _awsRamPrincipalAssociationSensitive = <String>{};

/// Factory wrapper for `aws_ram_principal_association`.
final class AwsRamPrincipalAssociation extends Resource {
  static const String tfType = 'aws_ram_principal_association';

  AwsRamPrincipalAssociation({
    required super.localName,
    required TfArg<String> principal,
    TfArg<String>? region,
    required TfArg<String> resourceShareArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'principal': principal,
           if (region != null) 'region': region,
           'resource_share_arn': resourceShareArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRamPrincipalAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
