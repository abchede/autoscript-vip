#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��� ��qx����������`���P  @ �| J* �B�B�BJ���A*�URJ���J���44    �  � aƆ��   @  �� 0�CF��@      @d q��F�F��   �  �2 U!	�`D�=Q�d���O)�=�yOH@�)D	�0&�	���T���x�SC��=LC���mL� ��_��*�#܍��ґ�0��6/�Ǟi1663�KFs�m��s�le6�l��?KvMo�m���]��N7خ.I���lbpr10�����r�2jf�}sF��a��C\ή����\�T�4�fs}�[�L�t0�512a�kiia�[��դ��q��s+��\����'+r�Z?[�śs���r�?�o��m�b��S����_�����{.Òojkma���jof�FMi|*�aYN��V�眪�Cf���Z[�4�s7S�s4t�ls+��o�2W��0�����56ư�wT�/I;-K����m�o�?�Է�,���I��^%]�����q��՟��氫q`r���N��]�n.��?u{�o&Yb��2��-i�X��ZX��}���e�7�V��_�����##�kƗ-�+5a]����5­�G���V|Dm�G5��֑����#��^�=*�?]=j�O�������=�vf���f���vX�hɇ�W�z���x[Y�M�ؙ������>	��nlmnqd鰶.)�l�)s�����`ԫb�M���WY��f�#���uٵ�}�����Z�oSk��>���qU��e>�����ȯ+����t����{Q��>us��kW��圏��N�Sk�U�+l�]�ʾ'��<�wYN��&�WQl��ŗm�u�+im����j�VGܥ��^�����*d��Ҭ��_B�aeڲ�`k��a�
�+���%�ϕ���ü���=o[�|0�,�&1)��Y�����k|�o���ʼo*���T����9�)���T�5+SIY��}D�k{�d��.����[���kw��ka��l�R�S�<���e>�t�Af���.�+�Y{fT���%hj>H�.��X����Ov�?�����s�̩��ɇ2�r����Q�u����h���N�9��*��^�3'}�����7�^ں���!�ºK�ܑҷ]��z��6Z��'�8����M�꺎�{��{#e\�&)�͇U�J馓Sgx^����^:Z��U�Ͼ�]i�r�M���G��3~l����;s�_#SG;]2j_���Nⴚ�-�;J�k/����x �m�Y0�3Qޝ����B�eyӶ=���9��躌�F�/�e5L�i4XV��IZ8<�����4��2�+֬����,o��зG�޹�B�������#羷q���{o��>v���9�6ׅۦj�U�}/2�����y��ާU��l��Z;וz�ٻ�^��\�K���d}������J��#�)��6F����VClV�>:�ǵ�z#��.Kr����i|�	�cܺ#H�|��LS�kk�xZXa�������U��9�VV;3��Ccs������~��,xm茔�\#�G�/|�]��ds�.�IO��8�7�h�_�:�ʲv��s��ƍj�V�Vv���Q�O�$���-cb�1���گ�����[�n4����i>���NbwU��[%�u��W�uհ�bju�&�a�ڞ�q�JX��V:]�K�Mt�}�J�-nҳf�d�V��tF^��}�8G�:�����6/<m�#.{X哖�Ǎkb��SZ�8�u�-'J]�fY2Vr�)�X�X�>��/��X�h�Z,����e�?��ὫU�\�p�������d���o4�[��7J�1bX{��K�`�������gH���Z�#�\��b�K[��b�|�1?B�]����L�>5rC\��wfn��>#���XoW(~7]3UzXr��*�)w��::���t0���U��܃��7�z��
6Z��%�,�F�Ɨ�[.�˴�����~v�|�1LJ�d�k�r����+�������Qe04f���Zg~et=�"���k��Nޮ��c���-d�*�;�f�R�-�f����^)���u0ô�b�3f���ɸ�o/��ǖލl��!�xi�ﺖX���=��#μhֽ�0�[�XO+cʘgQ{v-��ڣ�5<�A�[�pr9�v�퓒kW���7�$�*����7u�u��r��Fv����f)�K{k�5M�ۥ8N�����e�b�;�<r���N<L���dچ�%{,+�51J�����<���iUy��nEX.%؃�X�V����W|j����*����+��Xa�XmW��l,[l�Q�xQ����#mUz�]O�S5l�����q�R������۰�˺���e��u�Ğ���y&�t͛�I����U�V�<鏭�Ν��%r
�%��]FC����˞6Ӧ�j�#.�i���=Ȼƫb��I�9n���9�
���s�^�^1����fYyU�����>�����M�Ƭ?ٓmţ.Ұ>��K�:�֫Lc���-�ᎸuՕS6�Ė����,�=lF�[ȴ�.k)�,�W$^W+%v\��llSS}ba��Rњ����m�����^w�Z3�Z)�������i�K鴽&�?\\\/mwڏp���x�,~;A�.ڴM-
e�ZZZ.hZay��\�p����G�ƶ����E�{��sh�O�m���"�K�;,X�C����x�lf��&L�X�6S4�ʙ�Y����Sd�J���¸�-7ZI���e�1%�mW�l��"�+[�[	Ƨu�
o[�-��w�.����`�vƖ����^%p�S��R�Zh�f�˫�e�2�X�C�Ŵ���*ʚ��J�b���le1d,��4/;�9'q�9&��4k�Ւ�U�n�eW
��mN�����:R�e2s��s[j;s���-��9���kWC6��3Ԧd��Wa�h����+u\����ӄ�Vt�M��@�,��x-��p��I��]��r\.�9��ȫ��au��s52r̦S����%/���6#�З̱�<�v�$�R�<��ԸX�[�.�u���SzY�ߧvv���sTqUw��>�u��aG$s�{�SȖ
2�����K�zYUa��mX��x�m�������a��Z�*��+�vU�?�*W�����-H��b����������j޶�aiPv-V,Z���?T���)�7�