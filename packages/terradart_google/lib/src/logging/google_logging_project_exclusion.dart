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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'filter': filter,
           'description': ?description,
           'disabled': ?disabled,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingProjectExclusionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingProjectExclusion>`.
  RefTo<GoogleLoggingProjectExclusion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
