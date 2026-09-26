// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_resource_share`.
const Set<String> _awsRamResourceShareSensitive = <String>{};

/// Typed helper for the `resource_share_configuration` block of
/// `aws_ram_resource_share` (derived from provider schema).
@immutable
final class RamResourceShareResourceShareConfiguration {
  const RamResourceShareResourceShareConfiguration({
    this.retainSharingOnAccountLeaveOrganization,
  });

  final TfArg<bool>? retainSharingOnAccountLeaveOrganization;

  Map<String, Object?> encode() => {
    if (retainSharingOnAccountLeaveOrganization != null)
      'retain_sharing_on_account_leave_organization':
          retainSharingOnAccountLeaveOrganization!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ram_resource_share`.
final class AwsRamResourceShare extends Resource {
  static const String tfType = 'aws_ram_resource_share';

  AwsRamResourceShare({
    required super.localName,
    TfArg<bool>? allowExternalPrincipals,
    required TfArg<String> name,
    TfArg<List<String>>? permissionArns,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    RamResourceShareResourceShareConfiguration? resourceShareConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowExternalPrincipals != null)
             'allow_external_principals': allowExternalPrincipals,
           'name': name,
           if (permissionArns != null) 'permission_arns': permissionArns,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (resourceShareConfiguration != null)
             'resource_share_configuration': TfArg.literal(
               resourceShareConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRamResourceShareSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
