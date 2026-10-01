// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../logging/google_logging_log_view.dart' show GoogleLoggingLogView;

/// Sensitive field paths for `google_logging_log_view_iam_binding`.
const Set<String> _googleLoggingLogViewIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_logging_log_view_iam_binding` (derived from provider schema).
@immutable
final class LoggingLogViewIamBindingCondition {
  const LoggingLogViewIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_logging_log_view_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Logging log
/// view.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleLoggingLogViewIamMember] for additive grants.
final class GoogleLoggingLogViewIamBinding extends Resource {
  static const String tfType = 'google_logging_log_view_iam_binding';

  GoogleLoggingLogViewIamBinding(
    super.localName, {
    TfArg<String>? bucket,
    TfArg<String>? location,
    required RefTo<GoogleLoggingLogView> logView,
    TfArg<String>? parent,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    LoggingLogViewIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': ?(bucket ?? logView.alsoAs('bucket')),
           'location': ?(location ?? logView.alsoAs('location')),
           'name': logView.encodeAs('name'),
           'parent': ?(parent ?? logView.alsoAs('parent')),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogViewIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingLogViewIamBinding>`.
  RefTo<GoogleLoggingLogViewIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
