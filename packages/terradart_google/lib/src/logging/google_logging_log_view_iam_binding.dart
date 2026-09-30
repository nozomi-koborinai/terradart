// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleLoggingLogViewIamBinding({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? location,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    LoggingLogViewIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'location': ?location,
           'name': name,
           'parent': parent,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
