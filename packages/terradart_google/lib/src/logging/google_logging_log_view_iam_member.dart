// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../logging/google_logging_log_view.dart' show GoogleLoggingLogView;

/// Sensitive field paths for `google_logging_log_view_iam_member`.
const Set<String> _googleLoggingLogViewIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_logging_log_view_iam_member` (derived from provider schema).
@immutable
final class LoggingLogViewIamMemberCondition {
  const LoggingLogViewIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_logging_log_view_iam_member`.
final class GoogleLoggingLogViewIamMember extends Resource {
  static const String tfType = 'google_logging_log_view_iam_member';

  GoogleLoggingLogViewIamMember({
    required super.localName,
    TfArg<String>? bucket,
    TfArg<String>? location,
    required RefTo<GoogleLoggingLogView> logView,
    TfArg<String>? parent,
    required TfArg<String> role,
    required IamPrincipal member,
    LoggingLogViewIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogViewIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingLogViewIamMember>`.
  RefTo<GoogleLoggingLogViewIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
