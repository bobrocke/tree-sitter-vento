<h1>
<img align="left" width="40" src="https://raw.githubusercontent.com/ventojs/vento/main/docs/favicon.svg"></img>
tree-sitter-vento
</h1>

[![Tests](https://github.com/ventojs/tree-sitter-vento/actions/workflows/test.yml/badge.svg)](https://github.com/ventojs/tree-sitter-vento/actions/workflows/test.yml)
[![Discord](https://img.shields.io/badge/join-chat-blue?logo=discord&logoColor=white)](https://discord.gg/YbTmpACHWB)

A [tree-sitter](https://github.com/tree-sitter/tree-sitter) parser for the [Vento](https://vento.js.org/) templating language.

## Features

- **Syntax Parsing**: Full support for Vento template syntax including tags, keywords, filters, and code blocks
- **Language Injections**: Automatic language injection for:
  - HTML in content sections
  - JavaScript in code blocks
  - YAML in front matter
- **Local Scoping**: Proper variable scoping for loop variables (e.g., `for i of items`)
- **Single-Character Variables**: Support for single-character variable names like `{{ i }}`

## Queries

This parser includes the following query files:

- `highlights.scm` - Syntax highlighting rules
- `injections.scm` - Language injection rules for HTML, JavaScript, and YAML
- `locals.scm` - Local scope and variable reference tracking

### Local Scoping

The `locals.scm` query enables editors to track variable scopes, particularly useful for loop variables:

```vento
{{ for i of pages }}
  <a href="/page/{{ i }}" aria-label="Page {{ i }}">
    {{ i }}
  </a>
{{ /for }}
```

In this example, the variable `i` is properly scoped within the for loop, allowing editors to provide accurate code intelligence features like:

- Variable highlighting
- Go-to-definition
- Scope-aware autocomplete
- Unused variable detection
