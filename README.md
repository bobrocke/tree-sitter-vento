<h1>
<img align="left" width="40" src="https://raw.githubusercontent.com/ventojs/vento/main/docs/favicon.svg"></img>
tree-sitter-vento
</h1>

[![Tests](https://github.com/ventojs/tree-sitter-vento/actions/workflows/test.yml/badge.svg)](https://github.com/ventojs/tree-sitter-vento/actions/workflows/test.yml)
[![Discord](https://img.shields.io/badge/join-chat-blue?logo=discord&logoColor=white)](https://discord.gg/YbTmpACHWB)

A [tree-sitter](https://github.com/tree-sitter/tree-sitter) parser for the [Vento](https://vento.js.org/) templating language.

## Features

- Full support for Vento template syntax
- YAML front matter parsing with language injection
- JavaScript code injection for dynamic expressions
- HTML content injection for template markup
- Syntax highlighting for all Vento constructs

### Front Matter Support

The parser supports YAML front matter at the beginning of Vento templates:

```vento
---
title: My Page
date: 2024-01-01
tags:
  - vento
  - template
---

<h1>{{ title }}</h1>
```

The YAML content within the front matter delimiters (`---`) will be properly injected and highlighted as YAML.
