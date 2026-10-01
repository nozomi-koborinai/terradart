// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_deployment_manager_deployment`.
const Set<String> _googleDeploymentManagerDeploymentSensitive = <String>{};

/// Deployment Manager Deployment Create enum for `create_policy`.
extension type const DeploymentManagerDeploymentCreatePolicy._(TfArg<String> _)
    implements TfArg<String> {
  DeploymentManagerDeploymentCreatePolicy.variable(String name)
    : this._(TfArg.variable(name));
  DeploymentManagerDeploymentCreatePolicy.expression(String template)
    : this._(TfArg.expression(template));
  const DeploymentManagerDeploymentCreatePolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const acquire = DeploymentManagerDeploymentCreatePolicy._(
    TfArgLiteral('ACQUIRE'),
  );
  static const createOrAcquire = DeploymentManagerDeploymentCreatePolicy._(
    TfArgLiteral('CREATE_OR_ACQUIRE'),
  );

  static const List<DeploymentManagerDeploymentCreatePolicy> values = [
    acquire,
    createOrAcquire,
  ];
}

/// Deployment Manager Deployment Delete enum for `delete_policy`.
extension type const DeploymentManagerDeploymentDeletePolicy._(TfArg<String> _)
    implements TfArg<String> {
  DeploymentManagerDeploymentDeletePolicy.variable(String name)
    : this._(TfArg.variable(name));
  DeploymentManagerDeploymentDeletePolicy.expression(String template)
    : this._(TfArg.expression(template));
  const DeploymentManagerDeploymentDeletePolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const abandon = DeploymentManagerDeploymentDeletePolicy._(
    TfArgLiteral('ABANDON'),
  );
  static const delete = DeploymentManagerDeploymentDeletePolicy._(
    TfArgLiteral('DELETE'),
  );

  static const List<DeploymentManagerDeploymentDeletePolicy> values = [
    abandon,
    delete,
  ];
}

/// Typed helper for the `labels` block of
/// `google_deployment_manager_deployment` (derived from provider schema).
@immutable
final class DeploymentManagerDeploymentLabels {
  const DeploymentManagerDeploymentLabels({this.key, this.value});

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `target` block of
/// `google_deployment_manager_deployment` (derived from provider schema).
@immutable
final class DeploymentManagerDeploymentTarget {
  const DeploymentManagerDeploymentTarget({required this.config, this.imports});

  final DeploymentManagerDeploymentConfig config;

  final List<DeploymentManagerDeploymentImports>? imports;

  Map<String, Object?> encode() => {
    'config': config.encode(),
    if (imports != null) 'imports': [for (final e in imports!) e.encode()],
  };
}

/// Typed helper for the `target.config` block of
/// `google_deployment_manager_deployment` (derived from provider schema).
@immutable
final class DeploymentManagerDeploymentConfig {
  const DeploymentManagerDeploymentConfig({required this.content});

  final TfArg<String> content;

  Map<String, Object?> encode() => {'content': content.toTfJson()};
}

/// Typed helper for the `target.imports` block of
/// `google_deployment_manager_deployment` (derived from provider schema).
@immutable
final class DeploymentManagerDeploymentImports {
  const DeploymentManagerDeploymentImports({this.content, this.name});

  final TfArg<String>? content;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Factory wrapper for `google_deployment_manager_deployment`.
///
/// A collection of resources that are deployed and managed together using a
/// configuration file
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDeploymentManagerDeployment extends Resource {
  static const String tfType = 'google_deployment_manager_deployment';

  GoogleDeploymentManagerDeployment(
    super.localName, {
    DeploymentManagerDeploymentCreatePolicy? createPolicy,
    DeploymentManagerDeploymentDeletePolicy? deletePolicy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<bool>? preview,
    TfArg<String>? project,
    List<DeploymentManagerDeploymentLabels>? labels,
    required DeploymentManagerDeploymentTarget target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_policy': ?createPolicy,
           'delete_policy': ?deletePolicy,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'name': name,
           'preview': ?preview,
           'project': ?project,
           if (labels != null)
             'labels': TfArg.literal([for (final e in labels) e.encode()]),
           'target': TfArg.literal(target.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDeploymentManagerDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDeploymentManagerDeployment>`.
  RefTo<GoogleDeploymentManagerDeployment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `manifest` attribute.
  TfRef<String> get manifest => TfRef.attribute<String>(this, 'manifest');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `create_policy` attribute.
  TfRef<String> get createPolicy =>
      TfRef.attribute<String>(this, 'create_policy');

  /// Reference to `delete_policy` attribute.
  TfRef<String> get deletePolicy =>
      TfRef.attribute<String>(this, 'delete_policy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `preview` attribute.
  TfRef<bool> get preview => TfRef.attribute<bool>(this, 'preview');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
