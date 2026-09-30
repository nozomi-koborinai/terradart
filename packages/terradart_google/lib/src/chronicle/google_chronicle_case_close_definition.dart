// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_case_close_definition`.
const Set<String> _googleChronicleCaseCloseDefinitionSensitive = <String>{};

/// Chronicle Case Close Definition Close enum for `close_reason`.
enum ChronicleCaseCloseDefinitionCloseReason implements TerraformEnum {
  malicious('MALICIOUS'),
  notMalicious('NOT_MALICIOUS'),
  maintenance('MAINTENANCE'),
  inconclusive('INCONCLUSIVE');

  const ChronicleCaseCloseDefinitionCloseReason(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_chronicle_case_close_definition`.
///
/// CaseCloseDefinition provides predefined root cause options for closing
/// security cases in SecOps. These definitions ensure consistent documentation
/// and reporting across case investigations upon closure.
///
/// A Chronicle (Google SecOps) case close reason: `closeReason` is the
/// category analysts pick when closing a case and `rootCause` the
/// specific root cause offered under it.
final class GoogleChronicleCaseCloseDefinition extends Resource {
  static const String tfType = 'google_chronicle_case_close_definition';

  GoogleChronicleCaseCloseDefinition({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> instance,
    required TfArg<ChronicleCaseCloseDefinitionCloseReason> closeReason,
    required TfArg<String> rootCause,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           'close_reason': closeReason,
           'root_cause': rootCause,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleChronicleCaseCloseDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleCaseCloseDefinition>`.
  RefTo<GoogleChronicleCaseCloseDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `case_close_definition_id` attribute.
  TfRef<String> get caseCloseDefinitionId =>
      TfRef.attribute<String>(this, 'case_close_definition_id');
}
