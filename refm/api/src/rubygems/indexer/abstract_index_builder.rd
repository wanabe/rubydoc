require rubygems/indexer

Gem �Υ���ǥå������ۤ��뤿�����ݥ��饹�򰷤��饤�֥��Ǥ���

�ƥ�ץ졼�ȥѥ��������Ѥ��Ƥ��ޤ���

= class Gem::Indexer::AbstractIndexBuilder

Gem �Υ���ǥå������ۤ��뤿�����ݥ��饹�Ǥ���

�ƥ�ץ졼�ȥѥ��������Ѥ��Ƥ��ޤ���

== Public Instance Methods

--- build{ ... }
#@# -> discard
Gem �Υ���ǥå�����������ޤ���

�ºݤΥ���ǥå����������������ξܺ٤�Ϳ����줿�֥�å��˵��Ҥ���Ƥ��ޤ���
����Ū�ʽ����򥫥����ޥ������뤿��ˡ�Ŭ�ڤʥ����ߥ󥰤�
begin_index, end_index, cleanup ���ƤӽФ����褦�ˤʤäƤ��ޤ���

--- cleanup -> nil

����ǥå����ե�������Ĥ������Ȥ˸ƤӽФ���ޤ���

--- compress(filename, ext = 'rz')
#@# -> discard
Ϳ����줿�ե�����򰵽̤��ޤ���

@param filename ���̤���ե������̾������ꤷ�ޤ���

@param ext ���̸�Υե�����γ�ĥ�Ҥ���ꤷ�ޤ���

--- directory -> String

����ǥå����ե�����������ե���������֤��Ƥ���ǥ��쥯�ȥ�̾���֤��ޤ���

--- end_index -> nil

[[m:Gem::Indexer::AbstractIndexBuilder#build]] ��ǥ֥�å����¹Ԥ��줿��˸ƤӽФ���ޤ���
����ǥå����ե������ͭ���ǡ�@file �⻲�Ȳ�ǽ�Ǥ���

--- filename -> String

�������륤��ǥå����ե������̾�����֤��ޤ���

--- files -> [String]

�������륤��ǥå����ե�����˴ޤޤ��ե�����Υꥹ�Ȥ��֤��ޤ���

--- start_index -> nil

[[m:Gem::Indexer::AbstractIndexBuilder#build]] ��ǥ֥�å����¹Ԥ�������˸ƤӽФ���ޤ���
����ǥå����ե������ͭ���ǡ�@file �⻲�Ȳ�ǽ�Ǥ���

--- unzip(string) -> String

Ϳ����줿���̺Ѥ�ʸ�����Ÿ�������֤��ޤ���

@param string ���̤���Ƥ���ǡ�������ꤷ�ޤ���

@see [[m:Zlib::Inflate.inflate]]

--- zip(string) -> String

Ϳ����줿ʸ����򰵽̤����֤��ޤ���

@param string ���̤���ǡ�������ꤷ�ޤ���

@see [[m:Zlib::Deflate.deflate]]

== Singleton Methods

--- new(filename, directory) -> Gem::Indexer::AbstractIndexBuilder

���Ȥ��������ޤ���

@param filename �������륤��ǥå�������¸����ե�����̾�Ǥ���

@param directory ����ǥå����ե��������¸�����ȥǥ��쥯�ȥ�Ǥ���
