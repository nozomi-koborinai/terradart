// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../composer/google_composer_user_workloads_secret.dart';

/// Sensitive field paths for `google_composer_user_workloads_secret`.
const Set<String> _googleComposerUserWorkloadsSecretSensitive = <String>{};

/// Factory wrapper for `google_composer_user_workloads_secret`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComposerUserWorkloadsSecret extends Data {
  static const String tfType = 'google_composer_user_workloads_secret';

  DataGoogleComposerUserWorkloadsSecret({
    required super.localName,
    required TfArg<String> environment,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'environment': environment,
           'name': name,
           'project': ?project,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComposerUserWorkloadsSecretSensitive;

  /// A reference to the `google_composer_user_workloads_secret` this data source reads, for
  /// arguments typed `RefTo<GoogleComposerUserWorkloadsSecret>`.
  RefTo<GoogleComposerUserWorkloadsSecret> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data` attribute.
  TfRef<Map<String, String>> get data =>
      TfRef.attribute<Map<String, String>>(this, 'data');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
