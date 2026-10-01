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
           'region': ?region,
           'resource_share_arn': resourceShareArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRamPrincipalAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRamPrincipalAssociation>`.
  RefTo<AwsRamPrincipalAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_share_arn` attribute.
  TfRef<String> get resourceShareArn =>
      TfRef.attribute<String>(this, 'resource_share_arn');
}
