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
BZh91AY&SY:�� ��u�  ����������p�F��  `���V���뙋ڶRҳ���d�ZUE�lh4Қ��H�H�
cT�������=5�=I���  z� 44QM�i��10ɓ�L  	���0!�& &8   �   4   @ DH&���IO&ԛI��b�M��2�4Lj��j4h@E ��&�(j����)���C���'���h?T�x�F�M=FF�z�RD&���&�i�d���J<S�i������4���� 4Ѧ�� 31�GgX���yU��\\��+�@�úpy��@-�AcX橧���|0A&O�<�����sbL5[;�b�y{�Ɓ�d�E����[�B�G%*���O,�]� ���6O~��&�j�T�d�n,�(pj,��b�_RZ�L 	�A#Nl/�e^(�޻iu b�w;9d��3�ţM&:ꥥ�Y{n�����6�S���Rb�gW�!�&�����Q���GN�>�Ij�?�V��۳r��T4��\��b;8IKc`�c@�M�U��W��f���"�?�}�O,�2���&�w��'yv�wY�� ��F��NQ7�6~�sh<A�5ac�����(9�����8�����[b��^���uyS[���O!� I����~���孜�(��Pt<l�U��[� W�*�s=�cҡ�<��l��[08���*�k�6��D鮬�E�������.��������W�P4�5\cP�V���+f;���1�"�n���l�r���,�f^mm�![�aì�R�5��t�C��EI�����X�==�l�.�5�IW��p�EH�����T`��<5384;52�فH�R�XV
��m3_:�o:�0a�{	#��Έ�a�`b��Lr�
I�:P ���Vڮ���g\k<}Q3��%E�5UI�}��T��wn����f�O�	�؜햆#�_w{��F{4l�Mkt�c�QB|���K�GLJ�C�-��e#��u�w8�Ж��16����<yn�ɚ���ff�f�����M*q�S���!�4�z|�Y��&�=SV]k�G#�M�[l��P�_]~����^o͡��Q+0M��c��K6rg�p��xG4��=�p0,�Ǿ���P���h�N[�m��Y�(U1L�x��m�?eO_���B�$IJ�J#�N���<K;T^R�JTʭ*R��w�'�v�~9gŊ��x���3���"�b�M��0�ьI �A,0[
F!��4�6�M5�4C%AJ.k����m:�EEy��"�CA��������(m� Ah�AC=�h��e����S�S?�֩�d�'a|P�ur�zh��5E��x_����z��M�Oo��E͘f��YoNMB�1��I��L�e)mU)�y�' �/<(6Mj��T��h��!y�~��w�(�|�Cp�BP�}��x����x��%�i]>�ꮵFS�#K�)���99pV��p��B�n���Xy��wǢ�����&E�h���·���<�����$��B6m1% d�E�Fؐ�G���k����#�?�Ð�zg����Y�����eş����g�E5��n{,��iن�/�K5jmz�]��� <��ʚ��Х����R���
� pQHq�sN�2�]��8 �p�>�"Z��t#X�5B��$btr�A@����/�Z��f�>�!�;Dc��hU�릉��x�;J�I��:N����#�~�!p�΁/��c�g��d��R͛<�{y�g3����;VpU��UE)�H<��2L�,�"�,S�p3}e�"�dF�+7}��<i2�W�Hj����t�Ǣ��[r,�ܰ�$��I`�}��;��*ǟ�x�/A�\�0��ha��``<��7WsUS��Χ��|����צVA����s�Dȱ�{�\��X(-��W�Ғ"��R�3��__%ԥ1z�bB$����C��dmXXR�4^bH� r��sQT�3���W�i[*�T��p|}�ݙK+hg�DuST��S��<�M���j�A��Is�8~^�J�%P_���K+^$d���9��bE1���r�� �no'N�2w)&@�#=�Zq�����Zҫ��j1��nf��L0m͋*P�Gl�2QJ)E(��__�'���%sޚ�AEj�����E�D+y��<��&!�!q�}/�P"�?W�C�����:���c3�P`i��
� V{9����bd����p�ᔏ��&2'�}��ݩm�Q�1��E%E���,����b���M�\s�d�>���H
�k�٭~�M`az��B���Mvh5gْ�ۣ���1%Y���^��>+jI�c�vlef+i�vȀ�Wή��P��JΨ�E�?Yr-M�u�����T�kk��t�m�u�cӃ�" ns�ڬ�{(�%/�Z��-�
�ʣ�$�u]�;x'�~��l��dԩ�KwQg�Ƣ�M���ma��Rsx�����C,0�s|4�$��e(��� �'�$�`Hc#�F(�B�z�)�uX��q�u(����7����j0�A��R�s��5u����Ss���+�g������%�lP��֏e����{�s#��l\� 꺴�b{�mC	� �%'P����z�ηV�_���>�#.N�g��:wؽ�z'O�Z�T�UEIUU-��r}�%�y)��0��C��˩B�,��9Ba`E��#p/~�	�����W�Wa��Q��f/ ��/����n�h�y��ű$�׬����#�N��F��u(�=��u��m�s��y�S��m����o9�%�T0�S��L�e�����ey
I�/Y^�"��fSä&��oJ�����X\�RdkH�Z�rI8�����e�aU}��m_���'Th����ˮA�sB��d�`T��3�|[\'(O}��c�8�i0i�{,�K�^Kil{�X�ٮ��IO[��K�������KYS��I�2��2zj*�I�ӓ��]C��p:���F�s�?��s=i�n^H~�gJ�i91'��J6H-�6��T ���t����gSI/�L*`K
IuYI%$��9�l�w�k2Jkl�Jy0�x�:SSn���*�km�1��l�l�����~b�b�YU����"o)+/��㯂NRskz��d&�钐hKż։<�"j�po�OB��x�16#����V�����#q1��Cn���4���RUR�W��ǷR��\�R^3f���	���ƣB�U�n�eY�*U(��bhi�	�ۈ�b1�Y7$�2�/�I�J�י�w�Z��e��nA��I��99�EI�M�P6�r5-lY��5�D�D&M�%��ݲ�vǺ��>�Э����k�G��ŴY�g"�kl$^^1����`X̚�n&�&�\T�X
I)\vYFӍj�ȼ�z���5|�j��Mk-�D�E���<W�ʅ[qr]�[	��h��U����~��m��bT��՜IP�m�4��K�v����a�3��I�r���7��o;�ZM�7UY��6��X�b��l�xw)>G9Cpɘv��>��R��I��|��,xd����c9��a�ūQX�E9n]A2�7�, �IO��EE�ޯ�,;�:6,��0�h�<���?�8OT%]�)��!���Fg^Ha�I�N��Z�\� y�p�r�
RdU�i;Q�����ְ���>�Q����D�**�I!Q����* OO���������P����Fn�?�]��B@D��l