// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_data_collector`.
const Set<String> _googleApigeeDataCollectorSensitive = <String>{};

/// Data type collected by `google_apigee_data_collector`.
extension type const ApigeeDataCollectorType._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeDataCollectorType.variable(String name) : this._(TfArg.variable(name));
  ApigeeDataCollectorType.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeDataCollectorType.arg(TfArg<String> arg) : this._(arg);

  static const boolean = ApigeeDataCollectorType._(TfArgLiteral('BOOLEAN'));
  static const dateTime = ApigeeDataCollectorType._(TfArgLiteral('DATETIME'));
  static const floatType = ApigeeDataCollectorType._(TfArgLiteral('FLOAT'));
  static const integer = ApigeeDataCollectorType._(TfArgLiteral('INTEGER'));
  static const string = ApigeeDataCollectorType._(TfArgLiteral('STRING'));

  static const List<ApigeeDataCollectorType> values = [
    boolean,
    dateTime,
    floatType,
    integer,
    string,
  ];
}

/// Terraform `deletion_policy` for Apigee data collectors.
extension type const ApigeeDataCollectorDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeDataCollectorDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeDataCollectorDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeDataCollectorDeletionPolicy.arg(TfArg<String> arg) : this._(arg);

  static const delete = ApigeeDataCollectorDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const abandon = ApigeeDataCollectorDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<ApigeeDataCollectorDeletionPolicy> values = [
    delete,
    abandon,
  ];
}

/// Factory wrapper for `google_apigee_data_collector`.
///
/// A `DataCollector` collects and stores data from the runtime for use in
/// Analytics custom reports or API monetization. Data collectors are scoped to
/// an Apigee organization.
final class GoogleApigeeDataCollector extends Resource {
  static const String tfType = 'google_apigee_data_collector';

  GoogleApigeeDataCollector(
    super.localName, {
    required TfArg<String> orgId,
    required TfArg<String> dataCollectorId,
    required ApigeeDataCollectorType type,
    TfArg<String>? description,
    ApigeeDataCollectorDeletionPolicy? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'data_collector_id': dataCollectorId,
           'type': type,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeDataCollectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeDataCollector>`.
  RefTo<GoogleApigeeDataCollector> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified_at` attribute.
  TfRef<String> get lastModifiedAt =>
      TfRef.attribute<String>(this, 'last_modified_at');

  /// Reference to `data_collector_id` attribute.
  TfRef<String> get dataCollectorId =>
      TfRef.attribute<String>(this, 'data_collector_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
