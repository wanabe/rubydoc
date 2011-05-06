#@since 1.8.0

Microsoft Windows �� COM �� ActiveX �򰷤�����Υ饤�֥��Ǥ���

  * [[url:http://homepage1.nifty.com/markey/ruby/win32ole/index.html]]
  * [[url:http://pub.cozmixng.org/~the-rwiki/rw-cgi.rb?cmd=view;name=Win32OLE]]
  * [[url:http://www.morijp.com/masarl/homepage3.nifty.com/masarl/article/ruby-win32ole.html]]
  * Rubyist Magazine [[url:http://jp.rubyist.net/magazine/]]
    * Win32OLE ����ˡ���� 1 ��� Win32OLE ���ȤϤ��� [[url:http://jp.rubyist.net/magazine/?0003-Win32OLE]]
    * Win32OLE ����ˡ���� 2 ��� Excel [[url:http://jp.rubyist.net/magazine/?0004-Win32OLE]]
    * Win32OLE ����ˡ���� 3 ��� ADODB [[url:http://jp.rubyist.net/magazine/?0005-Win32OLE]]
    * Win32OLE ����ˡ���� 4 ��� Adobe Illustrator [[url:http://jp.rubyist.net/magazine/?0006-Win32OLE]]
    * Win32OLE ����ˡ���� 5 ��� Outlook [[url:http://jp.rubyist.net/magazine/?0007-Win32OLE]]
    * Win32OLE ����ˡ���� 6 ��� Web ��ư��� [[url:http://jp.rubyist.net/magazine/?0008-Win32OLE]]
    * Win32OLE ����ˡ���� 7 ��ۤۤ��θ���Ǥ� COM [[url:http://jp.rubyist.net/magazine/?0009-Win32OLE]]

#@include(win32ole/WIN32OLE)
#@include(win32ole/WIN32OLE_EVENT)
#@include(win32ole/WIN32OLE_METHOD)
#@include(win32ole/WIN32OLE_PARAM)
#@include(win32ole/WIN32OLE_TYPE)
#@include(win32ole/WIN32OLE_VARIABLE)
#@since 1.9.1
#@include(win32ole/WIN32OLE_TYPELIB)
#@include(win32ole/WIN32OLE_VARIANT)
#@end

= class WIN32OLERuntimeError < RuntimeError

COM���󥿡��ե��������顼����ȯ�������㳰�Ǥ���

WIN32OLERuntimeError�ϡ�OLE�����ȥ᡼�����ƤӽФ����㳰���ơ�����
��HRESULT��MSB������ˤ��֤ä����䡢�᥽�åɸƤӽФ����˥����ȥ᡼����
����ͤ�ǧ����Ƥ��ʤ��ͤ�Ϳ����줿����ȯ�����ޤ���

OLE�����ȥ᡼�����ƤӽФ����㳰���ơ��������ᤵ�줿���ϡ���å�����
���㳰�Ȥʤä�HRESULT�ͤ��б������å�������ɽ������ޤ���

HRESULT: [[url:http://msdn.microsoft.com/en-us/library/cc704587(v=PROT.10).aspx]]

= module WIN32OLE::VARIANT
OLE�����ȥ᡼����󷿤���ꤹ�뤿����������������⥸�塼��Ǥ���

WIN32OLE::VARIANT�ϡ�[[c:WIN32OLE_VARIANT]]���֥������Ȥκ������䡢
[[m:WIN32OLE#_invoke]]�ʤɤΥ᥽�åɸƤӽФ����ˡ��桼����Ruby�Υ��֥���
���Ȥ��Ѵ���ˡ����ꤹ�뤿���������󶡤��ޤ���

�������ͤϡ�COM�λ��ͤ�������줿OLE�����ȥ᡼����󷿤ȸƤФ���Ϣ
�η�����ꤹ������Ǥ�����������������OLE�����ȥ᡼�������ߴ��η�����
������Ƥ��뤿�ᡢ���ѻ��ˤ�OLE�����ȥ᡼�����ߴ����Τߤ����Ѥ���褦
�ˤ��Ƥ���������

== Constants

--- VT_ARRAY -> Integer
�����SafeArray�ˤ򼨤��ޤ���0x2000�ˡ�

--- VT_BOOL -> Integer
�����ͤ򼨤��ޤ���11�ˡ�

--- VT_BSTR -> Integer
ʸ�����BSTR�ˤ򼨤��ޤ���8�ˡ�

OLE�����ȥ᡼������BSTR��Unicode��ɽ�����줿Ĺ���դ�ʸ����Ǥ���Ruby
��String��BSTR������Ѵ��ϡ�WIN32OLE��[[m:WIN32OLE#codepage]]�˴�Ť���
��ưŪ�˹Ԥ��ޤ���

--- VT_BYREF -> Integer
���Ȥ򼨤��ޤ���0x4000�ˡ�

VT_BYREF�Ϸ��ǤϤʤ������Ȥ򼨤���°���Ǥ���OLE�����ȥ᡼����󥵡��Ф�
��̤�������᤹��硢������η��򼨤��ͤ������¤��뤿������Ѥ��ޤ���

--- VT_CY -> Integer
�̲߷���CURRENCY�ˤ򼨤��ޤ���6�ˡ�

OLE�����ȥ᡼������CURRENCY���ϡ�����դ�64�ӥå�������10��ɽ��������
�β�4��򾮿����ʲ��Ȥ��뤳�Ȥǡ��ø����ˤĤ��Ƹ������������ʤ�������
����ɽ�����ޤ���

CURRENCY����ͭ���ϰϤ�-922337203685477.5808����922337203685477.5807�Ǥ���

WIN32OLE�ϥ����ȥ᡼�����ƤӽФ����֤��ͤ�CURRENCY���ξ�硢ʸ�����
�Ѵ����ޤ���

--- VT_DATE -> Integer
���շ���DATE�ˤ򼨤��ޤ���7�ˡ�

OLE�����ȥ᡼������DATE���ϡ�1899ǯ12��30��0��00ʬ����������򼨤�64
�ӥå���ư�����������Ǥ���

WIN32OLE�ϡ�Ruby��Time���ȼ�ưŪ���Ѵ����ޤ���

--- VT_DISPATCH -> Integer
OLE�����ȥ᡼����󥪥֥������Ȥ򼨤��ޤ���9�ˡ�

Ruby�Υ��֥������Ȥ�OLE�����ȥ᡼����󥵡��Ф�Ϳ����������Ѥ��ޤ���

--- VT_ERROR -> Integer
HRESULT�򼨤��ޤ���10�ˡ�

HRESULT�ϡ�COM��ޤ�Windows�Υ����ӥ������ץꥱ�����������Τ�������Ū
�ʥ��顼�����ɤǤ���

HRESULT: [[url:http://msdn.microsoft.com/en-us/library/cc704587(v=PROT.10).aspx]]

--- VT_I1 -> Integer
����դ�8�ӥå�������char�ˤ򼨤��ޤ���16�ˡ�

OLE�����ȥ᡼�����λ��;�����ѤǤ��ޤ���

--- VT_I2 -> Integer
����դ�16�ӥå�������short�ˤ򼨤��ޤ���2�ˡ�

--- VT_I4 -> Integer
����դ�32�ӥå�������int�ˤ򼨤��ޤ���3�ˡ�

--- VT_INT -> Integer
����դ�������int�ˤ򼨤��ޤ���22�ˡ�

--- VT_PTR -> Integer
�ݥ��󥿷��򼨤��ޤ���26�ˡ�

VT_PTR�ϡ�VOID*���������뤿�ᡢOLE�����ȥ᡼�����Ǥ����ѤǤ��ޤ���

--- VT_R4 -> Integer
ñ������ư���������򼨤��ޤ���4�ˡ�

--- VT_R8 -> Integer
��������ư���������򼨤��ޤ���5�ˡ�

--- VT_UI1 -> Integer
���ʤ�8�ӥå�������unsigned char�ˤ򼨤��ޤ���17�ˡ�

--- VT_UI2 -> Integer
���ʤ�16�ӥå�������unsigned short�ˤ򼨤��ޤ���18�ˡ�

OLE�����ȥ᡼�����Ǥ����ѤǤ��ޤ��������VT_I2�����Ѥ��Ƥ���������

--- VT_UI4 -> Integer
���ʤ�32�ӥå�������unsigned int�ˤ򼨤��ޤ���19�ˡ�

OLE�����ȥ᡼�����Ǥ����ѤǤ��ޤ��������VT_I4�����Ѥ��Ƥ���������

--- VT_UINT -> Integer
���ʤ�������unsigned int�ˤ򼨤��ޤ���23�ˡ�

OLE�����ȥ᡼�����Ǥ����ѤǤ��ޤ��������VT_I4�����Ѥ��Ƥ���������

--- VT_UNKNOWN -> Integer
COM���󥿡��ե������򼨤��ޤ���13�ˡ�

--- VT_USERDEFINED -> Integer
�桼��������򼨤��ޤ���29�ˡ�

OLE�����ȥ᡼�����Ǥ����ѤǤ��ޤ��������VT_I4�����Ѥ��Ƥ���������

--- VT_VARIANT -> Integer
VARIANT���򼨤��ޤ���12�ˡ�

#@since 1.9.1
--- VT_EMPTY -> Integer
���ʽ�������֡ˤΥ��֥������Ȥ򼨤��ޤ���0�ˡ�

--- VT_NULL -> Integer
NULL�����ͤ򼨤��ޤ���1�ˡ�

[[m:WIN32OLE::VARIANT.VT_EMPTY]]�ȰۤʤꡢNULL�Ȥ����͡ʤ��Ȥ���SQL�ѥ�
�᡼����NULL����ꤹ����ʤɡˤ򼨤��ޤ���

#@end

#@end
