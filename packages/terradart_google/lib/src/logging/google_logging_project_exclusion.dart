// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_project_exclusion`.
const Set<String> _googleLoggingProjectExclusionSensitive = <String>{};

/// Factory wrapper for `google_logging_project_exclusion`.
///
/// Project-wide log exclusion (drops matching entries before sinks /
/// metrics). Complements inline exclusions on [GoogleLoggingProjectSink].
///
/// Example:
/// ```dart
/// GoogleLoggingProjectExclusion(
///   localName: 'drop_dns_noise',
///   name: TfArg.literal('drop-dns-noise'),
///   filter: TfArg.literal('resource.type="dns_query"'),
///   description: TfArg.literal('Skip high-volume DNS query logs.'),
/// );
/// ```
final class GoogleLoggingProjectExclusion extends Resource {
  static const String tfType = 'google_logging_project_exclusion';

  GoogleLoggingProjectExclusion({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> filter,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'filter': filter,
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingProjectExclusionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
