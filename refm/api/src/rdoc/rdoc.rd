#@since 1.9.1
require rdoc/parser/simple
require rdoc/parser/ruby
require rdoc/parser/c
#@until 1.9.2
require rdoc/parser/f95
#@end
#@since 1.9.2
#@until 1.9.3
require rdoc/parser/perl
#@end
#@end
require rdoc/stats
require fileutils
#@else
require rdoc/parsers/parse_simple
require rdoc/parsers/parse_rb
require rdoc/parsers/parse_c
require rdoc/parsers/parse_f95
require ftools
#@end
require rdoc/options
#@until 1.9.2
require rdoc/diagram
#@end
require find
require time

= reopen RDoc

== Constants

--- DOT_DOC_FILENAME -> ".document"

rdoc ���ޥ�ɤ���������ե�����̾�ΰ������񤫤줿�ե������̾�����֤��ޤ���

#@until 1.9.1
#@include(RDoc__Stats)
#@end
