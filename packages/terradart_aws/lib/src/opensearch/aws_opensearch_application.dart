// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_opensearch_application`.
const Set<String> _awsOpensearchApplicationSensitive = <String>{};

/// Typed helper for the `app_config` block of
/// `aws_opensearch_application` (derived from provider schema).
@immutable
final class OpensearchApplicationAppConfig {
  const OpensearchApplicationAppConfig({this.key, this.value});

  final OpensearchApplicationKey? key;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
extension type const OpensearchApplicationKey._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchApplicationKey.variable(String name) : this._(TfArg.variable(name));
  OpensearchApplicationKey.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchApplicationKey.arg(TfArg<String> arg) : this._(arg);

  static const opensearchdashboardsDashboardadminUsers =
      OpensearchApplicationKey._(
        TfArgLiteral('opensearchDashboards.dashboardAdmin.users'),
      );
  static const opensearchdashboardsDashboardadminGroups =
      OpensearchApplicationKey._(
        TfArgLiteral('opensearchDashboards.dashboardAdmin.groups'),
      );

  static const List<OpensearchApplicationKey> values = [
    opensearchdashboardsDashboardadminUsers,
    opensearchdashboardsDashboardadminGroups,
  ];
}

/// Typed helper for the `data_source` block of
/// `aws_opensearch_application` (derived from provider schema).
@immutable
final class OpensearchApplicationDataSource {
  const OpensearchApplicationDataSource({
    this.dataSourceArn,
    this.dataSourceDescription,
  });

  final TfArg<String>? dataSourceArn;

  final TfArg<String>? dataSourceDescription;

  @internal
  Map<String, Object?> encode() => {
    'data_source_arn': ?dataSourceArn?.toTfJson(),
    'data_source_description': ?dataSourceDescription?.toTfJson(),
  };
}

/// Typed helper for the `iam_identity_center_options` block of
/// `aws_opensearch_application` (derived from provider schema).
@immutable
final class OpensearchApplicationIamIdentityCenterOptions {
  const OpensearchApplicationIamIdentityCenterOptions({
    this.enabled,
    this.iamIdentityCenterInstanceArn,
    this.iamRoleForIdentityCenterApplicationArn,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? iamIdentityCenterInstanceArn;

  final TfArg<String>? iamRoleForIdentityCenterApplicationArn;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'iam_identity_center_instance_arn': ?iamIdentityCenterInstanceArn
        ?.toTfJson(),
    'iam_role_for_identity_center_application_arn':
        ?iamRoleForIdentityCenterApplicationArn?.toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearch_application`.
final class AwsOpensearchApplication extends Resource {
  static const String tfType = 'aws_opensearch_application';

  AwsOpensearchApplication(
    super.localName, {
    RefTo<AwsKmsKey>? kmsKeyArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<OpensearchApplicationAppConfig>? appConfig,
    List<OpensearchApplicationDataSource>? dataSource,
    List<OpensearchApplicationIamIdentityCenterOptions>?
    iamIdentityCenterOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (appConfig != null)
             'app_config': TfArg.literal([
               for (final e in appConfig) e.encode(),
             ]),
           if (dataSource != null)
             'data_source': TfArg.literal([
               for (final e in dataSource) e.encode(),
             ]),
           if (iamIdentityCenterOptions != null)
             'iam_identity_center_options': TfArg.literal([
               for (final e in iamIdentityCenterOptions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOpensearchApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchApplication>`.
  RefTo<AwsOpensearchApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
