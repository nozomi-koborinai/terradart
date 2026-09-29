// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_hive_table_iam_member`.
const Set<String> _googleBiglakeHiveTableIamMemberSensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_table_iam_member`.
final class GoogleBiglakeHiveTableIamMember extends Resource {
  static const String tfType = 'google_biglake_hive_table_iam_member';

  GoogleBiglakeHiveTableIamMember({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> database,
    required TfArg<String> member,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'database': database,
           'member': member,
           'name': name,
           'project': ?project,
           'role': role,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveTableIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveTableIamMember>`.
  RefTo<GoogleBiglakeHiveTableIamMember> get ref => RefTo.of(this);
}
