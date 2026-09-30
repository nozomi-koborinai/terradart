// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_runtimeconfig_config_iam_member`.
const Set<String> _googleRuntimeconfigConfigIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_runtimeconfig_config_iam_member` (derived from provider schema).
@immutable
final class RuntimeconfigConfigIamMemberCondition {
  const RuntimeconfigConfigIamMemberCondition({
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

/// Factory wrapper for `google_runtimeconfig_config_iam_member`.
final class GoogleRuntimeconfigConfigIamMember extends Resource {
  static const String tfType = 'google_runtimeconfig_config_iam_member';

  GoogleRuntimeconfigConfigIamMember({
    required super.localName,
    required TfArg<String> config,
    required TfArg<String> member,
    TfArg<String>? project,
    required TfArg<String> role,
    RuntimeconfigConfigIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'config': config,
           'member': member,
           'project': ?project,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleRuntimeconfigConfigIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRuntimeconfigConfigIamMember>`.
  RefTo<GoogleRuntimeconfigConfigIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `config` attribute.
  TfRef<String> get configRef => TfRef.attribute<String>(this, 'config');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
