// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_custom_data_identifier`.
const Set<String> _awsMacie2CustomDataIdentifierSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_macie2_custom_data_identifier`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class Macie2CustomDataIdentifierName {
  const Macie2CustomDataIdentifierName();

  /// Sets `name`.
  const factory Macie2CustomDataIdentifierName.name(TfArg<String> name) =
      Macie2CustomDataIdentifierNameChoice;

  /// Sets `name_prefix`.
  const factory Macie2CustomDataIdentifierName.namePrefix(
    TfArg<String> namePrefix,
  ) = Macie2CustomDataIdentifierNamePrefix;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Macie2CustomDataIdentifierName.name] choice: sets `name`.
final class Macie2CustomDataIdentifierNameChoice
    extends Macie2CustomDataIdentifierName {
  const Macie2CustomDataIdentifierNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [Macie2CustomDataIdentifierName.namePrefix] choice: sets `name_prefix`.
final class Macie2CustomDataIdentifierNamePrefix
    extends Macie2CustomDataIdentifierName {
  const Macie2CustomDataIdentifierNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_macie2_custom_data_identifier`.
final class AwsMacie2CustomDataIdentifier extends Resource {
  static const String tfType = 'aws_macie2_custom_data_identifier';

  AwsMacie2CustomDataIdentifier(
    super.localName, {
    TfArg<String>? description,
    TfArg<List<String>>? ignoreWords,
    TfArg<List<String>>? keywords,
    TfArg<num>? maximumMatchDistance,
    Macie2CustomDataIdentifierName? name,
    TfArg<String>? regex,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'ignore_words': ?ignoreWords,
           'keywords': ?keywords,
           'maximum_match_distance': ?maximumMatchDistance,
           ...?name?.argMap,
           'regex': ?regex,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2CustomDataIdentifierSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMacie2CustomDataIdentifier>`.
  RefTo<AwsMacie2CustomDataIdentifier> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ignore_words` attribute.
  TfRef<List<String>> get ignoreWords =>
      TfRef.attribute<List<String>>(this, 'ignore_words');

  /// Reference to `keywords` attribute.
  TfRef<List<String>> get keywords =>
      TfRef.attribute<List<String>>(this, 'keywords');

  /// Reference to `maximum_match_distance` attribute.
  TfRef<num> get maximumMatchDistance =>
      TfRef.attribute<num>(this, 'maximum_match_distance');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `regex` attribute.
  TfRef<String> get regex => TfRef.attribute<String>(this, 'regex');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
