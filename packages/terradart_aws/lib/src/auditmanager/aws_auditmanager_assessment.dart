// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_auditmanager_assessment`.
const Set<String> _awsAuditmanagerAssessmentSensitive = <String>{};

/// Typed helper for the `assessment_reports_destination` block of
/// `aws_auditmanager_assessment` (derived from provider schema).
@immutable
final class AuditmanagerAssessmentAssessmentReportsDestination {
  const AuditmanagerAssessmentAssessmentReportsDestination({
    required this.destination,
    required this.destinationType,
  });

  final TfArg<String> destination;

  final TfArg<AuditmanagerAssessmentAssessmentReportsDestinationDestinationType>
  destinationType;

  Map<String, Object?> encode() => {
    'destination': destination.toTfJson(),
    'destination_type': destinationType.toTfJson(),
  };
}

/// `destination_type` — derived from the provider schema description.
enum AuditmanagerAssessmentAssessmentReportsDestinationDestinationType
    implements TerraformEnum {
  s3('S3');

  const AuditmanagerAssessmentAssessmentReportsDestinationDestinationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `roles` block of
/// `aws_auditmanager_assessment` (derived from provider schema).
@immutable
final class AuditmanagerAssessmentRoles {
  const AuditmanagerAssessmentRoles({
    required this.roleArn,
    required this.roleType,
  });

  final RefTo<AwsIamRole> roleArn;

  final TfArg<AuditmanagerAssessmentRolesRoleType> roleType;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'role_type': roleType.toTfJson(),
  };
}

/// `role_type` — derived from the provider schema description.
enum AuditmanagerAssessmentRolesRoleType implements TerraformEnum {
  processOwner('PROCESS_OWNER'),
  resourceOwner('RESOURCE_OWNER');

  const AuditmanagerAssessmentRolesRoleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `scope` block of
/// `aws_auditmanager_assessment` (derived from provider schema).
@immutable
final class AuditmanagerAssessmentScope {
  const AuditmanagerAssessmentScope({this.awsAccounts, this.awsServices});

  final List<AuditmanagerAssessmentScopeAwsAccounts>? awsAccounts;

  final List<AuditmanagerAssessmentScopeAwsServices>? awsServices;

  Map<String, Object?> encode() => {
    if (awsAccounts != null)
      'aws_accounts': [for (final e in awsAccounts!) e.encode()],
    if (awsServices != null)
      'aws_services': [for (final e in awsServices!) e.encode()],
  };
}

/// Typed helper for the `scope.aws_accounts` block of
/// `aws_auditmanager_assessment` (derived from provider schema).
@immutable
final class AuditmanagerAssessmentScopeAwsAccounts {
  const AuditmanagerAssessmentScopeAwsAccounts({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `scope.aws_services` block of
/// `aws_auditmanager_assessment` (derived from provider schema).
@immutable
final class AuditmanagerAssessmentScopeAwsServices {
  const AuditmanagerAssessmentScopeAwsServices({required this.serviceName});

  final TfArg<String> serviceName;

  Map<String, Object?> encode() => {'service_name': serviceName.toTfJson()};
}

/// Factory wrapper for `aws_auditmanager_assessment`.
final class AwsAuditmanagerAssessment extends Resource {
  static const String tfType = 'aws_auditmanager_assessment';

  AwsAuditmanagerAssessment({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> frameworkId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AuditmanagerAssessmentAssessmentReportsDestination>?
    assessmentReportsDestination,
    List<AuditmanagerAssessmentRoles>? roles,
    List<AuditmanagerAssessmentScope>? scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'framework_id': frameworkId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (assessmentReportsDestination != null)
             'assessment_reports_destination': TfArg.literal([
               for (final e in assessmentReportsDestination) e.encode(),
             ]),
           if (roles != null)
             'roles': TfArg.literal([for (final e in roles) e.encode()]),
           if (scope != null)
             'scope': TfArg.literal([for (final e in scope) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAuditmanagerAssessmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAuditmanagerAssessment>`.
  RefTo<AwsAuditmanagerAssessment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `roles_all` attribute.
  TfRef<List<Map<String, Object?>>> get rolesAll =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'roles_all');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
