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
BZh91AY&SY�Ճ� ���@ ����������p�w�T�� `  `!�z���յ�m*Ht��F��C�b��{Ơ���ݭ[E!*Q�۲)ER�� ��L*����R�UJ+�4�I"&��j0�щ�4ѡ��=G�@     & &L b   L	�F  &   J"ީ�   � Q��  =@   �@ B�$Sɔ�?*�Odz�SC5������!�4=2 1@ D�4��OS�H��zh��SG�b�=OQ�h6�  �"hL�	��%0���A�����z���i�� ���N$�����C��\���V��������m��>�he����?�ǌ����m��醁������;2Ɂ��3�_\s�����y�Mkm�:� o��7���.��8���c�h�z���1�麈6�Z��T�R�se�@��Q��-<�*UP�**��=�НS�����)��v4����e���|؇�#�t8�-�ZT5��8$Ͱ,��\P7�A��P�-L�%��0��:4�C*,;(��q(��8J�oǍ��U�p]V�p
�]l�Ը�&�.��j���m����Wm��ٶP�aT��a8���i]!Ų��9����SfF��;�Z�|*�P��#鰫"�%!�(�����/ŗ��8�d����� {�h�%o��ڭ��<�"#u@֠p��رS�[s�$L�D�-��â�]QE�Z^��$F�$��;���Gx "^��se(��Fd�vTR���*<���`�����Lv6��z9~K�X�֕�����!�)a9Q8j9.�>�+�������~.�Gcv��bip S2�14�1LCRs��O�<��|z��vP)5CQaz�0ASQH�T�C�:�g�A��+���׈�3ē�4���Z_s^�͖%��h���`�c�����T~�4�D�7�H;��:����:��>��d��n�:����U��4Ԟ�KV��نx)�Ԣ]-l�[;(&Gmzl�(�bJ�}�1��}��&t���GX��'���n��h�Gf��'�sDHa��:��"�ʡ��3���	���%};B�Q��aA�s��O�&a���a�H}���e�o����ac��������
Q2�g�?'ʴOv�~�\�W�<@OdUu�P�����a�phB�SBC��COeV�� ީCr��TOe��zX��.]�%E(��C�>w�Rޙ�� Yr�Jb"��0�@vI"���M���vHT����J==�J�O���|���>�-���{�LJ����_U����ҳnf^��\d�E�W`���$+��Y/<��X=������#V����z)([.�Rt�
�U"\u[%W�;5S��L\�b+7 ,!�[
B�+&`��&y��t�c�4΂ռy��2�\gt]�u�U!��G��O����_:Z�a�ݬ�����N�KM�SS�w��nƥ���n��M]���'�}è:w��ˠ7�H�v�,���ڽ�h�>�]WfB�4{�%�����)+�-�ۆ�l�%e��G���l�H�{����N�����f�~�:�����F�txD�@���>��Ѩ|����LA1&��SB@�+ǋ��_�Sl��H0����ڧ��ht!�x�T��:�/C�(r(u5��x"@'�����۶+���m�HI3Et���-��R)"z'Ŵa��dxn�W�JypiX;f�:�,K�)G�ʆ9�j�N}}HPo�j��Y#`�m�Iʼ)-������X�X{7�F�4��9Wl4�3���s���|n�O�w=.�{�u |^�&i��4!�_� �4���קPv-�0YkW�2;�$�����O����*�Q�f�i+yOM��b�b��{��4��,d��l��x�F�Vb{�B̵��0�"�ʙ�6[�yM�'e�*bUZ�g
�.a�����}�[<��or �<�~_[QP�)0T�ddY�c<��Q��1��F@�@��\/�؇>������+ �L��6�N�|�'&�V��=��$���R��E����!�P�$J��})�ÛT�.Y���6�-!�MgdɛOuc�*jT�YVRE(FU$X\�+��S�d��ϐ��:bI��A?P���
$0L;}�m.��SZ!�@�Q�(������@J"K*�⟿�.ap	���sK@Є��+���B��|��� 2���"� �hBza�� �IH��A�b'ER���ug�a;7RG��bW�?���F�v����~@B�G�@P��`��``�e2�	MUL��g���)���GQ�?6�(��Ȭ�L�h	��|���)I?I ��<<���b���I�O�������Ts����֢O8�-H��-_m/���k�	���p��� �r}�71=�|6�v<�]�%|��3% ,Dw�AH��Zd��]���J-�%>�kצ�S".�Z��+3%��t��|��[��4�(�p������i��EI�xO�Tn:���u\��aah����dH��
�Z�-��������t����ӷ#��@yd��m�0`�Ѐzb}���:��洄|��%�	�z�;���^�5��ކʒ��q�ȥ�ӂ�����Wx����LM;�ϸn$H������<��}i��6���*:�St��uU :?�溅�җB�HQ%Q��u-@$rT:@��p\ݫ���<�4�Zz�j��C�����k�M��2���7\>�����5��eV���T�@�
���J8��k2ɾK��q�ZZQF�#�rI�y,U�'����vV˷wV�7�	��6�*��w�l03׭�~��?X1�5gq�?��Q�y��rƩ1�e�Y��0�=3��%�H�	�+ �DZ�@�ȡan8#h����M4�k��y ]��&������l=hr3O?3\�����CXhw�#�s�ج0��7���CU2W�������Q�o�����3���Y�g�d*����.�n;`v��;��QBȟ���'������<�>w����%�`�}oblq_u|(�|���pڷ�V���])�oQ�N�͛c��f�[��l٭�N��%�1`@��ڶ�W�c��=�4��>�3��*���
5Lj� $����Ƌ�%�&��1�Z��-H\�������>C񻓙��Q5��S\���'�ɲ����G��C��R̢V�z����,�q=X~�!El\}Qֲcxs��@.T�B�*м���֑�V��D�?�#��_�<[�������D�.���T�@���M
��	]zU�M���\�h��"`j;�2�4�ʙ�Q/���5�CN\G^B�S���3R^����Z��k@(�j�F�rE�%�q���S�@��¡x�b��d����L����O�9I�h��ǍT�aO�(�,%�:�$�dim�J]}��v
�"�@�[��v_D�<$i�:LW����p�IġUը@��9��D2uٽ��w�ݏrXb���a
M�;d�̌q�i$s"��=#�&��SRԔ�X�2]�4�S��:�![ɡf�P E\� h��$�!%%"R|����t(_PZ��62��'tPA���2A����� 57�f�/l���h�P�W��(�MR��'?NGB��֍�FK��G<�"h��m!��`���޺_�H��E�@�Υ�`�2�@���p`��@�PrL��l'F�+e�m���-�d�#��H��xt��7�e�Q�oZml����*���T2j,(�E
(Q����@>n�'k��Rk5�����ВIBB��-��PG��h|��Z�zD]ZS��-C� �2 G�������A��/�7�/��n=r�@%���G�<���fn^2�pX$�"3R*��~;��s�#W�C�$�~B��Z�/�C�}S����u���<�0��u�p�����4CF�-��z��"*J��X��	7���#�քF&G�:���Sl����Hb�QU%��,E�'�YG�P>��e��S�p{G�S�szDY��̗��G1��-/�|>�iL4n7���~� L��>�����!fW-{�Ձ�o7ľ�t!�$ݫSK{"�:ww�P:���&�ԣ�� t�$$d�/-�01[�"0N��c��� d�蓲��������D?.t��n
�	e�O��z�`Cy��
�cA�57�t	$$)fԡ�YP�J$� �g���PR%f���A�@����V����Lz�h7���@�h*��$c�]{��-��C���5:�lu^:�IJ�r�ZI�� _kQ
���	��M:ӡĂ��C��\R�F�┏�ZI�L8�G�E�H���Q�8X��b�	�
+��S�$� ���*RypZcf�r�@�x^X��,�hBրc����y*"�`?�Id�oGX���7/�� ��)�@�p��T�*kSnQ"�1�37�Ģ�y3w��}l�YR�&����=@;}�]�T�ܺV����=G4�*�3��uH�����3����WV�Z�1���,���,�L��au�C���f�m�p�����*�_� F/�#Xx6|`y뺋bHO=���jv	��FH@"E�dJjث�(!*=8U��<�i�1�y�2�S�<���5g(3���"��ZSq�,�).����$�$�դ�P�;t3�`�RtĢ�EIb�c�'!��UC�
E�yrˊY��݈hƷ�r�ʥΗC�>[���UJ�{��ib(O�E�YQ/��f&�����!�8��WY�ꋡ�<���2_|j����@;f� Tq�q*%�aRLj��#$�5�mT��]�T�틠Y�����wI���sԨ��b��`�b�t�G�
5I_�A�u۸�Tk�MB�%�0��5����^u�&zd�
��!n��Z߆(�K�n��C�8&wM��s���!"|1H�rIBPƨTh,�H��w�8�3\��=#9#�Q�iG.&��M܋�g�aU��k����R������|K$	7`lЈ	uA���@�Èb`/3$�+��p��x�@|���-�JSz���D���*k!���cJ%�N"�
�ސ�\���<��t2�|��G�OA�#��LI#�-R��aҁηI��qMRNm|�"�&�B�$T(�҃�pN�1qoB�Gx�!�oK� �-�R�B!
*V��eI�@X�U�@b�D���ST�6Zp���8K�2F��i].q��39�EK���+1L�&��1F%#R����8�	���f���ں�L�1Q�E �4�
��"�[���P�{.���[?�c���Df艄���dꚈ����"�#|��࿎�=����,r��'jL!y����'*i9��,S�x��{B����$�(�@�C�J�a����C>J������ / �Q�ĸ�U����@�	�ą� �9�Z�{��"��䁲�`֢�i$4���fZ9d����v�	�a�!Vb�# ��:�ѓ|!����|*�0V����͠fX5���4����H���ʗ^+�N��Q�r��P�pqDMjp�F!�D�A2rF��kl�P#Er PI�p�*b�XW�ֆ 9P��^��`l�	�	d��5�mM��Q�rX�9,q{e���=+�Q��$<Ӏ��_�H���kZb��|�	�7TFP�Cvsde$THQ\��(�r�rLZ�Ƣb�pP�=TG�+�&
{�7���V��6��k�+�-RY��pE�X�BU��^�Cך�%��pZ	hT��H5�:[��ȴ�C�v
�
QH�Xu-4C�1�F� ;�6�'$�f�C!�O2k�6I�:�y��DO��^37�y�o�P#�K�ґ�������U&Өu.q�U�=�|���I�F�ao�m����k��A���Sj�F���vP���q���v���{�v���
: J�@�7/ ���
�nLR�,9�=j�L�`���yꎄ�`�H�02���b��IYO�R%FACq}v����U(s���ԡiWYEʦ䪛5��A�ϴ~R��Taz?�b���$X0
����"�zm���N>Kӏ�@�
�B݀�i��T�
]J8$���^�AB�8��$I��>�D�_,�y����N���!�#��G9�b�v�~��?�~� ��~l	��B$����)����P�C��I`"J(���$�O�J�D�b�X��~i$|�
��ZhFE��$�����$�0\�J%��I�/�M��������xLf�~t����$����Rf�`�a%*�K"Bć!�7��ܑN$"�`� 