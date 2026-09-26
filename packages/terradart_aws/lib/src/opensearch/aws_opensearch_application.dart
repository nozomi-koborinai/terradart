// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_application`.
const Set<String> _awsOpensearchApplicationSensitive = <String>{};

/// Typed helper for the `app_config` block of
/// `aws_opensearch_application` (derived from provider schema).
@immutable
final class OpensearchApplicationAppConfig {
  const OpensearchApplicationAppConfig({this.key, this.value});

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
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

  Map<String, Object?> encode() => {
    if (dataSourceArn != null) 'data_source_arn': dataSourceArn!.toTfJson(),
    if (dataSourceDescription != null)
      'data_source_description': dataSourceDescription!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (iamIdentityCenterInstanceArn != null)
      'iam_identity_center_instance_arn': iamIdentityCenterInstanceArn!
          .toTfJson(),
    if (iamRoleForIdentityCenterApplicationArn != null)
      'iam_role_for_identity_center_application_arn':
          iamRoleForIdentityCenterApplicationArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearch_application`.
final class AwsOpensearchApplication extends Resource {
  static const String tfType = 'aws_opensearch_application';

  AwsOpensearchApplication({
    required super.localName,
    TfArg<String>? kmsKeyArn,
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
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
