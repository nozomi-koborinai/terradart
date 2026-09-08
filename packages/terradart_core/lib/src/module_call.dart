import 'lifecycle.dart';
import 'tf_arg.dart';
import 'tf_ref.dart';

/// A `module "<localName>" { ... }` call as a Dart value.
///
/// The call is a reference to a Terraform module that lives outside the
/// Stack — a local directory, a registry entry, a git URL. TerraDart does not
/// look inside it: [source] is copied verbatim, [inputs] are the module's
/// variables, and its outputs are read back as [TfRef]s.
///
/// ```dart
/// final sa = addModule(ModuleCall(
///   localName: 'sa_bff',
///   source: '../modules/service_account',
///   inputs: {'account_id': TfArg.literal('app-bff-sa')},
/// ));
/// add(GoogleProjectIamMember(
///   localName: 'bff_invoker',
///   member: TfArg.ref(sa.output<String>('member')),
///   ...
/// ));
/// ```
///
/// `terradart-migrate` generates a typed subclass per local module directory,
/// with a named parameter per `variable` block and a getter per `output`:
/// `ServiceAccountModule(localName: 'sa_bff', source: '...', accountId: ...)`
/// and `sa.member`.
///
/// `base` rather than `final` for exactly that: a subclass may narrow the
/// constructor, but the fields synth reads stay this class's.
base class ModuleCall implements TfAddressed {
  ModuleCall({
    required this.localName,
    required this.source,
    this.version,
    Map<String, TfArg<dynamic>?> inputs = const {},
    Map<String, String> providers = const {},
    this.dependsOn,
    this.count,
    this.forEach,
  })  : inputs = Map<String, TfArg<dynamic>?>.unmodifiable(inputs),
        providers = Map<String, String>.unmodifiable(providers) {
    if (localName.trim().isEmpty) {
      throw ArgumentError.value(localName, 'localName', 'must not be empty');
    }
    if (source.trim().isEmpty) {
      throw ArgumentError.value(source, 'source', 'must not be empty');
    }
    for (final name in this.inputs.keys) {
      if (reservedInputNames.contains(name)) {
        throw ArgumentError.value(
          name,
          'inputs',
          'is a module meta-argument, not an input; pass it as the '
              'matching `ModuleCall` parameter',
        );
      }
    }
  }

  /// Argument names Terraform reserves on a `module` block, so an input of
  /// the same name would silently become a meta-argument.
  static const Set<String> reservedInputNames = {
    'source',
    'version',
    'providers',
    'count',
    'for_each',
    'depends_on',
    'lifecycle',
    'provider',
  };

  /// The call's name within the Stack: `module "<localName>"`.
  final String localName;

  /// `source = "<source>"`, verbatim — a local path (relative to the
  /// directory the Stack synthesizes into), a registry address, a git URL.
  final String source;

  /// `version = "<version>"` for a registry module, or `null`.
  final String? version;

  /// The module's input variables, keyed by their Terraform name. A `null`
  /// value is dropped, like an unset resource argument.
  final Map<String, TfArg<dynamic>?> inputs;

  /// `providers = { <child name> = <this Stack's provider> }`: the child
  /// module's provider name mapped to a provider the Stack registers
  /// (`'google'`, `'google.eu'`).
  final Map<String, String> providers;

  /// Optional `depends_on = [...]`, like a resource's.
  final List<DependencyTarget>? dependsOn;

  /// Optional `count = <n>`. The call's instances are then addressed
  /// `module.<localName>[0]`, which no [output] of this object spells — read
  /// an instance with `TfArg.expression`.
  final TfArg<num>? count;

  /// Optional `for_each = <collection>`. Same addressing caveat as [count].
  final TfArg<Object?>? forEach;

  @override
  String get tfAddress => 'module.$localName';

  /// `${module.<localName>.<name>}`: one of the module's outputs.
  ///
  /// Terraform module outputs carry no declared type, so the caller picks
  /// `T` — it is phantom, and the emitted Terraform is the same either way.
  TfRef<T> output<T>(String name) => TfRef.attribute<T>(this, name);

  @override
  String toString() => 'ModuleCall($localName, source: $source)';
}

/// A `ModuleCall` registered twice under one name.
final class DuplicateModuleError extends Error {
  DuplicateModuleError(this.localName);

  final String localName;

  @override
  String toString() =>
      'DuplicateModuleError: module "$localName" is already registered on '
      'this Stack. Every `module` block needs its own name — Terraform '
      'addresses it as `module.$localName`.';
}
