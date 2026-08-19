// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_runtimeconfig_config_iam_binding`.
const Set<String> _googleRuntimeconfigConfigIamBindingSensitive = <String>{};

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
    required TfArg<String> config,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'config': config,
           'members': members,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleRuntimeconfigConfigIamBindingSensitive;
}
