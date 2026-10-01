// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_organization_policy`.
const Set<String> _googleProjectOrganizationPolicySensitive = <String>{};

/// Typed helper for the `boolean_policy` block of
/// `google_project_organization_policy` (derived from provider schema).
@immutable
final class ProjectOrganizationPolicyBooleanPolicy {
  const ProjectOrganizationPolicyBooleanPolicy({required this.enforced});

  final TfArg<bool> enforced;

  @internal
  Map<String, Object?> encode() => {'enforced': enforced.toTfJson()};
}

/// Typed helper for the `list_policy` block of
/// `google_project_organization_policy` (derived from provider schema).
@immutable
final class ProjectOrganizationPolicyListPolicy {
  const ProjectOrganizationPolicyListPolicy({
    this.inheritFromParent,
    this.suggestedValue,
    this.allow,
    this.deny,
  });

  final TfArg<bool>? inheritFromParent;

  final TfArg<String>? suggestedValue;

  final ProjectOrganizationPolicyAllow? allow;

  final ProjectOrganizationPolicyDeny? deny;

  @internal
  Map<String, Object?> encode() => {
    'inherit_from_parent': ?inheritFromParent?.toTfJson(),
    'suggested_value': ?suggestedValue?.toTfJson(),
    'allow': ?allow?.encode(),
    'deny': ?deny?.encode(),
  };
}

/// Typed helper for the `list_policy.allow` block of
/// `google_project_organization_policy` (derived from provider schema).
@immutable
final class ProjectOrganizationPolicyAllow {
  const ProjectOrganizationPolicyAllow({this.all, this.values});

  final TfArg<bool>? all;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'all': ?all?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `list_policy.deny` block of
/// `google_project_organization_policy` (derived from provider schema).
@immutable
final class ProjectOrganizationPolicyDeny {
  const ProjectOrganizationPolicyDeny({this.all, this.values});

  final TfArg<bool>? all;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'all': ?all?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `restore_policy` block of
/// `google_project_organization_policy` (derived from provider schema).
@immutable
final class ProjectOrganizationPolicyRestorePolicy {
  const ProjectOrganizationPolicyRestorePolicy({required this.defaultCase});

  final TfArg<bool> defaultCase;

  @internal
  Map<String, Object?> encode() => {'default': defaultCase.toTfJson()};
}

/// Factory wrapper for `google_project_organization_policy`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleProjectOrganizationPolicy extends Resource {
  static const String tfType = 'google_project_organization_policy';

  GoogleProjectOrganizationPolicy(
    super.localName, {
    required TfArg<String> constraint,
    TfArg<String>? deletionPolicy,
    required TfArg<String> project,
    TfArg<num>? version,
    ProjectOrganizationPolicyBooleanPolicy? booleanPolicy,
    ProjectOrganizationPolicyListPolicy? listPolicy,
    ProjectOrganizationPolicyRestorePolicy? restorePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'constraint': constraint,
           'deletion_policy': ?deletionPolicy,
           'project': project,
           'version': ?version,
           if (booleanPolicy != null)
             'boolean_policy': TfArg.literal(booleanPolicy.encode()),
           if (listPolicy != null)
             'list_policy': TfArg.literal(listPolicy.encode()),
           if (restorePolicy != null)
             'restore_policy': TfArg.literal(restorePolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleProjectOrganizationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleProjectOrganizationPolicy>`.
  RefTo<GoogleProjectOrganizationPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `constraint` attribute.
  TfRef<String> get constraint => TfRef.attribute<String>(this, 'constraint');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
