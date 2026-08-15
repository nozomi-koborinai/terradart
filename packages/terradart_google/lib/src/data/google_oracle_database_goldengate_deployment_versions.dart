// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_goldengate_deployment_versions`.
const Set<String> _googleOracleDatabaseGoldengateDeploymentVersionsSensitive =
    <String>{};

/// Factory wrapper for `google_oracle_database_goldengate_deployment_versions`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseGoldengateDeploymentVersions extends Data {
  static const String tfType =
      'google_oracle_database_goldengate_deployment_versions';

  DataGoogleOracleDatabaseGoldengateDeploymentVersions({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseGoldengateDeploymentVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `goldengate_deployment_versions` attribute.
  TfRef<List<Map<String, Object?>>> get goldengateDeploymentVersions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'goldengate_deployment_versions',
      );
}
