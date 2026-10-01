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
///
/// Pick one with a dot shorthand: `.accountId(...)`.
sealed class AmiLaunchPermissionGrantee {
  const AmiLaunchPermissionGrantee();

  /// Sets `account_id`.
  const factory AmiLaunchPermissionGrantee.accountId(TfArg<String> accountId) =
      AmiLaunchPermissionGranteeAccountId;

  /// Sets `group`.
  const factory AmiLaunchPermissionGrantee.group(
    TfArg<AmiLaunchPermissionGroup> group,
  ) = AmiLaunchPermissionGranteeGroup;

  /// Sets `organization_arn`.
  const factory AmiLaunchPermissionGrantee.organizationArn(
    TfArg<String> organizationArn,
  ) = AmiLaunchPermissionGranteeOrganizationArn;

  /// Sets `organizational_unit_arn`.
  const factory AmiLaunchPermissionGrantee.organizationalUnitArn(
    TfArg<String> organizationalUnitArn,
  ) = AmiLaunchPermissionGranteeOrganizationalUnitArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AmiLaunchPermissionGrantee.accountId] choice: sets `account_id`.
final class AmiLaunchPermissionGranteeAccountId
    extends AmiLaunchPermissionGrantee {
  const AmiLaunchPermissionGranteeAccountId(this.accountId);

  final TfArg<String> accountId;

  @override
  String get blockKey => 'account_id';

  @override
  Map<String, Object?> encode() => {'account_id': accountId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'account_id': accountId};
}

/// The [AmiLaunchPermissionGrantee.group] choice: sets `group`.
final class AmiLaunchPermissionGranteeGroup extends AmiLaunchPermissionGrantee {
  const AmiLaunchPermissionGranteeGroup(this.group);

  final TfArg<AmiLaunchPermissionGroup> group;

  @override
  String get blockKey => 'group';

  @override
  Map<String, Object?> encode() => {'group': group.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'group': group};
}

/// The [AmiLaunchPermissionGrantee.organizationArn] choice: sets `organization_arn`.
final class AmiLaunchPermissionGranteeOrganizationArn
    extends AmiLaunchPermissionGrantee {
  const AmiLaunchPermissionGranteeOrganizationArn(this.organizationArn);

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

/// The [AmiLaunchPermissionGrantee.organizationalUnitArn] choice: sets `organizational_unit_arn`.
final class AmiLaunchPermissionGranteeOrganizationalUnitArn
    extends AmiLaunchPermissionGrantee {
  const AmiLaunchPermissionGranteeOrganizationalUnitArn(
    this.organizationalUnitArn,
  );

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

  AwsAmiLaunchPermission(
    super.localName, {
    required AmiLaunchPermissionGrantee grantee,
    required TfArg<String> imageId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {...grantee.argMap, 'image_id': imageId, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsAmiLaunchPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAmiLaunchPermission>`.
  RefTo<AwsAmiLaunchPermission> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `group` attribute.
  TfRef<String> get group => TfRef.attribute<String>(this, 'group');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `organization_arn` attribute.
  TfRef<String> get organizationArn =>
      TfRef.attribute<String>(this, 'organization_arn');

  /// Reference to `organizational_unit_arn` attribute.
  TfRef<String> get organizationalUnitArn =>
      TfRef.attribute<String>(this, 'organizational_unit_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
