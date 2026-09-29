// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../project/google_project_service.dart';

/// Sensitive field paths for `google_project_service`.
const Set<String> _googleProjectServiceSensitive = <String>{};

/// Factory wrapper for `google_project_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleProjectService extends Data {
  static const String tfType = 'google_project_service';

  DataGoogleProjectService({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> service,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'project': ?project, 'service': service},
       );

  @override
  Set<String> get sensitiveFields => _googleProjectServiceSensitive;

  /// A reference to the `google_project_service` this data source reads, for
  /// arguments typed `RefTo<GoogleProjectService>`.
  RefTo<GoogleProjectService> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable_dependent_services` attribute.
  TfRef<bool> get disableDependentServices =>
      TfRef.attribute<bool>(this, 'disable_dependent_services');

  /// Reference to `disable_on_destroy` attribute.
  TfRef<bool> get disableOnDestroy =>
      TfRef.attribute<bool>(this, 'disable_on_destroy');
}
