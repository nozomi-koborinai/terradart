// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_deployment`.
const Set<String> _cloudflareWorkersDeploymentSensitive = <String>{};

/// Workers Deployment enum for `strategy`.
extension type const WorkersDeploymentStrategy._(TfArg<String> _)
    implements TfArg<String> {
  WorkersDeploymentStrategy.variable(String name)
    : this._(TfArg.variable(name));
  WorkersDeploymentStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const WorkersDeploymentStrategy.arg(TfArg<String> arg) : this._(arg);

  static const percentage = WorkersDeploymentStrategy._(
    TfArgLiteral('percentage'),
  );

  static const List<WorkersDeploymentStrategy> values = [percentage];
}

/// Typed helper for the `annotations` block of
/// `cloudflare_workers_deployment` (derived from provider schema).
@immutable
final class WorkersDeploymentAnnotations {
  const WorkersDeploymentAnnotations({this.workersMessage});

  final TfArg<String>? workersMessage;

  @internal
  Map<String, Object?> encode() => {
    'workers_message': ?workersMessage?.toTfJson(),
  };
}

/// Typed helper for the `code_update_strategy` block of
/// `cloudflare_workers_deployment` (derived from provider schema).
@immutable
final class WorkersDeploymentCodeUpdateStrategy {
  const WorkersDeploymentCodeUpdateStrategy({
    this.maxDelay,
    required this.mode,
  });

  final TfArg<num>? maxDelay;

  final WorkersDeploymentMode mode;

  @internal
  Map<String, Object?> encode() => {
    'max_delay': ?maxDelay?.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const WorkersDeploymentMode._(TfArg<String> _)
    implements TfArg<String> {
  WorkersDeploymentMode.variable(String name) : this._(TfArg.variable(name));
  WorkersDeploymentMode.expression(String template)
    : this._(TfArg.expression(template));
  const WorkersDeploymentMode.arg(TfArg<String> arg) : this._(arg);

  static const immediate = WorkersDeploymentMode._(TfArgLiteral('immediate'));
  static const deferred = WorkersDeploymentMode._(TfArgLiteral('deferred'));

  static const List<WorkersDeploymentMode> values = [immediate, deferred];
}

/// Typed helper for the `versions` block of
/// `cloudflare_workers_deployment` (derived from provider schema).
@immutable
final class WorkersDeploymentVersions {
  const WorkersDeploymentVersions({
    required this.percentage,
    required this.versionId,
  });

  final TfArg<num> percentage;

  final TfArg<String> versionId;

  @internal
  Map<String, Object?> encode() => {
    'percentage': percentage.toTfJson(),
    'version_id': versionId.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_workers_deployment`.
///
/// Accepted Permissions
///
/// - `Individual Workers Admin` - `Individual Workers Content Read-Only` -
/// `Individual Workers Editor` - `Individual Workers Metadata Read-Only` -
/// `Workers Admin` - `Workers Content Read-Only` - `Workers Editor` - `Workers
/// Metadata Read-Only` - `Workers Scripts Read` - `Workers Scripts Write` -
/// `Workers Tail Read`
final class CloudflareWorkersDeployment extends Resource {
  static const String tfType = 'cloudflare_workers_deployment';

  CloudflareWorkersDeployment(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? force,
    required TfArg<String> scriptName,
    required WorkersDeploymentStrategy strategy,
    WorkersDeploymentAnnotations? annotations,
    WorkersDeploymentCodeUpdateStrategy? codeUpdateStrategy,
    required List<WorkersDeploymentVersions> versions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'force': ?force,
           'script_name': scriptName,
           'strategy': strategy,
           if (annotations != null)
             'annotations': TfArg.literal(annotations.encode()),
           if (codeUpdateStrategy != null)
             'code_update_strategy': TfArg.literal(codeUpdateStrategy.encode()),
           'versions': TfArg.literal([for (final e in versions) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWorkersDeployment>`.
  RefTo<CloudflareWorkersDeployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `author_email` attribute.
  TfRef<String> get authorEmail =>
      TfRef.attribute<String>(this, 'author_email');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `force` attribute.
  TfRef<bool> get force => TfRef.attribute<bool>(this, 'force');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptName => TfRef.attribute<String>(this, 'script_name');

  /// Reference to `strategy` attribute.
  TfRef<String> get strategy => TfRef.attribute<String>(this, 'strategy');
}
