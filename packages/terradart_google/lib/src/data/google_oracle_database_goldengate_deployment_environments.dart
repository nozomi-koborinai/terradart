// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_goldengate_deployment_environments`.
const Set<String>
_googleOracleDatabaseGoldengateDeploymentEnvironmentsSensitive = <String>{};

/// Factory wrapper for `google_oracle_database_goldengate_deployment_environments`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseGoldengateDeploymentEnvironments
    extends Data {
  static const String tfType =
      'google_oracle_database_goldengate_deployment_environments';

  DataGoogleOracleDatabaseGoldengateDeploymentEnvironments({
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
      _googleOracleDatabaseGoldengateDeploymentEnvironmentsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `goldengate_deployment_environments` attribute.
  TfRef<List<Map<String, Object?>>> get goldengateDeploymentEnvironments =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'goldengate_deployment_environments',
      );
}
