import 'package:meta/meta.dart';

import 'data.dart';
import 'resource.dart';
import 'tf_arg.dart';

/// A reference to a resource of type [R], for an argument that names another
/// resource (`network`, `vpc_id`, `role_arn`, ...).
///
/// Take one from the target's `ref` getter (`vpc.ref`) and pass it as is: the
/// argument decides which attribute it emits (`self_link`, `id`, `arn`,
/// `name`), so the caller does not pick one. A data source that reads an [R]
/// has the same getter (`defaultNetwork.ref`). A value that is not a block of
/// this Stack goes through [RefTo.literal], [RefTo.variable],
/// [RefTo.expression] or, unchecked, [RefTo.arg].
///
/// [R] only exists at compile time: `RefTo<GoogleComputeSubnetwork>` is not
/// assignable to `RefTo<GoogleComputeNetwork>`, and both are the same record
/// at run time.
extension type const RefTo<R extends Resource>._(_RefSource _source) {
  /// The reference the generated `ref` getter of [resource] returns.
  const RefTo.of(R resource)
    : this._((owner: resource, attribute: null, arg: null));

  /// The reference the generated `ref` getter of a data source that reads an
  /// [R] returns.
  @internal
  const RefTo.read(Data source)
    : this._((owner: source, attribute: null, arg: null));

  /// A literal name, self-link, ID or ARN of a resource outside this Stack.
  factory RefTo.literal(String value) => RefTo.arg(TfArg.literal(value));

  /// `${var.<name>}`; declare the variable on the Stack.
  factory RefTo.variable(String name) => RefTo.arg(TfArg.variable(name));

  /// A raw Terraform expression; see [TfArg.expression].
  factory RefTo.expression(String template) =>
      RefTo.arg(TfArg.expression(template));

  /// Any string argument as a reference, unchecked: a module output, a
  /// remote-state value, a string passed in from another Stack.
  const RefTo.arg(TfArg<String> arg)
    : this._((owner: null, attribute: null, arg: arg));

  /// This reference, emitting [attribute] of the referenced block whatever
  /// the argument would pick — for a configuration that must keep emitting,
  /// say, `id` where the argument emits `self_link`. A reference built from a
  /// value ([RefTo.literal], [RefTo.arg], ...) has no attribute to pin and is
  /// returned unchanged.
  RefTo<R> pinned(String attribute) {
    final owner = _source.owner;
    if (owner == null) return this;
    return RefTo._((owner: owner, attribute: attribute, arg: null));
  }

  /// The argument value: [attribute] of the referenced block, unless the
  /// reference was built from a value or [pinned] to another attribute.
  /// Generated wrappers call this with the attribute their argument takes.
  TfArg<String> encodeAs(String attribute) {
    final arg = _source.arg;
    if (arg != null) return arg;
    final owner = _source.owner!;
    final attr = _source.attribute ?? attribute;
    return owner is Data
        ? TfRef.data<String>(owner, attr)
        : TfRef.attribute<String>(owner, attr);
  }

  /// [attribute] of the referenced block, or null for a reference built
  /// from a value. Generated wrappers fill the keys a parent shares with its
  /// child (`location`, `project`) this way when the caller sets none.
  TfArg<String>? alsoAs(String attribute) => switch (_source.owner) {
    null => null,
    final Data owner => TfRef.data<String>(owner, attribute),
    final owner => TfRef.attribute<String>(owner, attribute),
  };
}

/// A list-valued reference argument (`security_group_ids`, `subnet_ids`):
/// a literal list of [RefTo]s, or one value that is the whole list
/// (`TfArg.variable('subnet_ids')`, `TfArg.expression(...)`).
extension RefToList<R extends Resource> on TfArg<List<RefTo<R>>> {
  /// The argument value: each element's [RefTo.encodeAs] for a literal
  /// list, the value itself otherwise.
  TfArg<Object?> encodeAs(String attribute) => switch (this) {
    TfArgLiteral(:final value) => TfArg<Object?>.literal([
      for (final ref in value) ref.encodeAs(attribute),
    ]),
    final whole => whole,
  };
}

typedef _RefSource = ({
  TfAddressed? owner,
  String? attribute,
  TfArg<String>? arg,
});
