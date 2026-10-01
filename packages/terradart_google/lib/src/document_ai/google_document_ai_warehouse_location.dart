// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_document_ai_warehouse_location`.
const Set<String> _googleDocumentAiWarehouseLocationSensitive = <String>{};

/// Document Ai Warehouse Location Access Control enum for `access_control_mode`.
extension type const DocumentAiWarehouseLocationAccessControlMode._(
  TfArg<String> _
) implements TfArg<String> {
  DocumentAiWarehouseLocationAccessControlMode.variable(String name)
    : this._(TfArg.variable(name));
  DocumentAiWarehouseLocationAccessControlMode.expression(String template)
    : this._(TfArg.expression(template));
  const DocumentAiWarehouseLocationAccessControlMode.arg(TfArg<String> arg)
    : this._(arg);

  static const aclModeDocumentLevelAccessControlGci =
      DocumentAiWarehouseLocationAccessControlMode._(
        TfArgLiteral('ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI'),
      );
  static const aclModeDocumentLevelAccessControlByoid =
      DocumentAiWarehouseLocationAccessControlMode._(
        TfArgLiteral('ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID'),
      );
  static const aclModeUniversalAccess =
      DocumentAiWarehouseLocationAccessControlMode._(
        TfArgLiteral('ACL_MODE_UNIVERSAL_ACCESS'),
      );

  static const List<DocumentAiWarehouseLocationAccessControlMode> values = [
    aclModeDocumentLevelAccessControlGci,
    aclModeDocumentLevelAccessControlByoid,
    aclModeUniversalAccess,
  ];
}

/// Document Ai Warehouse Location Database enum for `database_type`.
extension type const DocumentAiWarehouseLocationDatabaseType._(TfArg<String> _)
    implements TfArg<String> {
  DocumentAiWarehouseLocationDatabaseType.variable(String name)
    : this._(TfArg.variable(name));
  DocumentAiWarehouseLocationDatabaseType.expression(String template)
    : this._(TfArg.expression(template));
  const DocumentAiWarehouseLocationDatabaseType.arg(TfArg<String> arg)
    : this._(arg);

  static const dbInfraSpanner = DocumentAiWarehouseLocationDatabaseType._(
    TfArgLiteral('DB_INFRA_SPANNER'),
  );
  static const dbCloudSqlPostgres = DocumentAiWarehouseLocationDatabaseType._(
    TfArgLiteral('DB_CLOUD_SQL_POSTGRES'),
  );

  static const List<DocumentAiWarehouseLocationDatabaseType> values = [
    dbInfraSpanner,
    dbCloudSqlPostgres,
  ];
}

/// Document Ai Warehouse Location Document Creator Default enum for `document_creator_default_role`.
extension type const DocumentAiWarehouseLocationDocumentCreatorDefaultRole._(
  TfArg<String> _
) implements TfArg<String> {
  DocumentAiWarehouseLocationDocumentCreatorDefaultRole.variable(String name)
    : this._(TfArg.variable(name));
  DocumentAiWarehouseLocationDocumentCreatorDefaultRole.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DocumentAiWarehouseLocationDocumentCreatorDefaultRole.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const documentAdmin =
      DocumentAiWarehouseLocationDocumentCreatorDefaultRole._(
        TfArgLiteral('DOCUMENT_ADMIN'),
      );
  static const documentEditor =
      DocumentAiWarehouseLocationDocumentCreatorDefaultRole._(
        TfArgLiteral('DOCUMENT_EDITOR'),
      );
  static const documentViewer =
      DocumentAiWarehouseLocationDocumentCreatorDefaultRole._(
        TfArgLiteral('DOCUMENT_VIEWER'),
      );

  static const List<DocumentAiWarehouseLocationDocumentCreatorDefaultRole>
  values = [documentAdmin, documentEditor, documentViewer];
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

  GoogleDocumentAiWarehouseLocation(
    super.localName, {
    required DocumentAiWarehouseLocationAccessControlMode accessControlMode,
    required DocumentAiWarehouseLocationDatabaseType databaseType,
    DocumentAiWarehouseLocationDocumentCreatorDefaultRole?
    documentCreatorDefaultRole,
    RefTo<GoogleKmsCryptoKey>? kmsKey,
    required TfArg<String> location,
    required TfArg<String> projectNumber,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_control_mode': accessControlMode,
           'database_type': databaseType,
           'document_creator_default_role': ?documentCreatorDefaultRole,
           'kms_key': ?kmsKey?.encodeAs('id'),
           'location': location,
           'project_number': projectNumber,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDocumentAiWarehouseLocationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDocumentAiWarehouseLocation>`.
  RefTo<GoogleDocumentAiWarehouseLocation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_control_mode` attribute.
  TfRef<String> get accessControlMode =>
      TfRef.attribute<String>(this, 'access_control_mode');

  /// Reference to `database_type` attribute.
  TfRef<String> get databaseType =>
      TfRef.attribute<String>(this, 'database_type');

  /// Reference to `document_creator_default_role` attribute.
  TfRef<String> get documentCreatorDefaultRole =>
      TfRef.attribute<String>(this, 'document_creator_default_role');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project_number` attribute.
  TfRef<String> get projectNumber =>
      TfRef.attribute<String>(this, 'project_number');
}
