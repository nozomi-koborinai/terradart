// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_document_ai_warehouse_location`.
const Set<String> _googleDocumentAiWarehouseLocationSensitive = <String>{};

/// Document Ai Warehouse Location Access Control enum for `access_control_mode`.
enum DocumentAiWarehouseLocationAccessControlMode implements TerraformEnum {
  aclModeDocumentLevelAccessControlGci(
    'ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI',
  ),
  aclModeDocumentLevelAccessControlByoid(
    'ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID',
  ),
  aclModeUniversalAccess('ACL_MODE_UNIVERSAL_ACCESS');

  const DocumentAiWarehouseLocationAccessControlMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Document Ai Warehouse Location Database enum for `database_type`.
enum DocumentAiWarehouseLocationDatabaseType implements TerraformEnum {
  dbInfraSpanner('DB_INFRA_SPANNER'),
  dbCloudSqlPostgres('DB_CLOUD_SQL_POSTGRES');

  const DocumentAiWarehouseLocationDatabaseType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Document Ai Warehouse Location Document Creator Default enum for `document_creator_default_role`.
enum DocumentAiWarehouseLocationDocumentCreatorDefaultRole
    implements TerraformEnum {
  documentAdmin('DOCUMENT_ADMIN'),
  documentEditor('DOCUMENT_EDITOR'),
  documentViewer('DOCUMENT_VIEWER');

  const DocumentAiWarehouseLocationDocumentCreatorDefaultRole(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_document_ai_warehouse_location`.
///
/// A location is used to initialize a project.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDocumentAiWarehouseLocation extends Resource {
  static const String tfType = 'google_document_ai_warehouse_location';

  GoogleDocumentAiWarehouseLocation({
    required super.localName,
    required TfArg<DocumentAiWarehouseLocationAccessControlMode>
    accessControlMode,
    required TfArg<DocumentAiWarehouseLocationDatabaseType> databaseType,
    TfArg<DocumentAiWarehouseLocationDocumentCreatorDefaultRole>?
    documentCreatorDefaultRole,
    TfArg<String>? kmsKey,
    required TfArg<String> location,
    required TfArg<String> projectNumber,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_control_mode': accessControlMode,
           'database_type': databaseType,
           if (documentCreatorDefaultRole != null)
             'document_creator_default_role': documentCreatorDefaultRole,
           if (kmsKey != null) 'kms_key': kmsKey,
           'location': location,
           'project_number': projectNumber,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDocumentAiWarehouseLocationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
