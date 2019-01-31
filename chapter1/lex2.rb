require 'ripper'
require 'pp'
code = <<STR
10.times.do |n|
  puts n/4+6
end
STR

puts code

pp Ripper.lex(code)

# [[[1, 0], :on_int, "10", EXPR_END],
#  [[1, 2], :on_period, ".", EXPR_DOT],
#  [[1, 3], :on_ident, "times", EXPR_ARG],
#  [[1, 8], :on_period, ".", EXPR_DOT],
#  [[1, 9], :on_ident, "do", EXPR_ARG],
#  [[1, 11], :on_sp, " ", EXPR_ARG],
#  [[1, 12], :on_op, "|", EXPR_BEG|EXPR_LABEL],
#  [[1, 13], :on_ident, "n", EXPR_ARG],
#  [[1, 14], :on_op, "|", EXPR_BEG|EXPR_LABEL],
#  [[1, 15], :on_ignored_nl, "\n", EXPR_BEG|EXPR_LABEL],
#  [[2, 0], :on_sp, "  ", EXPR_BEG|EXPR_LABEL],
#  [[2, 2], :on_ident, "puts", EXPR_ARG],
#  [[2, 6], :on_sp, " ", EXPR_ARG],
#  [[2, 7], :on_ident, "n", EXPR_ARG],
#  [[2, 8], :on_op, "/", EXPR_BEG],
#  [[2, 9], :on_int, "4", EXPR_END],
#  [[2, 10], :on_op, "+", EXPR_BEG],
#  [[2, 11], :on_int, "6", EXPR_END],
#  [[2, 12], :on_nl, "\n", EXPR_BEG],
#  [[3, 0], :on_kw, "end", EXPR_END]]
