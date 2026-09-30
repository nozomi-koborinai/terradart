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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'crm_node': ?crmNode,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApphubBoundarySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApphubBoundary>`.
  RefTo<GoogleApphubBoundary> get ref => RefTo.of(this);

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

  /// Reference to `crm_node` attribute.
  TfRef<String> get crmNodeRef => TfRef.attribute<String>(this, 'crm_node');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
