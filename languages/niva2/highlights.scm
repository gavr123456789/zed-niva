

(pragma) @annotation

(number) @number

(string) @string
(symbol) @string
(character) @string
(comment) @comment

(identifier) @variable
(block_argument) @variable

";" @punctuation
"." @punctuation

[
  "true"
  "false"
  "type"
  "union"
  "enum"
  "errordomain"
  "null"
] @keyword

[
  "ifTrue"
  "ifFalse"
] @keyword

[
  "=>"
  "|=>"
  "|>"
  "->"
  "<-"
] @keyword

; (unary_message (_) (unary_identifier) @variable.part)
; (binary_operator) @variable.part
; (keyword) @variable.part



; (pragma_keyword_selector) @structure.part
; (pragma_unary_selector) @structure.part

; ["^" "[" "]" "{" "}"] @important

; ["(" ")"] @punctuation

; (keyword_selector (keyword) @major_declaration.part) @structure.part
; (binary_selector (binary_operator) @major_declaration.part) @structure.part
; (unary_selector (unary_identifier) @major_declaration.part) @structure.part

; [(pragma_keyword_selector) (pragma_unary_selector) (binary_selector) ] @structure.part

; (temporaries) @punctuation.part
; (temporaries (identifier) @punctuation)
