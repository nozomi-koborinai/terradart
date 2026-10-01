// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_resiliencehubv2_service`.
const Set<String> _awsResiliencehubv2ServiceSensitive = <String>{};

/// Resiliencehubv2 Service Dependency enum for `dependency_discovery`.
enum Resiliencehubv2ServiceDependencyDiscovery implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const Resiliencehubv2ServiceDependencyDiscovery(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `associated_system` block of
/// `aws_resiliencehubv2_service` (derived from provider schema).
@immutable
final class Resiliencehubv2ServiceAssociatedSystem {
  const Resiliencehubv2ServiceAssociatedSystem({
    required this.systemArn,
    this.userJourneyIds,
  });

  final TfArg<String> systemArn;

  final TfArg<List<String>>? userJourneyIds;

  Map<String, Object?> encode() => {
    'system_arn': systemArn.toTfJson(),
    'user_journey_ids': ?userJourneyIds?.toTfJson(),
  };
}

/// Typed helper for the `permission_model` block of
/// `aws_resiliencehubv2_service` (derived from provider schema).
@immutable
final class Resiliencehubv2ServicePermissionModel {
  const Resiliencehubv2ServicePermissionModel({
    required this.invokerRoleName,
    this.crossAccountRole,
  });

  final TfArg<String> invokerRoleName;

  final List<Resiliencehubv2ServiceCrossAccountRole>? crossAccountRole;

  Map<String, Object?> encode() => {
    'invoker_role_name': invokerRoleName.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': [for (final e in crossAccountRole!) e.encode()],
  };
}

/// Typed helper for the `permission_model.cross_account_role` block of
/// `aws_resiliencehubv2_service` (derived from provider schema).
@immutable
final class Resiliencehubv2ServiceCrossAccountRole {
  const Resiliencehubv2ServiceCrossAccountRole({
    required this.crossAccountRoleArn,
    this.externalId,
  });

  final TfArg<String> crossAccountRoleArn;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'cross_account_role_arn': crossAccountRoleArn.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_resiliencehubv2_service`.
final class AwsResiliencehubv2Service extends Resource {
  static const String tfType = 'aws_resiliencehubv2_service';

  AwsResiliencehubv2Service({
    required super.localName,
    TfArg<Resiliencehubv2ServiceDependencyDiscovery>? dependencyDiscovery,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? policyArn,
    TfArg<String>? region,
    required TfArg<List<String>> regions,
    TfArg<Map<String, String>>? tags,
    List<Resiliencehubv2ServiceAssociatedSystem>? associatedSystem,
    List<Resiliencehubv2ServicePermissionModel>? permissionModel,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dependency_discovery': ?dependencyDiscovery,
           'description': ?description,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'policy_arn': ?policyArn,
           'region': ?region,
           'regions': regions,
           'tags': ?tags,
           if (associatedSystem != null)
             'associated_system': TfArg.literal([
               for (final e in associatedSystem) e.encode(),
             ]),
           if (permissionModel != null)
             'permission_model': TfArg.literal([
               for (final e in permissionModel) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2ServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsResiliencehubv2Service>`.
  RefTo<AwsResiliencehubv2Service> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `dependency_discovery` attribute.
  TfRef<String> get dependencyDiscoveryRef =>
      TfRef.attribute<String>(this, 'dependency_discovery');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `policy_arn` attribute.
  TfRef<String> get policyArnRef => TfRef.attribute<String>(this, 'policy_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regionsRef =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
