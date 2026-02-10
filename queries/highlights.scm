(comment) @comment @spell

(front_matter_delimiter) @punctuation.delimiter

; Control flow keywords
(if_tag_start) @keyword.control.conditional
(if_tag_end) @keyword.control.conditional
(else_if_tag) @keyword.control.conditional
(else_tag) @keyword.control.conditional
(for_tag_start) @keyword.control.repeat
(for_tag_end) @keyword.control.repeat

; Layout and composition
(layout_tag_start) @keyword.control
(layout_tag_end) @keyword.control
(slot_tag_start) @keyword
(slot_tag_end) @keyword
(default_tag_start) @keyword
(default_tag_end) @keyword

; Variables and output
(set_tag) @keyword
(set_tag_start) @keyword
(set_tag_end) @keyword
(echo_tag) @keyword

; Imports and exports
(import_tag) @keyword.control.import
(export_tag) @keyword.control.export
(export_tag_start) @keyword.control.export
(export_tag_end) @keyword.control.export
(include_tag) @keyword.control.import

; Functions
(function_tag_start) @keyword.function
(function_tag_end) @keyword.function

; Fragments (plugin)
(fragment_tag_start) @keyword
(fragment_tag_end) @keyword

; Special tags
(javascript_tag) @keyword

; Tag delimiters
["{{" "{{-" "{{>" "{{->" "{{#" "{{#-"] @punctuation.bracket
["}}" "-}}" "#}}" "-#}}"] @punctuation.bracket

; Operators
("|>") @operator
["=" "," "of"] @operator

; Identifiers
(identifier) @variable

; Code blocks (disable highlighting to allow injection)
(code) @none
