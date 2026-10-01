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
sealed class DbParameterGroupName {
  const DbParameterGroupName();

  /// Sets `name`.
  const factory DbParameterGroupName.name(TfArg<String> name) =
      DbParameterGroupNameChoice;

  /// Sets `name_prefix`.
  const factory DbParameterGroupName.namePrefix(TfArg<String> namePrefix) =
      DbParameterGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DbParameterGroupName.name] choice: sets `name`.
final class DbParameterGroupNameChoice extends DbParameterGroupName {
  const DbParameterGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [DbParameterGroupName.namePrefix] choice: sets `name_prefix`.
final class DbParameterGroupNamePrefix extends DbParameterGroupName {
  const DbParameterGroupNamePrefix(this.namePrefix);

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

  final DbParameterGroupApplyMethod? applyMethod;

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'apply_method': ?applyMethod?.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `apply_method` — derived from the provider schema description.
extension type const DbParameterGroupApplyMethod._(TfArg<String> _)
    implements TfArg<String> {
  DbParameterGroupApplyMethod.variable(String name)
    : this._(TfArg.variable(name));
  DbParameterGroupApplyMethod.expression(String template)
    : this._(TfArg.expression(template));
  const DbParameterGroupApplyMethod.arg(TfArg<String> arg) : this._(arg);

  static const immediate = DbParameterGroupApplyMethod._(
    TfArgLiteral('immediate'),
  );
  static const pendingReboot = DbParameterGroupApplyMethod._(
    TfArgLiteral('pending-reboot'),
  );

  static const List<DbParameterGroupApplyMethod> values = [
    immediate,
    pendingReboot,
  ];
}

/// Factory wrapper for `aws_db_parameter_group`.
final class AwsDbParameterGroup extends Resource {
  static const String tfType = 'aws_db_parameter_group';

  AwsDbParameterGroup(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> family,
    DbParameterGroupName? name,
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
           'description': ?description,
           'family': family,
           ...?name?.argMap,
           'region': ?region,
           'skip_destroy': ?skipDestroy,
           'tags': ?tags,
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbParameterGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbParameterGroup>`.
  RefTo<AwsDbParameterGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `family` attribute.
  TfRef<String> get family => TfRef.attribute<String>(this, 'family');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
