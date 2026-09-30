// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_iam_member_remove`.
const Set<String> _googleProjectIamMemberRemoveSensitive = <String>{};

/// Factory wrapper for `google_project_iam_member_remove`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleProjectIamMemberRemove extends Resource {
  static const String tfType = 'google_project_iam_member_remove';

  GoogleProjectIamMemberRemove({
    required super.localName,
    required TfArg<String> member,
    required TfArg<String> project,
    required TfArg<String> role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'member': member, 'project': project, 'role': role},
       );

  @override
  Set<String> get sensitiveFields => _googleProjectIamMemberRemoveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleProjectIamMemberRemove>`.
  RefTo<GoogleProjectIamMemberRemove> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
