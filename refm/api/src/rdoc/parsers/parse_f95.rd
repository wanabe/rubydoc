#@since 1.9.1
require rdoc/parser
#@else
#@# require rdoc/code_objects
#@end

Fortran95 �Υ����������ɤ���Ϥ��뤿��Υ��֥饤�֥��Ǥ���

��ĥ�Ҥ� .f90��.F90��.f95��.F95 �Υե��������Ϥ�������Ǥ��ޤ�������
�Τ���ˤϡ�Fortran95 �λ��ͤ�Ŭ�礷�Ƥ���ɬ�פ�����ޤ���

[���] rdoc 2.4.0 ���� rdoc-f95 ��ʬ���줿���ᡢ1.9.2 ����
#@since 1.9.1
[[lib:rdoc/parser/f95]] ��ɸ��ź�ե饤�֥��˴ޤޤ�ʤ��ʤ�ޤ�����
#@else
[[lib:rdoc/parsers/parse_f95]] ��ɸ��ź�ե饤�֥��˴ޤޤ�ʤ��ʤ�ޤ�����
#@end
1.9.2 �ʹߤǤ���Ѥ��������� rdoc-f95 �� RubyGems �ǥ��󥹥ȡ��뤷��
����������

=== Fortran95 �ץ����Ȥ��б�

#@since 1.9.1
[[lib:rdoc/parser/f95]] �ϰʲ�����Ϥ�������Ǥ��ޤ���
#@else
[[lib:rdoc/parsers/parse_f95]] �ϰʲ�����Ϥ�������Ǥ��ޤ���
#@end

 * main �ץ����
 * module
 * subroutine
 * function
 * ������
 * public �ѿ�
 * public ���
 * �桼�����ñ��黻��
 * �桼�����������

Ruby ����٤Ƥߤ�Ȱʲ��Τ褦�ˤʤ�ޤ���

: �ե�����

  �ե�����(Ruby ��Ʊ��)

: ���饹

  module

: �᥽�å�

  subroutine, function, �ѿ�, ���, ������, �桼�����ñ��黻��, �桼�����������

: require ���줿�ե�����

  use ʸ���ɤ߹��ޤ줿 module, external ������줿 subroutine��function

: include ���줿�⥸�塼��

  use ʸ���ɤ߹��ޤ줿 module

: °��

  �������� use ʸ���ɤ߹��ޤ줿 module

=== ���ϲ�ǽ�ʾ���

�ʲ��ξ���ϼ�ưŪ�˲��Ϥ���ޤ���

 * �����η�
 * �ѿ�������η�
 * �������η�������
 * NAMELIST ����ѿ��η�������

interface ʸ������������ alias �Ͼ嵭�Ρ֥᥽�åɡפ�Ʊ�ͤ˽�������ޤ���

=== �����ȤΥե����ޥå�

����Ū�ʵ�§�� Ruby �Υ�������������˥ɥ�����Ȥ򵭽Ҥ������Ʊ��
�Ǥ�����������Fortran95 �Ǥϡ������Ȥ򵭽Ҥ��뤿��ˤϡ�#�פǤϤʤ���
��!�פ��Ƭ�˵��Ҥ��ʤ���Фʤ�ޤ��󡣥����Ȥ�ʸ�θ�(�⤷���ϲ�)�˵�
�Ҥ��ޤ���

��������Ǥ�դΰ��֤˹Ԥ������Ǥ��ޤ���

     ! (Top of file)
     !
     ! ���Υե�������Ф��륳���Ȥ򵭽Ҥ��ޤ���
     !
     !--
     ! "!--" ���� "!++" �ǰϤޤ줿�����Ȥ�̵�뤵��ޤ���
     !++
     !
     module hogehoge
       !
       ! ���� module(�⤷���ϡ�program) ���Ф��륳���Ȥ򵭽Ҥ��ޤ���
       !

       private

       logical            :: a     ! private �ѿ�
       real, public       :: b     ! public �ѿ�
       integer, parameter :: c = 0 ! public ���

       public :: c
       public :: MULTI_ARRAY
       public :: hoge, foo

       type MULTI_ARRAY
         !
         ! ���������Ф��륳���Ȥ򵭽Ҥ��ޤ���
         !
         real, pointer :: var(:) =>null() ! �ѿ����Ф��륳����
         integer       :: num = 0
       end type MULTI_ARRAY

     contains

       subroutine hoge( in,   &   ! ��³����Ԥ��Ф��륳���Ȥ�̵�뤵��ޤ���
           &            out )
         !
         ! subroutine �� function ���Ф��륳���Ȥ򵭽Ҥ��ޤ���
         !
         character(*),intent(in):: in ! �������Ф��륳���Ȥ򵭽Ҥ��ޤ���
         character(*),intent(out),allocatable,target  :: in

         character(32) :: file ! ������ NAMELIST ����ѿ����Ф��륳���ȤȤ��ƽ�������ޤ���
         integer       :: id

         namelist /varinfo_nml/ file, id
                 !
                 ! NAMELIST ���Ф��륳���Ȥ򵭽Ҥ��ޤ���
                 ! �嵭���ѿ����Ф��륳���Ȥ򵭽ҤǤ��ޤ���
                 !

       ....

       end subroutine hoge

       integer function foo( in )
         !
         ! ���ιԤϽ�������ޤ�����

         ! ���ιԤΤ褦�ʡ����Ԥβ��˵��Ҥ��������Ȥ�̵�뤵��ޤ���
         !
         integer, intent(in):: inA ! ���ιԤϽ�������ޤ�����

                                   ! ���ιԤ�̵�뤵��ޤ���

       end function foo

       subroutine hide( in,   &
         &              out )      !:nodoc:
         !
         ! �嵭�Τ褦�� subroutine �κǸ�ιԤ� "!:nodoc:" �򵭽Ҥ�����
         ! ��Ͻ�������ޤ���

       ....

       end subroutine hide

     end module hogehoge

#@since 1.9.1
= class RDoc::Parser::F95 < RDoc::Parser
#@else
= class RDoc::Fortran95parser

extend RDoc::ParserFactory
#@end

Fortran95 �Υ����������ɤ���Ϥ��뤿��Υ��饹�Ǥ���

== Constants

--- COMMENTS_ARE_UPPER -> false

�饤�֥��������ǻ��Ѥ��ޤ���

--- INTERNAL_ALIAS_MES -> "Alias for"

�饤�֥��������ǻ��Ѥ��ޤ���

--- EXTERNAL_ALIAS_MES -> "The entity is"

�饤�֥��������ǻ��Ѥ��ޤ���

#@until 1.9.1
== Class Methods

--- new(top_level, file_name, body, options, stats) -> RDoc::Fortran95parser

���Ȥ��������ޤ���

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���

@param options [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���
#@end

== Instance Methods

--- scan -> RDoc::TopLevel

��������������Υɥ�����Ȥ���Ϥ��ޤ���

@return [[c:RDoc::TopLevel]] ���֥������Ȥ��֤��ޤ���
