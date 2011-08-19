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

 * main program
 * module
 * subroutine
 * function
 * ������
 * public �ѿ�
 * public ���
 * defined operators
 * defined assignments

These components are described in items of RDoc documentation, as follows.

Files :: Files (same as Ruby)
Classes :: Modules
Methods :: Subroutines, functions, variables, constants, derived-types, defined operators, defined assignments
Required files :: Files in which imported modules, external subroutines and external functions are defined.
Included Modules :: List of imported modules
Attributes :: List of derived-types, List of imported modules all of whose components are published again

Components listed in 'Methods' (subroutines, functions, ...)
defined in modules are described in the item of 'Classes'.
On the other hand, components defined in main programs or
as external procedures are described in the item of 'Files'.

=== Components parsed by default

By default, documentation on public components (subroutines, functions,
variables, constants, derived-types, defined operators,
defined assignments) are generated.
With "--all" option, documentation on all components
are generated (almost same as the Ruby parser).

=== Information parsed automatically

The following information is automatically parsed.

 * Types of arguments
 * Types of variables and constants
 * Types of variables in the derived types, and initial values
 * NAMELISTs and types of variables in them, and initial values

Aliases by interface statement are described in the item of 'Methods'.

Components which are imported from other modules and published again
are described in the item of 'Methods'.

=== �����ȤΥե����ޥå�

����Ū�ʵ�§�� Ruby �Υ�������������˥ɥ�����Ȥ򵭽Ҥ������Ʊ��
�Ǥ�����������Fortran95 �Ǥϡ������Ȥ򵭽Ҥ��뤿��ˤϡ�#�פǤϤʤ���
��!�פ��Ƭ�˵��Ҥ��ʤ���Фʤ�ޤ���

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

       logical            :: a     ! a private variable
       real, public       :: b     ! a public variable
       integer, parameter :: c = 0 ! a public constant

       public :: c
       public :: MULTI_ARRAY
       public :: hoge, foo

       type MULTI_ARRAY
         !
         ! ���������Ф��륳���Ȥ򵭽Ҥ��ޤ���
         !
         real, pointer :: var(:) =>null() ! Comments block for the variables.
         integer       :: num = 0
       end type MULTI_ARRAY

     contains

       subroutine hoge( in,   &   ! Comment blocks between continuation lines are ignored.
           &            out )
         !
         ! Comment blocks for the subroutines or functions
         !
         character(*),intent(in):: in ! Comment blocks for the arguments.
         character(*),intent(out),allocatable,target  :: in
                                      ! Comment blocks can be
                                      ! written under Fortran statements.

         character(32) :: file ! This comment parsed as a variable in below NAMELIST.
         integer       :: id

         namelist /varinfo_nml/ file, id
                 !
                 ! Comment blocks for the NAMELISTs.
                 ! Information about variables are described above.
                 !

       ....

       end subroutine hoge

       integer function foo( in )
         !
         ! This part is considered as comment block.

         ! Comment blocks under blank lines are ignored.
         !
         integer, intent(in):: inA ! This part is considered as comment block.

                                   ! This part is ignored.

       end function foo

       subroutine hide( in,   &
         &              out )      !:nodoc:
         !
         ! If "!:nodoc:" is described at end-of-line in subroutine
         ! statement as above, the subroutine is ignored.
         ! This assignment can be used to modules, subroutines,
         ! functions, variables, constants, derived-types,
         ! defined operators, defined assignments,
         ! list of imported modules ("use" statement).
         !

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
