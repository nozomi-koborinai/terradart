// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_service`.
const Set<String> _awsResiliencehubv2ServiceSensitive = <String>{};

/// Typed helper for the `associated_system` block of
/// `aws_resiliencehubv2_service` (derived from provider schema).
@immutable
final class Resiliencehubv2ServiceAssociatedSystem {
  const Resiliencehubv2ServiceAssociatedSystem({
    required this.systemArn,
    this.userJourneyIds,
  });

  final TfArg<String> systemArn;

  final TfArg<List<Object?>>? userJourneyIds;

  Map<String, Object?> encode() => {
    'system_arn': systemArn.toTfJson(),
    if (userJourneyIds != null) 'user_journey_ids': userJourneyIds!.toTfJson(),
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

  final List<Resiliencehubv2ServicePermissionModelCrossAccountRole>?
  crossAccountRole;

  Map<String, Object?> encode() => {
    'invoker_role_name': invokerRoleName.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': [for (final e in crossAccountRole!) e.encode()],
  };
}

/// Typed helper for the `permission_model.cross_account_role` block of
/// `aws_resiliencehubv2_service` (derived from provider schema).
@immutable
final class Resiliencehubv2ServicePermissionModelCrossAccountRole {
  const Resiliencehubv2ServicePermissionModelCrossAccountRole({
    required this.crossAccountRoleArn,
    this.externalId,
  });

  final TfArg<String> crossAccountRoleArn;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'cross_account_role_arn': crossAccountRoleArn.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_resiliencehubv2_service`.
final class AwsResiliencehubv2Service extends Resource {
  static const String tfType = 'aws_resiliencehubv2_service';

  AwsResiliencehubv2Service({
    required super.localName,
    TfArg<String>? dependencyDiscovery,
    TfArg<String>? description,
    TfArg<String>? kmsKeyId,
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
           if (dependencyDiscovery != null)
             'dependency_discovery': dependencyDiscovery,
           if (description != null) 'description': description,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           if (policyArn != null) 'policy_arn': policyArn,
           if (region != null) 'region': region,
           'regions': regions,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
