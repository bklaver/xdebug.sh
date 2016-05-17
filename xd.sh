

phpinipath=/c/wamp/bin/apache/apache2.4.9/bin/php.ini

case $1 in
  on)
    sed -i 's/xdebug.remote_enable=0/xdebug.remote_enable=1/g' ${phpinipath}
    sed -i 's%;zend_extension="c:/wamp/bin/php/php5.5.12/zend_ext/php_xdebug-2.2.5-5.5-vc11-x86_64.dll"%zend_extension="c:/wamp/bin/php/php5.5.12/zend_ext/php_xdebug-2.2.5-5.5-vc11-x86_64.dll"%g' ${phpinipath}   
      echo "XDebug On"
      ap.sh

  ;;
  off)
    sed -i 's/xdebug.remote_enable=1/xdebug.remote_enable=0/g' ${phpinipath}
    sed -i 's%zend_extension="c:/wamp/bin/php/php5.5.12/zend_ext/php_xdebug-2.2.5-5.5-vc11-x86_64.dll"%;zend_extension="c:/wamp/bin/php/php5.5.12/zend_ext/php_xdebug-2.2.5-5.5-vc11-x86_64.dll"%g'  ${phpinipath}
    echo "XDebug Off"
    ap.sh
  ;;
  status)
    grep "zend_ext" ${phpinipath}
    grep "xdebug.remote_enable" ${phpinipath}
  ;;
  *)
    echo "Usage: xd on|off|status"
  ;;
esac