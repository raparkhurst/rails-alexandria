NAME=alexandria
VERSION=`cat ../alexandria/version.txt`
DATE=`date '+%Y%m%d-%H%M%S'`
BUILD_ID="${VERSION}-${DATE}"
PKG_TYPE=deb

package:
	fpm -s dir -t ${PKG_TYPE} -n ${NAME} -v ${BUILD_ID} --prefix /var/www/ -C ../alexandria
