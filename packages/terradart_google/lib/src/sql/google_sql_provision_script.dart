// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_provision_script`.
const Set<String> _googleSqlProvisionScriptSensitive = <String>{};

/// Factory wrapper for `google_sql_provision_script`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleSqlProvisionScript extends Resource {
  static const String tfType = 'google_sql_provision_script';

  GoogleSqlProvisionScript({
    required super.localName,
    TfArg<String>? database,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> instance,
    TfArg<String>? project,
    required TfArg<String> script,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (database != null) 'database': database,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'instance': instance,
           if (project != null) 'project': project,
           'script': script,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlProvisionScriptSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
