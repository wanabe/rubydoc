#@# intern.h

--- void rb_memerror(void)

NoMemoryError��raise���롣
������raise���Τˤ�������̤�Ȥ����ᡢ���꤬­��ʤ�����
�ǤϤ�������Ǥޤ�������­�ˤʤ��ǽ�������롣���Τ���
���δؿ��ǤϺƵ��򸡽Ф�������raise�ǤϤʤ�exit����褦��
�ʤäƤ��롣

--- int ruby_stack_check(void)

--- int ruby_stack_length(VALUE **p)

--- void rb_gc_mark_locations(VALUE *start, VALUE *end)

--- void rb_mark_tbl(st_table *tbl)

--- void rb_mark_hash(st_table *tbl)

--- void rb_gc_mark_maybe(VALUE v)

v �� Ruby �Υ��֥������ȤǤ���Хޡ������ޤ���

--- void rb_gc_mark_maybe(VALUE v)

v �� Ruby �Υ��֥������ȤǤ���Хޡ������ޤ���

--- void rb_gc_force_recycle(VALUE p)

p ����Ū�� GC ���ޤ���

--- VALUE rb_gc(void)

����Ū�� GC �򳫻Ϥ��ޤ���rb_gc_disable() �Ƕػ���ΤȤ������
���Ǥ� GC ���¹���ΤȤ��ϼºݤˤϹԤ��ޤ���

--- void rb_gc_call_finalizer_at_exit(void)

--- VALUE rb_gc_enable(void)

GC ����Ĥ��ޤ���

--- VALUE rb_gc_disable(void)

GC ��ػߤ��ޤ���

--- VALUE rb_gc_start(void)

GC ��ư���ޤ���

--- void Init_stack(VALUE *addr)

#@# ruby.h

--- VALUE rb_newobj(void)

̤���ѤΥ��֥��������ΰ��ĤؤΥݥ��󥿤��֤���
�֤��ͤ��֤äƤ����Ȥ��ϼ��ԤϤʤ���

--- VALUE rb_data_object_alloc(VALUE klass, void *datap, RUBY_DATA_FUNC dmark, RUBY_DATA_FUNC dfree)

datap ���åפ��륪�֥������Ȥ����������֤��ޤ���
���Υ��饹�� klass �Ȥʤꡢdatap ��ޡ�������Ȥ���
dmark����������Ȥ��� dfree ��Ȥ��褦�ˤʤ�ޤ���

--- void rb_global_variable(VALUE *var)

[[f:rb_gc_register_address]] ��Ʊ���Ǥ���

--- void rb_gc_register_address(VALUE *addr)

#@# ���: [ruby-list:20488] 1.5 feature

�ݥ��� addr ���ؤ��ѿ��� GC ���оݤˤ��ޤ���

--- void rb_gc_unregister_address(VALUE *addr)

#@# ���: [ruby-list:20488] [1.5 feature]

�ݥ��� addr ���ؤ��ѿ��� GC ���оݤ��鳰���ޤ���

#@# defines.h

--- void *ruby_xmalloc(long size)

�������֤��ͤ� malloc() ��Ʊ����
���������������Ƥ˼��Ԥ����Ȥ���
GC ��Ԥ�����Ǥ����ʤȤ��� NoMemoryError �� raise ���롣
�Ĥޤꤳ�δؿ����֤��ͤ��֤����Ȥ��Ͼ�˳�����Ƥ��������Ƥ��롣

--- void *ruby_xcalloc(long n, long size)

�������֤��ͤ� calloc() ��Ʊ���Ǥ���
���������������Ƥ˼��Ԥ����Ȥ���
GC ��Ԥ�����Ǥ����ʤȤ����㳰 NoMemoryError ��ȯ�����ޤ���
�Ĥޤꤳ�δؿ����֤��ͤ��֤����Ȥ��Ͼ�˳�����Ƥ������Ǥ���

--- void *ruby_xrealloc(void *ptr, long size)

�������֤��ͤΰ�̣�� realloc() ��Ʊ����
���������������Ƥ˼��Ԥ����Ȥ���
GC ��Ԥ�����Ǥ����ʤȤ��� NoMemoryError �� raise ���롣
�Ĥޤꤳ�δؿ����֤��ͤ��֤����Ȥ��Ͼ�˳�����Ƥ��������Ƥ��롣

--- void ruby_xfree(void *x)

���� malloc/calloc/realloc ���� free ���Ƥ��ʤ��ݥ��� x ��
�������ޤ���ruby �Υ����ʥ뵡���ȥ���եꥯ�Ȥ��ޤ���

#@until 1.9.0

--- void rb_gc_mark_children(VALUE ptr)

v ����ؤ���Ƥ��륪�֥������Ȥ����ƥޡ������ޤ���

--- void rb_gc_mark_frame(struct FRAME *frame)

frame ��ޡ������ޤ���

--- char *rb_source_filename(const char *f)

#@end

#@if(visibility > "0")

--- void Init_heap(void)

#@end

#@if(visibility > "1")

--- static void add_heap(void)

Ruby���֥������ȤΥҡ��ץ���åȤ����ߤ��롣

--- static VALUE call_final(VALUE os, VALUE obj)

--- static VALUE define_final(int argc, VALUE *argv, VALUE os)

--- static VALUE finals(void)

--- static void gc_mark_all(void)

--- static void gc_mark_rest(void)

--- static void gc_sweep(void)

GC �Υ������ץե�������¹Ԥ��ޤ���

--- static VALUE id2ref(VALUE obj, VALUE id)

ObjectSpace#_id2ref �μ��Ρ�
Ruby ��������ɽ���줿���֥������� ID id ����
���֥������Ȥ��֤��ޤ���

--- static void init_mark_stack(void)

--- static inline int is_pointer_to_heap(void *ptr)

--- static int mark_entry(ID key, VALUE value)

--- static int mark_hashentry(VALUE key, VALUE value)

--- static void mark_locations_array(register VALUE *x, register long n)

--- static void mark_source_filename(char *f)

--- static void obj_free(VALUE obj)

--- static VALUE os_each_obj(int argc, VALUE *argv)

--- static VALUE os_live_obj(void)

--- static VALUE os_obj_of(VALUE of)

--- static VALUE rm_final(VALUE os, VALUE proc)

--- static void run_final(VALUE obj)

obj �Υե����ʥ饤����Ԥ��ޤ���

--- static VALUE run_single_final(VALUE *args)

--- static enum st_retval sweep_source_filename(char *key, char *value)

--- static VALUE undefine_final(VALUE os, VALUE obj)

#@end
