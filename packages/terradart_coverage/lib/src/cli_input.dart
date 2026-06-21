/// How `terradart-coverage` should obtain its `terraform show -json` document,
/// resolved from the CLI arguments and whether stdin is interactive.
sealed class CoverageInput {
  const CoverageInput();
}

/// Run terraform in [dir] — an explicit `--dir`, or the current directory when
/// the command is run with nothing piped in.
final class DirectoryInput extends CoverageInput {
  const DirectoryInput(this.dir);
  final String dir;
}

/// Read a `terraform show -json` document from the file at [path].
final class FileInput extends CoverageInput {
  const FileInput(this.path);
  final String path;
}

/// Read a `terraform show -json` document piped to stdin.
final class StdinInput extends CoverageInput {
  const StdinInput();
}

/// Resolves the input source from CLI state.
///
/// Precedence: explicit `--dir`, then a file argument, then — with nothing
/// piped in (stdin is a terminal) — the current directory, else piped stdin.
///
/// Defaulting a bare invocation to the current directory mirrors `terraform`
/// itself (operate on the directory you are in) and avoids blocking on stdin
/// when the command is run interactively.
CoverageInput resolveInput({
  required String? dirOption,
  required String? fileArg,
  required bool stdinIsTerminal,
}) {
  if (dirOption != null) return DirectoryInput(dirOption);
  if (fileArg != null) return FileInput(fileArg);
  if (stdinIsTerminal) return const DirectoryInput('.');
  return const StdinInput();
}
