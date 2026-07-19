// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apphub_boundary`.
const Set<String> _googleApphubBoundarySensitive = <String>{};

/// Factory wrapper for `google_apphub_boundary`.
///
/// Application management boundary.
///
/// App Hub boundary — CRM node that defines the host project's App Hub
/// management boundary (typically `projects/<project-number>`).
///
/// Example:
/// ```dart
/// GoogleApphubBoundary(
///   localName: 'host',
///   location: TfArg.literal('global'),
///   crmNode: TfArg.literal('projects/${current.number.interpolation}'),
/// );
/// ```
final class GoogleApphubBoundary extends Resource {
  static const String tfType = 'google_apphub_boundary';

  GoogleApphubBoundary({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? crmNode,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (crmNode != null) 'crm_node': crmNode,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApphubBoundarySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
