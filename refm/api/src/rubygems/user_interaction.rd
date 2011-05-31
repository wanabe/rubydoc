
�桼���ȤΤ��Ȥ��Ԥ��饤�֥��Ǥ���

= module Gem::DefaultUserInteraction

���Υ⥸�塼��ϥǥե���Ȥ� [[c:Gem::UserInteraction]] ��������Ƥ��ޤ���

== Singleton Methods

--- ui -> Gem::ConsoleUI

�ǥե���Ȥ� UI ���֤��ޤ���

--- ui=(new_ui)

�ǥե���Ȥ� UI �򿷤������åȤ��ޤ���

�ǥե���Ȥ� UI �����Τ˥��åȤ������Ȥ��ʤ���С�����ץ�ʥ��󥽡���١�����
[[c:Gem::UserInteraction]] ��ưŪ�˻��Ѥ��ޤ���

@param new_ui ������ UI ����ꤷ�ޤ���

--- use_ui(new_ui){ ... }
#@# -> discard

Ϳ����줿�֥�å���ɾ�����Ƥ���֤��� UI �Ȥ��� new_ui ����Ѥ��ޤ���

@param new_ui ������ UI ����ꤷ�ޤ���

== Public Instance Methods

--- ui -> Gem::ConsoleUI

�ǥե���Ȥ� UI ���֤��ޤ���

@see [[m:Gem::DefaultUserInteraction.#ui]]

--- ui=(new_ui)

�ǥե���Ȥ� UI �򿷤������åȤ��ޤ���

@param new_ui ������ UI ����ꤷ�ޤ���

@see [[m:Gem::DefaultUserInteraction.#ui=]]

--- use_ui(new_ui){ ... }
#@# -> discard

Ϳ����줿�֥�å���ɾ�����Ƥ���֤��� UI �Ȥ��� new_ui ����Ѥ��ޤ���

@param new_ui ������ UI ����ꤷ�ޤ���

@see [[m:Gem::DefaultUserInteraction.#use_ui]]

= module Gem::UserInteraction
include Gem::DefaultUserInteraction

�ǥե���� UI �˥����������䤹�����뤿��Υ⥸�塼��Ǥ���

���Υ⥸�塼���ͳ�ǸƤӽФ��줿�᥽�åɤ����� UI �μ������饹�ؽ�����Ѿ����ޤ���

#@# �����Υ�åѡ������󥿡��ե�������

== Public Instance Methods

--- alert(*args) -> ()

INFO ��٥�Υ��顼�Ȥ���Ϥ��ޤ���

@param args �Ѿ���Υ᥽�åɤ�Ϳ��������Ǥ���

--- alert_error(*args) -> ()

ERROR ��٥�Υ��顼�Ȥ���Ϥ��ޤ���

@param args �Ѿ���Υ᥽�åɤ�Ϳ��������Ǥ���

--- alert_warning(*args) -> ()

WARNING ��٥�Υ��顼�Ȥ���Ϥ��ޤ���

@param args �Ѿ���Υ᥽�åɤ�Ϳ��������Ǥ���

--- ask(*args) -> String

����򤷤ơ��桼�������Ϥ��Ԥ������Ʋ������֤��ޤ���

@param args �Ѿ���Υ᥽�åɤ�Ϳ��������Ǥ���

--- ask_yes_no(*args) -> bool

���������Ρ������������򤷤ޤ���

@param args �Ѿ���Υ᥽�åɤ�Ϳ��������Ǥ���

@return �桼���β������������ξ��Ͽ��򡢥Ρ��ξ��ϵ����֤��ޤ���

--- choose_from_list(*args) -> Array

�ꥹ�Ȥ�����������򤹤����򤷤ޤ���

@param args �Ѿ���Υ᥽�åɤ�Ϳ��������Ǥ���

@return ������̾�Τ������Υ���ǥå��������ǤȤ���������֤��ޤ���

--- say(*args) -> ()

Ϳ����줿ʸ�����ɽ�����ޤ���

@param args �Ѿ���Υ᥽�åɤ�Ϳ��������Ǥ���

--- terminate_interaction(*args) -> ()

���ץꥱ��������λ���ޤ���

@param args �Ѿ���Υ᥽�åɤ�Ϳ��������Ǥ���

= class Gem::StreamUI

����ץ�ʥ��ȥ꡼�����������桼�����󥿡��ե������Ǥ���

== Singleton Methods

--- new(in_stream, out_stream, err_stream = STDERR)

���Υ��饹���������ޤ���

@param in_stream ���ϸ��Υ��ȥ꡼�����ꤷ�ޤ���

@param out_stream ������Υ��ȥ꡼�����ꤷ�ޤ���

@param err_stream ���顼���Ϥ���ꤷ�ޤ���

== Public Instance Methods

--- alert(statement, question  = nil) -> String | nil

INFO ��٥�Υ��顼�Ȥ�ɽ�����ޤ���

@param statement ɽ������ʸ�������ꤷ�ޤ���

@param question ɬ�פǤ���м������ꤷ�ޤ���

@return question ����ꤷ�����ϡ�������Ф���������֤��ޤ���
        question ����ꤷ�ʤ����� nil ���֤��ޤ���

@see [[m:Gem::StreamUI#ask]]

--- alert_error(statement, question  = nil) -> String | nil

ERROR ��٥�Υ��顼�Ȥ�ɽ�����ޤ���

@param statement ɽ������ʸ�������ꤷ�ޤ���

@param question ɬ�פǤ���м������ꤷ�ޤ���

@return question ����ꤷ�����ϡ�������Ф���������֤��ޤ���
        question ����ꤷ�ʤ����� nil ���֤��ޤ���

@see [[m:Gem::StreamUI#ask]]

--- alert_warning(statement, question  = nil) -> String | nil

WARNING ��٥�Υ��顼�Ȥ�ɽ�����ޤ���

@param statement ɽ������ʸ�������ꤷ�ޤ���

@param question ɬ�פǤ���м������ꤷ�ޤ���

@return question ����ꤷ�����ϡ�������Ф���������֤��ޤ���
        question ����ꤷ�ʤ����� nil ���֤��ޤ���

@see [[m:Gem::StreamUI#ask]]

--- ask(question) -> String | nil

����򤷤ޤ���

@param question �������ꤷ�ޤ���

@return ���ϥ��ȥ꡼�ब TTY ����³����Ƥ�����ϲ������֤��ޤ���
        �����Ǥʤ����� nil ���֤��ޤ���

--- ask_yes_no(question) -> bool

���������Ρ������������򤷤ޤ���

@param question �������ꤷ�ޤ���

@return �桼���β������������ξ��Ͽ��򡢥Ρ��ξ��ϵ����֤��ޤ���

--- choose_from_list(question, list) -> Array

�ꥹ�Ȥ�����������򤹤����򤷤ޤ���

�ꥹ�Ȥϼ���ξ��ɽ������ޤ���

@param question �������ꤷ�ޤ���

@param list ������������ʸ���������ǻ��ꤷ�ޤ���

@return ������̾�Τ������Υ���ǥå��������ǤȤ���������֤��ޤ���

--- errs -> IO

���� UI �˥��åȤ���Ƥ��륨�顼���ϥ��ȥ꡼����֤��ޤ���

--- ins -> IO

���� UI �˥��åȤ���Ƥ������ϥ��ȥ꡼����֤��ޤ���

--- outs -> IO

���� UI �˥��åȤ���Ƥ�����ϥ��ȥ꡼����֤��ޤ���

--- progress_reporter(*args) -> SilentProgressReporter | SimpleProgressReporter | VerboseProgressReporter

�����ο�Ľ����𤹤뤿��Υ��֥������Ȥ��֤��ޤ���

�֤���륪�֥������Ȥμ���ϸ��ߤ�����ˤ��ޤ���

@param args ���ͤȤʤ륪�֥������Ȥ��������뤿��ΰ����Ǥ���

@see [[c:Gem::StreamUI::SilentProgressReporter]], [[c:Gem::StreamUI::SimpleProgressReporter]], [[c:Gem::StreamUI::VerboseProgressReporter]]

--- say(statement = '') -> ()

Ϳ����줿ʸ�����ɽ�����ޤ���

@param statement ɽ������ʸ�������ꤷ�ޤ���

--- terminate_interaction(status = 0) -> ()

���ץꥱ��������λ���ޤ���

@param status ��λ���ơ���������ꤷ�ޤ����ǥե���Ȥ� 0 (����) �Ǥ���

@raise Gem::SystemExitException ���Υ᥽�åɤ�ƤӽФ���ɬ��ȯ�������㳰�Ǥ���

= class Gem::StreamUI::SilentProgressReporter

���⤷�ʤ���Ľ���Υ��饹�Ǥ���

== Singleton Methods

--- new(out_stream, size, initial_message, terminal_message = nil)

���⤷�ޤ���

@param out_stream ���ꤷ�Ƥ��̣������ޤ���

@param size ���ꤷ�Ƥ��̣������ޤ���

@param initial_message ���ꤷ�Ƥ��̣������ޤ���

@param terminal_message ���ꤷ�Ƥ��̣������ޤ���

== Public Instance Methods

--- count -> nil

���⤷�ޤ���

--- done -> nil

���⤷�ޤ���

--- updated(message) -> nil

���⤷�ޤ���

@param message ���ꤷ�Ƥ��̣������ޤ���

= class Gem::StreamUI::SimpleProgressReporter

����ץ��ɽ����Ԥ���Ľ���Υ��饹�Ǥ���

== Singleton Methods

--- new(out_stream, size, initial_message, terminal_message = nil)

���Υ��饹���������ޤ���

@param out_stream ���ϥ��ȥ꡼�����ꤷ�ޤ���

@param size �����������Το��Ǥ���

@param initial_message �����������ä��Ȥ���ɽ�������å���������ꤷ�ޤ���

@param terminal_message ��λ����ɽ�������å������Ǥ���

== Public Instance Methods

--- count -> Integer

[[m:Gem::StreamUI::SimpleProgressReporter#updated]] ���ƤӽФ��줿������֤��ޤ���

--- done -> nil

��λ��å�������ɽ�����ޤ���

--- updated(message) -> nil

�ɥåȤ�ɽ�����ޤ���

@param message ���ꤷ�Ƥ��̣������ޤ���

= class Gem::StreamUI::VerboseProgressReporter

���ߤο�Ľ�˴ؤ����å�������ɽ�������Ľ���Υ��饹�Ǥ���

== Singleton Methods

--- new(out_stream, size, initial_message, terminal_message = nil)

���Υ��饹���������ޤ���

@param out_stream ���ϥ��ȥ꡼�����ꤷ�ޤ���

@param size �����������Το�����ꤷ�ޤ���

@param initial_message �����������ä��Ȥ���ɽ�������å���������ꤷ�ޤ���

@param terminal_message ��λ����ɽ�������å������Ǥ���

== Public Instance Methods

--- count -> Integer

[[m:Gem::StreamUI::VerboseProgressReporter#updated]] ���ƤӽФ��줿������֤��ޤ���

--- done -> nil

��λ��å�������ɽ�����ޤ���

--- updated(message) -> nil

���ߤ� [[m:Gem::StreamUI::VerboseProgressReporter#count]] �����Το��ȥ�å�������ɽ�����ޤ���

@param message ɽ�������å���������ꤷ�ޤ���

= class ConsoleUI < Gem::StreamUI

[[c:Gem::StreamUI]] ��ɸ�����ϡ�ɸ����ϡ�ɸ�२�顼���Ϥ���Ѥ��ƽ�������ޤ���

@see [[m:Kernel::STDIN]], [[m:Kernel::STDOUT]], [[m:Kernel::STDERR]]

= class SilentUI

�����˲��⤷�ʤ� UI �Ǥ���
