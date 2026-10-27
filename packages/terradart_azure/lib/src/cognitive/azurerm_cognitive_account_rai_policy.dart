// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_rai_policy`.
const Set<String> _azurermCognitiveAccountRaiPolicySensitive = <String>{};

/// Cognitive Account Rai Policy enum for `mode`.
extension type const CognitiveAccountRaiPolicyMode._(TfArg<String> _)
    implements TfArg<String> {
  CognitiveAccountRaiPolicyMode.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveAccountRaiPolicyMode.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveAccountRaiPolicyMode.arg(TfArg<String> arg) : this._(arg);

  static const asynchronousFilter = CognitiveAccountRaiPolicyMode._(
    TfArgLiteral('Asynchronous_filter'),
  );
  static const blocking = CognitiveAccountRaiPolicyMode._(
    TfArgLiteral('Blocking'),
  );
  static const defaultCase = CognitiveAccountRaiPolicyMode._(
    TfArgLiteral('Default'),
  );
  static const deferred = CognitiveAccountRaiPolicyMode._(
    TfArgLiteral('Deferred'),
  );

  static const List<CognitiveAccountRaiPolicyMode> values = [
    asynchronousFilter,
    blocking,
    defaultCase,
    deferred,
  ];
}

/// Typed helper for the `content_filter` block of
/// `azurerm_cognitive_account_rai_policy` (derived from provider schema).
@immutable
final class CognitiveAccountRaiPolicyContentFilter {
  const CognitiveAccountRaiPolicyContentFilter({
    required this.blockEnabled,
    required this.filterEnabled,
    required this.name,
    this.severityThreshold,
    required this.source,
  });

  final TfArg<bool> blockEnabled;

  final TfArg<bool> filterEnabled;

  final TfArg<String> name;

  final CognitiveAccountRaiPolicySeverityThreshold? severityThreshold;

  final CognitiveAccountRaiPolicySource source;

  @internal
  Map<String, Object?> encode() => {
    'block_enabled': blockEnabled.toTfJson(),
    'filter_enabled': filterEnabled.toTfJson(),
    'name': name.toTfJson(),
    'severity_threshold': ?severityThreshold?.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// `severity_threshold` — derived from the provider schema description.
extension type const CognitiveAccountRaiPolicySeverityThreshold._(
  TfArg<String> _
) implements TfArg<String> {
  CognitiveAccountRaiPolicySeverityThreshold.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveAccountRaiPolicySeverityThreshold.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveAccountRaiPolicySeverityThreshold.arg(TfArg<String> arg)
    : this._(arg);

  static const high = CognitiveAccountRaiPolicySeverityThreshold._(
    TfArgLiteral('High'),
  );
  static const low = CognitiveAccountRaiPolicySeverityThreshold._(
    TfArgLiteral('Low'),
  );
  static const medium = CognitiveAccountRaiPolicySeverityThreshold._(
    TfArgLiteral('Medium'),
  );

  static const List<CognitiveAccountRaiPolicySeverityThreshold> values = [
    high,
    low,
    medium,
  ];
}

/// `source` — derived from the provider schema description.
extension type const CognitiveAccountRaiPolicySource._(TfArg<String> _)
    implements TfArg<String> {
  CognitiveAccountRaiPolicySource.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveAccountRaiPolicySource.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveAccountRaiPolicySource.arg(TfArg<String> arg) : this._(arg);

  static const completion = CognitiveAccountRaiPolicySource._(
    TfArgLiteral('Completion'),
  );
  static const postrun = CognitiveAccountRaiPolicySource._(
    TfArgLiteral('PostRun'),
  );
  static const posttoolcall = CognitiveAccountRaiPolicySource._(
    TfArgLiteral('PostToolCall'),
  );
  static const prerun = CognitiveAccountRaiPolicySource._(
    TfArgLiteral('PreRun'),
  );
  static const pretoolcall = CognitiveAccountRaiPolicySource._(
    TfArgLiteral('PreToolCall'),
  );
  static const prompt = CognitiveAccountRaiPolicySource._(
    TfArgLiteral('Prompt'),
  );

  static const List<CognitiveAccountRaiPolicySource> values = [
    completion,
    postrun,
    posttoolcall,
    prerun,
    pretoolcall,
    prompt,
  ];
}

/// Factory wrapper for `azurerm_cognitive_account_rai_policy`.
final class AzurermCognitiveAccountRaiPolicy extends Resource {
  static const String tfType = 'azurerm_cognitive_account_rai_policy';

  AzurermCognitiveAccountRaiPolicy(
    super.localName, {
    required TfArg<String> basePolicyName,
    required TfArg<String> cognitiveAccountId,
    CognitiveAccountRaiPolicyMode? mode,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required List<CognitiveAccountRaiPolicyContentFilter> contentFilter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'base_policy_name': basePolicyName,
           'cognitive_account_id': cognitiveAccountId,
           'mode': ?mode,
           'name': name,
           'tags': ?tags,
           'content_filter': TfArg.literal([
             for (final e in contentFilter) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCognitiveAccountRaiPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountRaiPolicy>`.
  RefTo<AzurermCognitiveAccountRaiPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `base_policy_name` attribute.
  TfRef<String> get basePolicyName =>
      TfRef.attribute<String>(this, 'base_policy_name');

  /// Reference to `cognitive_account_id` attribute.
  TfRef<String> get cognitiveAccountId =>
      TfRef.attribute<String>(this, 'cognitive_account_id');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
