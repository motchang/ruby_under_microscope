require 'ripper'
require 'pp'
code = <<STR
array = []
10.times.do |n|
  array << n if n < 5
end
STR

puts code

pp Ripper.lex(code)

# [[[1, 0], :on_ident, "array", EXPR_CMDARG],
#  [[1, 5], :on_sp, " ", EXPR_CMDARG],
#  [[1, 6], :on_op, "=", EXPR_BEG],
#  [[1, 7], :on_sp, " ", EXPR_BEG],
#  [[1, 8], :on_lbracket, "[", EXPR_BEG|EXPR_LABEL],
#  [[1, 9], :on_rbracket, "]", EXPR_END],
#  [[1, 10], :on_nl, "\n", EXPR_BEG],
#  [[2, 0], :on_int, "10", EXPR_END],
#  [[2, 2], :on_period, ".", EXPR_DOT],
#  [[2, 3], :on_ident, "times", EXPR_ARG],
#  [[2, 8], :on_period, ".", EXPR_DOT],
#  [[2, 9], :on_ident, "do", EXPR_ARG],
#  [[2, 11], :on_sp, " ", EXPR_ARG],
#  [[2, 12], :on_op, "|", EXPR_BEG|EXPR_LABEL],
#  [[2, 13], :on_ident, "n", EXPR_ARG],
#  [[2, 14], :on_op, "|", EXPR_BEG|EXPR_LABEL],
#  [[2, 15], :on_ignored_nl, "\n", EXPR_BEG|EXPR_LABEL],
#  [[3, 0], :on_sp, "  ", EXPR_BEG|EXPR_LABEL],
#  [[3, 2], :on_ident, "array", EXPR_END|EXPR_LABEL],
#  [[3, 7], :on_sp, " ", EXPR_END|EXPR_LABEL],
#  [[3, 8], :on_op, "<<", EXPR_BEG],
#  [[3, 10], :on_sp, " ", EXPR_BEG],
#  [[3, 11], :on_ident, "n", EXPR_ARG],
#  [[3, 12], :on_sp, " ", EXPR_ARG],
#  [[3, 13], :on_kw, "if", EXPR_BEG|EXPR_LABEL],
#  [[3, 15], :on_sp, " ", EXPR_BEG|EXPR_LABEL],
#  [[3, 16], :on_ident, "n", EXPR_CMDARG],
#  [[3, 17], :on_sp, " ", EXPR_CMDARG],
#  [[3, 18], :on_op, "<", EXPR_BEG],
#  [[3, 19], :on_sp, " ", EXPR_BEG],
#  [[3, 20], :on_int, "5", EXPR_END],
#  [[3, 21], :on_nl, "\n", EXPR_BEG],
#  [[4, 0], :on_kw, "end", EXPR_END]]
