// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_parameter_group`.
const Set<String> _awsDbParameterGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_db_parameter_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class DbParameterGroupNameOrNamePrefix {
  const DbParameterGroupNameOrNamePrefix();

  /// Sets `name`.
  const factory DbParameterGroupNameOrNamePrefix.name(TfArg<String> name) =
      DbParameterGroupNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory DbParameterGroupNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = DbParameterGroupNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DbParameterGroupNameOrNamePrefix.name] choice: sets `name`.
final class DbParameterGroupNameOrNamePrefixName
    extends DbParameterGroupNameOrNamePrefix {
  const DbParameterGroupNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [DbParameterGroupNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class DbParameterGroupNameOrNamePrefixNamePrefix
    extends DbParameterGroupNameOrNamePrefix {
  const DbParameterGroupNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `parameter` block of
/// `aws_db_parameter_group` (derived from provider schema).
@immutable
final class DbParameterGroupParameter {
  const DbParameterGroupParameter({
    this.applyMethod,
    required this.name,
    required this.value,
  });

  final TfArg<DbParameterGroupParameterApplyMethod>? applyMethod;

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    if (applyMethod != null) 'apply_method': applyMethod!.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `apply_method` — derived from the provider schema description.
enum DbParameterGroupParameterApplyMethod implements TerraformEnum {
  immediate('immediate'),
  pendingReboot('pending-reboot');

  const DbParameterGroupParameterApplyMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_db_parameter_group`.
final class AwsDbParameterGroup extends Resource {
  static const String tfType = 'aws_db_parameter_group';

  AwsDbParameterGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> family,
    DbParameterGroupNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    List<DbParameterGroupParameter>? parameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'family': family,
           ...?nameOrNamePrefix?.argMap,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (tags != null) 'tags': tags,
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbParameterGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
