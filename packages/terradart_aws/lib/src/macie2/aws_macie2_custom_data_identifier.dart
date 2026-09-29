// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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
      Macie2CustomDataIdentifierNameName;

  /// Sets `name_prefix`.
  const factory Macie2CustomDataIdentifierName.namePrefix(
    TfArg<String> namePrefix,
  ) = Macie2CustomDataIdentifierNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Macie2CustomDataIdentifierName.name] choice: sets `name`.
final class Macie2CustomDataIdentifierNameName
    extends Macie2CustomDataIdentifierName {
  const Macie2CustomDataIdentifierNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [Macie2CustomDataIdentifierName.namePrefix] choice: sets `name_prefix`.
final class Macie2CustomDataIdentifierNameNamePrefix
    extends Macie2CustomDataIdentifierName {
  const Macie2CustomDataIdentifierNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_macie2_custom_data_identifier`.
final class AwsMacie2CustomDataIdentifier extends Resource {
  static const String tfType = 'aws_macie2_custom_data_identifier';

  AwsMacie2CustomDataIdentifier({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');
}
