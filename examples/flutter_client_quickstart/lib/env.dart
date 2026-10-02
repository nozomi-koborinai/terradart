/// One deployed copy of the client stack.
///
/// `terradart apply --env dev` synthesizes [dev] into `tf-out/dev` and, after
/// apply, writes `.terradart/dart_defines.dev.json`. [prod] is the same
/// shape with its own names and state.
enum Env {
  /// The copy a developer applies and points `flutter run` at.
  dev,

  /// The copy a released app is built against.
  prod,
}
