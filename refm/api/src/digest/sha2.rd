require digest

FIPS PUB 180-2�˵��Ҥ���Ƥ���NIST (the US' National Institute of
Standards and Technology) �ΰʲ��Υ��르�ꥺ���������륯�饹���󶡤�
��饤�֥��Ǥ���

  * SHA-256 Secure Hash Algorithm
  * SHA-384 Secure Hash Algorithm
  * SHA-512 Secure Hash Algorithm

= class Digest::SHA256 < Digest::Base

FIPS PUB 180-2�˵��Ҥ���Ƥ���NIST (the US' National Institute of
Standards and Technology) �� SHA-256 Secure Hash Algorithm��
�������륯�饹�Ǥ���


= class Digest::SHA384 < Digest::Base

FIPS PUB 180-2�˵��Ҥ���Ƥ���NIST (the US' National Institute of
Standards and Technology) �� SHA-384 Secure Hash Algorithm��
�������륯�饹�Ǥ���


= class Digest::SHA512 < Digest::Base

FIPS PUB 180-2�˵��Ҥ���Ƥ���NIST (the US' National Institute of
Standards and Technology) �� SHA-512 Secure Hash Algorithm��
�������륯�饹�Ǥ���

#@since 1.8.6
= class Digest::SHA2 < Digest::Class
== Class Methods
--- new(bitlen = 256) -> Digest::SHA2

Ϳ����줿 bitlen ���б����� SHA2 �ϥå�����������뤿��Υ��֥�������
�����������ꤷ�Ƽ��Ȥ��������ޤ���

@param bitlen �ϥå����Ĺ������ꤷ�ޤ���256, 384, 512 �������ǽ�Ǥ���

@raise ArgumentError bitlen �� 256, 384, 512 �ʳ����ͤ���ꤷ������ȯ�����ޤ���

== Instance Methods

--- block_length -> Integer

�����������ȤΥ֥�å�Ĺ���֤��ޤ���

--- digest_length -> Integer

�����������ȤΥϥå����ͤΥХ���Ĺ���֤��ޤ���

#@end
