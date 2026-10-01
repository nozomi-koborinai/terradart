// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_case_close_definition`.
const Set<String> _googleChronicleCaseCloseDefinitionSensitive = <String>{};

/// Chronicle Case Close Definition Close enum for `close_reason`.
extension type const ChronicleCaseCloseDefinitionCloseReason._(TfArg<String> _)
    implements TfArg<String> {
  ChronicleCaseCloseDefinitionCloseReason.variable(String name)
    : this._(TfArg.variable(name));
  ChronicleCaseCloseDefinitionCloseReason.expression(String template)
    : this._(TfArg.expression(template));
  const ChronicleCaseCloseDefinitionCloseReason.arg(TfArg<String> arg)
    : this._(arg);

  static const malicious = ChronicleCaseCloseDefinitionCloseReason._(
    TfArgLiteral('MALICIOUS'),
  );
  static const notMalicious = ChronicleCaseCloseDefinitionCloseReason._(
    TfArgLiteral('NOT_MALICIOUS'),
  );
  static const maintenance = ChronicleCaseCloseDefinitionCloseReason._(
    TfArgLiteral('MAINTENANCE'),
  );
  static const inconclusive = ChronicleCaseCloseDefinitionCloseReason._(
    TfArgLiteral('INCONCLUSIVE'),
  );

  static const List<ChronicleCaseCloseDefinitionCloseReason> values = [
    malicious,
    notMalicious,
    maintenance,
    inconclusive,
  ];
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

  GoogleChronicleCaseCloseDefinition(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> instance,
    required ChronicleCaseCloseDefinitionCloseReason closeReason,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `case_close_definition_id` attribute.
  TfRef<String> get caseCloseDefinitionId =>
      TfRef.attribute<String>(this, 'case_close_definition_id');

  /// Reference to `close_reason` attribute.
  TfRef<String> get closeReason =>
      TfRef.attribute<String>(this, 'close_reason');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `root_cause` attribute.
  TfRef<String> get rootCause => TfRef.attribute<String>(this, 'root_cause');
}
