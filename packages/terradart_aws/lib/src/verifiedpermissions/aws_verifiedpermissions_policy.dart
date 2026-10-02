// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedpermissions_policy`.
const Set<String> _awsVerifiedpermissionsPolicySensitive = <String>{};

/// Typed helper for the `definition` block of
/// `aws_verifiedpermissions_policy` (derived from provider schema).
@immutable
final class VerifiedpermissionsPolicyDefinition {
  const VerifiedpermissionsPolicyDefinition({this.static, this.templateLinked});

  final List<VerifiedpermissionsPolicyStatic>? static;

  final List<VerifiedpermissionsPolicyTemplateLinked>? templateLinked;

  @internal
  Map<String, Object?> encode() => {
    if (static != null) 'static': [for (final e in static!) e.encode()],
    if (templateLinked != null)
      'template_linked': [for (final e in templateLinked!) e.encode()],
  };
}

/// Typed helper for the `definition.static` block of
/// `aws_verifiedpermissions_policy` (derived from provider schema).
@immutable
final class VerifiedpermissionsPolicyStatic {
  const VerifiedpermissionsPolicyStatic({
    this.description,
    required this.statement,
  });

  final TfArg<String>? description;

  final TfArg<String> statement;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'statement': statement.toTfJson(),
  };
}

/// Typed helper for the `definition.template_linked` block of
/// `aws_verifiedpermissions_policy` (derived from provider schema).
@immutable
final class VerifiedpermissionsPolicyTemplateLinked {
  const VerifiedpermissionsPolicyTemplateLinked({
    required this.policyTemplateId,
    this.principal,
    this.resource,
  });

  final TfArg<String> policyTemplateId;

  final List<VerifiedpermissionsPolicyPrincipal>? principal;

  final List<VerifiedpermissionsPolicyResource>? resource;

  @internal
  Map<String, Object?> encode() => {
    'policy_template_id': policyTemplateId.toTfJson(),
    if (principal != null)
      'principal': [for (final e in principal!) e.encode()],
    if (resource != null) 'resource': [for (final e in resource!) e.encode()],
  };
}

/// Typed helper for the `definition.template_linked.principal` block of
/// `aws_verifiedpermissions_policy` (derived from provider schema).
@immutable
final class VerifiedpermissionsPolicyPrincipal {
  const VerifiedpermissionsPolicyPrincipal({
    required this.entityId,
    required this.entityType,
  });

  final TfArg<String> entityId;

  final TfArg<String> entityType;

  @internal
  Map<String, Object?> encode() => {
    'entity_id': entityId.toTfJson(),
    'entity_type': entityType.toTfJson(),
  };
}

/// Typed helper for the `definition.template_linked.resource` block of
/// `aws_verifiedpermissions_policy` (derived from provider schema).
@immutable
final class VerifiedpermissionsPolicyResource {
  const VerifiedpermissionsPolicyResource({
    required this.entityId,
    required this.entityType,
  });

  final TfArg<String> entityId;

  final TfArg<String> entityType;

  @internal
  Map<String, Object?> encode() => {
    'entity_id': entityId.toTfJson(),
    'entity_type': entityType.toTfJson(),
  };
}

/// Factory wrapper for `aws_verifiedpermissions_policy`.
final class AwsVerifiedpermissionsPolicy extends Resource {
  static const String tfType = 'aws_verifiedpermissions_policy';

  AwsVerifiedpermissionsPolicy(
    super.localName, {
    required TfArg<String> policyStoreId,
    TfArg<String>? region,
    List<VerifiedpermissionsPolicyDefinition>? definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_store_id': policyStoreId,
           'region': ?region,
           if (definition != null)
             'definition': TfArg.literal([
               for (final e in definition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVerifiedpermissionsPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVerifiedpermissionsPolicy>`.
  RefTo<AwsVerifiedpermissionsPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `policy_store_id` attribute.
  TfRef<String> get policyStoreId =>
      TfRef.attribute<String>(this, 'policy_store_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
