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
BZh91AY&SY�uCW ��mw@ ����������P F �  `/�BA�m���0@)@ T�@@e#B1'�i����z���h �6��@ h 8  hd h @44  � � �����@� 4C@ � 8  hd h @44  � �1M�H�I�)��hh�6��ё��!��4zL��A"B�2	�LFMFL�S��&�T�&SI��z��ښ x�� l�kF*�J��{��V�2�̉he�ę%���Px�T�Gu]7�i���Y2J��K*A��H������dJxTg?����t�rUf��$[s���d;�` w"��o.K!$��e˪9����|F���38�g3�$��=e�5�f`��Ue���f�33�v�HH���꼔�sH���֨L.�P��q�6=$�A q�#� c
C8	�Z���E��)�Z�jn����ɢ,3hhg�5��z�G �. g8C��d�xהU�b��'$r�!���}������1ã�If`�na2®cK7���r��D�2ǿ���$$�u[m�܅�v���L����%� ydhx�F�!G0~��=�[e�}���|:�-0���Y���O�������x�=\c���]��a�.$N_�.ې�k&�@�@Ċ
/��n����D$�b�y�g����//�`�ϒ̾�䪻 �K��?s�Y�3�3���Q����b�R����������b��H?iv��=�Vj�����<�1Kg�������ů�{� V�`�� �����_x��	U��������[�-���o7m� ��hka z��@�,�{Ѭ�7��$^���I���	b�R�)�T�T$"���}?S�I��j~ �"�����8x]��Z�`K r͜�r�ps��q&�!�����O��߮����%����ɰ�wTx��n?A�5���|���E`P�ZCbq����F�X�Z��	L�W�ɞ��<Uq!�4�=�%�b.'�����Cxs�5��eU_C>�!P��Dz$F�(��|ev���H+P�?jU��������"sS��P�N	�f�haq��ƛ��6��PM�ۻ��G]]/�|��vI#E�XSB]��^cv�H����m��ud�� |�Fp��í0���ʥDSbKˋP����!�>�NQ9<1��F�6�@БCN��U���%O��}e��F��P�5\����^^�qX蹋�
�l���۠Z7�v�@�ǜ&|@�[���ρ/E�u�w�Rn�po��[	�f��HQr��oN<�s���.��-���f�-�r��p�گ���5 �ژL�)��h-~I@Q$we�<~iN��,<;���9���q��PjD?bt5��y9ʆ�m��E��5�м��Q�+�g����-W-�x��sf�#��&\Vx��H�j�q�f�;�$���Fa��uА�/�f��紙�:yV�4�n�����'WU���We��Vtp�*
�:�u�6�L�F��I �!+�[e�fw��$zt�1=
"��gE�9��<�=EAhs����1�*�����:K�c���s�YSF��N�Ø�5uh Y�@�����i�mW��Mt(뗙�' ���M#���O���T>Rk�����=�Ȼ���ZTK�}{�ru\�t�y�_3�JD���M'�g��4�~��A�W�b�X���nJ��@�|���^�xU�$���/�e�����R=d��� �֓����Z������҉H��Ç�烴��K"t�@�;X �����9( �{Ǥ:`] v�8P͟t�b����"��fY�6|�D�/�Z���4��� p&�M)�Ǩ�Y�2X�^��x�=��r�@\�ʺj���d6��ׁmh8]�
8"�:�J�(Q�p	l|��[-��<���+���N(ʈ�P�2UW������&�1u�F)� H$"���C�\\l]8������Z@��P�Dx�/X�J�a�P��V%0cMD5���\��T-aZᘃb%h!���6��f�΄�6�m��z��%���R�p7 V�$�z6��]E� d����*�Hv������K��,����_�	P�������o�09!R�I�B(ʏ+54��K�17f�b��F� i_�8�ťg@�N��A.��v��	�!�!(��i!C!&���ՏPm���1v�����b�?��&�-�r�qB�����S~>����l��nt���y��JGh��P�1V��IvUT}C8��1��݊�\���Rl�[4�[M����w�2������[�	s�+J�㜬$�46"��fc#�aX԰�����/w��+�Z~����8�H(��`Tf�������L����D|��	v�^�8V��X�1<��H����4�Y��W(P��$&6���JQ�)[ �P�T)�m8����J��X��,(�R`Vm�Y�y�p��F��V�����b��R��]a>��۴���jA:v�;�����\G�y*b�2��Y�{f�B�q�U�ʆ��4l�T�B��5)��RP�PT�Ji�@b%�&	�מk0ĸ9_����נ�u�0��:��x��xH7��X��"�X,Ch��H�t!,[ � �#�ѱ� �b���閠�0f	wH��>qj�"0XT�ҰI{�+���)��b�0�0 ����Z3�" P
�ƨ��ԷZ
v��Ҋ�T�I,H.�+�d\Ӫw#6d!�U�ő���o@�_YTD0�)��L�%�+$/H�ƨ2E���BCR8��&�� �4��QRn ��1����H6�mG10PR��XX]@�'��r����c�EB۬���@3��UHD�hHmg�f
h$1k�̂�J0AWF���ZBH�ֵ8Q�Pɂ������)s���>� 3���-F���
��b��V ��#$�BU�`�u��?F��3J&�Ty:j���� ���P�qo!��l�j9�-�`�C��*PApṔ�<8�3�s/��?�L3T"6��c�f�YpI=���L�F�໻樎�*�n�1�tS�z������zlm��E�DP����(
l�ο�T<�B	HH(�H)��ܑN$3�P��