// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_regex_pattern_set`.
const Set<String> _awsWafv2RegexPatternSetSensitive = <String>{};

/// Wafv2 Regex Pattern Set enum for `scope`.
enum Wafv2RegexPatternSetScope implements TerraformEnum {
  cloudfront('CLOUDFRONT'),
  regional('REGIONAL');

  const Wafv2RegexPatternSetScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_wafv2_regex_pattern_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class Wafv2RegexPatternSetNameOrNamePrefix {
  const Wafv2RegexPatternSetNameOrNamePrefix();

  /// Sets `name`.
  const factory Wafv2RegexPatternSetNameOrNamePrefix.name(TfArg<String> name) =
      Wafv2RegexPatternSetNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory Wafv2RegexPatternSetNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = Wafv2RegexPatternSetNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Wafv2RegexPatternSetNameOrNamePrefix.name] choice: sets `name`.
final class Wafv2RegexPatternSetNameOrNamePrefixName
    extends Wafv2RegexPatternSetNameOrNamePrefix {
  const Wafv2RegexPatternSetNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [Wafv2RegexPatternSetNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class Wafv2RegexPatternSetNameOrNamePrefixNamePrefix
    extends Wafv2RegexPatternSetNameOrNamePrefix {
  const Wafv2RegexPatternSetNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `regular_expression` block of
/// `aws_wafv2_regex_pattern_set` (derived from provider schema).
@immutable
final class Wafv2RegexPatternSetRegularExpression {
  const Wafv2RegexPatternSetRegularExpression({required this.regexString});

  final TfArg<String> regexString;

  Map<String, Object?> encode() => {'regex_string': regexString.toTfJson()};
}

/// Factory wrapper for `aws_wafv2_regex_pattern_set`.
final class AwsWafv2RegexPatternSet extends Resource {
  static const String tfType = 'aws_wafv2_regex_pattern_set';

  AwsWafv2RegexPatternSet({
    required super.localName,
    TfArg<String>? description,
    Wafv2RegexPatternSetNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? region,
    required TfArg<Wafv2RegexPatternSetScope> scope,
    TfArg<Map<String, String>>? tags,
    List<Wafv2RegexPatternSetRegularExpression>? regularExpression,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           ...?nameOrNamePrefix?.argMap,
           if (region != null) 'region': region,
           'scope': scope,
           if (tags != null) 'tags': tags,
           if (regularExpression != null)
             'regular_expression': TfArg.literal([
               for (final e in regularExpression) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2RegexPatternSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafv2RegexPatternSet>`.
  RefTo<AwsWafv2RegexPatternSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `lock_token` attribute.
  TfRef<String> get lockToken => TfRef.attribute<String>(this, 'lock_token');
}
