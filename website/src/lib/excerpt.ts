/**
 * Cuts a readable excerpt out of an example's `lib/main.dart` at build time,
 * so the landing page shows the code that `examples/` compiles and
 * terraform-validates in CI. A pattern that no longer matches fails the
 * site build instead of leaving a stale copy.
 *
 * The excerpt is: the selected imports, the Stack class header up to its
 * constructor body, then each selected constructor-body statement (a
 * statement is found by any line inside it), with `// …` wherever source
 * statements were skipped. Full-line comments are dropped.
 */
export interface ExcerptSpec {
  /** Substrings of the import lines to keep, in source order. */
  imports: string[];
  /** The class declaration line, e.g. `final class OrdersStack`. */
  stackClass: string;
  /** One substring per statement to keep, in source order. */
  statements: string[];
}

const indentOf = (line: string) => line.length - line.trimStart().length;

export function excerpt(source: string, spec: ExcerptSpec, file: string): string {
  const lines = source.split("\n");
  const fail = (what: string): never => {
    throw new Error(`excerpt(${file}): ${what} not found`);
  };

  const imports = spec.imports.map(
    (needle) =>
      lines.find((l) => l.startsWith("import ") && l.includes(needle)) ??
      fail(`import containing "${needle}"`),
  );

  const classStart = lines.findIndex((l) => l.startsWith(spec.stackClass));
  if (classStart < 0) fail(`"${spec.stackClass}"`);
  let bodyStart = classStart + 1;
  while (bodyStart < lines.length && !lines[bodyStart].trimEnd().endsWith(") {")) bodyStart++;
  if (bodyStart >= lines.length) fail("constructor body");
  const bodyIndent = 4;

  // Every top-level statement of the constructor body as [start, end].
  const statements: Array<[number, number]> = [];
  for (let i = bodyStart + 1; i < lines.length; i++) {
    const line = lines[i];
    if (line.trim() === "" || line.trim().startsWith("//")) continue;
    if (indentOf(line) < bodyIndent) break;
    if (indentOf(line) !== bodyIndent) continue;
    let end = i;
    while (!(indentOf(lines[end]) === bodyIndent && lines[end].trimEnd().endsWith(";"))) end++;
    statements.push([i, end]);
    i = end;
  }

  const picked = spec.statements.map((needle) => {
    const index = statements.findIndex(([s, e]) =>
      lines.slice(s, e + 1).some((l) => l.includes(needle)),
    );
    if (index < 0) fail(`statement containing "${needle}"`);
    return index;
  });

  const out = [...imports, ""];
  out.push(...lines.slice(classStart, bodyStart + 1));
  let next = 0;
  picked.forEach((index) => {
    if (index > next) out.push(" ".repeat(bodyIndent) + "// …");
    const [s, e] = statements[index];
    out.push(...lines.slice(s, e + 1).filter((l) => !l.trim().startsWith("//")));
    next = index + 1;
  });
  if (next < statements.length) out.push(" ".repeat(bodyIndent) + "// …");
  out.push("  }", "}");
  return out.join("\n");
}
