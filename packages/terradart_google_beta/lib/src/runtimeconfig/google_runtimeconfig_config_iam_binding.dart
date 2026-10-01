// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart' show IamPrincipal;
import '../runtimeconfig/google_runtimeconfig_config.dart'
    show GoogleRuntimeconfigConfig;

/// Sensitive field paths for `google_runtimeconfig_config_iam_binding`.
const Set<String> _googleRuntimeconfigConfigIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_runtimeconfig_config_iam_binding` (derived from provider schema).
@immutable
final class RuntimeconfigConfigIamBindingCondition {
  const RuntimeconfigConfigIamBindingCondition({
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

/// Factory wrapper for `google_runtimeconfig_config_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Runtimeconfig Config.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleRuntimeconfigConfigIamMember] for additive grants.
final class GoogleRuntimeconfigConfigIamBinding extends Resource {
  static const String tfType = 'google_runtimeconfig_config_iam_binding';

  GoogleRuntimeconfigConfigIamBinding({
    required super.localName,
    required RefTo<GoogleRuntimeconfigConfig> config,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    RuntimeconfigConfigIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'config': config.encodeAs('name'),
           'members': members,
           'project': ?(project ?? config.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleRuntimeconfigConfigIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRuntimeconfigConfigIamBinding>`.
  RefTo<GoogleRuntimeconfigConfigIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `config` attribute.
  TfRef<String> get config => TfRef.attribute<String>(this, 'config');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
