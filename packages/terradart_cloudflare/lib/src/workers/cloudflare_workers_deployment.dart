// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_deployment`.
const Set<String> _cloudflareWorkersDeploymentSensitive = <String>{};

/// Typed helper for the `annotations` block of
/// `cloudflare_workers_deployment` (derived from provider schema).
@immutable
final class WorkersDeploymentAnnotations {
  const WorkersDeploymentAnnotations({this.workersMessage});

  final TfArg<String>? workersMessage;

  Map<String, Object?> encode() => {
    if (workersMessage != null) 'workers_message': workersMessage!.toTfJson(),
  };
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

  Map<String, Object?> encode() => {
    'percentage': percentage.toTfJson(),
    'version_id': versionId.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_workers_deployment`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class CloudflareWorkersDeployment extends Resource {
  static const String tfType = 'cloudflare_workers_deployment';

  CloudflareWorkersDeployment({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> scriptName,
    required TfArg<String> strategy,
    WorkersDeploymentAnnotations? annotations,
    required List<WorkersDeploymentVersions> versions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'script_name': scriptName,
           'strategy': strategy,
           if (annotations != null)
             'annotations': TfArg.literal(annotations.encode()),
           'versions': TfArg.literal([for (final e in versions) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `author_email` attribute.
  TfRef<String> get authorEmail =>
      TfRef.attribute<String>(this, 'author_email');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
