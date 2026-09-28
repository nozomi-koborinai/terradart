// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ami_launch_permission`.
const Set<String> _awsAmiLaunchPermissionSensitive = <String>{};

/// Ami Launch Permission enum for `group`.
enum AmiLaunchPermissionGroup implements TerraformEnum {
  all('all');

  const AmiLaunchPermissionGroup(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `account_id`, `group`, `organization_arn`, `organizational_unit_arn` on `aws_ami_launch_permission`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn {
  const AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `account_id` (one of the [AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn] choices).
final class AmiLaunchPermissionAccountIdOption
    extends
        AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn {
  const AmiLaunchPermissionAccountIdOption({required this.accountId});

  final TfArg<String> accountId;

  @override
  String get blockKey => 'account_id';

  @override
  Map<String, Object?> encode() => {'account_id': accountId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'account_id': accountId};
}

/// Sets `group` (one of the [AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn] choices).
final class AmiLaunchPermissionGroupOption
    extends
        AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn {
  const AmiLaunchPermissionGroupOption({required this.group});

  final TfArg<AmiLaunchPermissionGroup> group;

  @override
  String get blockKey => 'group';

  @override
  Map<String, Object?> encode() => {'group': group.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'group': group};
}

/// Sets `organization_arn` (one of the [AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn] choices).
final class AmiLaunchPermissionOrganizationArnOption
    extends
        AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn {
  const AmiLaunchPermissionOrganizationArnOption({
    required this.organizationArn,
  });

  final TfArg<String> organizationArn;

  @override
  String get blockKey => 'organization_arn';

  @override
  Map<String, Object?> encode() => {
    'organization_arn': organizationArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'organization_arn': organizationArn,
  };
}

/// Sets `organizational_unit_arn` (one of the [AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn] choices).
final class AmiLaunchPermissionOrganizationalUnitArnOption
    extends
        AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn {
  const AmiLaunchPermissionOrganizationalUnitArnOption({
    required this.organizationalUnitArn,
  });

  final TfArg<String> organizationalUnitArn;

  @override
  String get blockKey => 'organizational_unit_arn';

  @override
  Map<String, Object?> encode() => {
    'organizational_unit_arn': organizationalUnitArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'organizational_unit_arn': organizationalUnitArn,
  };
}

/// Factory wrapper for `aws_ami_launch_permission`.
final class AwsAmiLaunchPermission extends Resource {
  static const String tfType = 'aws_ami_launch_permission';

  AwsAmiLaunchPermission({
    required super.localName,
    required AmiLaunchPermissionAccountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn
    accountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn,
    required TfArg<String> imageId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...accountIdOrGroupOrOrganizationArnOrOrganizationalUnitArn.argMap,
           'image_id': imageId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmiLaunchPermissionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
