// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_securityposture_posture_deployment`.
const Set<String> _googleSecurityposturePostureDeploymentSensitive = <String>{};

/// Factory wrapper for `google_securityposture_posture_deployment`.
///
/// Represents a deployment of a security posture on a resource. A posture
/// contains user curated policy sets. A posture can be deployed on a project or
/// on a folder or on an organization. To deploy a posture we need to populate
/// the posture's name and its revision_id in the posture deployment
/// configuration. Every update to a deployed posture generates a new
/// revision_id. Thus, the updated revision_id should be used in the respective
/// posture deployment's configuration to deploy that posture on a resource.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleSecurityposturePostureDeployment extends Resource {
  static const String tfType = 'google_securityposture_posture_deployment';

  GoogleSecurityposturePostureDeployment({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> parent,
    required TfArg<String> postureDeploymentId,
    required TfArg<String> postureId,
    required TfArg<String> postureRevisionId,
    required TfArg<String> targetResource,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'location': location,
           'parent': parent,
           'posture_deployment_id': postureDeploymentId,
           'posture_id': postureId,
           'posture_revision_id': postureRevisionId,
           'target_resource': targetResource,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecurityposturePostureDeploymentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `desired_posture_id` attribute.
  TfRef<String> get desiredPostureId =>
      TfRef.attribute<String>(this, 'desired_posture_id');

  /// Reference to `desired_posture_revision_id` attribute.
  TfRef<String> get desiredPostureRevisionId =>
      TfRef.attribute<String>(this, 'desired_posture_revision_id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `failure_message` attribute.
  TfRef<String> get failureMessage =>
      TfRef.attribute<String>(this, 'failure_message');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
