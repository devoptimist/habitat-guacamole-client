pkg_name=guacamole-client
pkg_origin=devoptimist
pkg_version="1.0.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_source="http://mirror.ox.ac.uk/sites/rsync.apache.org/guacamole/${pkg_version}/binary/guacamole-${pkg_version}.war"
pkg_shasum="93f66f43f4ea77011dc44df2aeeb297dd270cb0f34593d221e58968216a469cf"
pkg_deps=(core/tomcat8 core/corretto)

pkg_exports=(
  [tomcat-port]=tomcat.port
  [tomcat-address]=tomcat.listen_address
)

pkg_binds=(
  [webproxy]="webproxy-http-port"
  [webproxy]="webproxy-https-port"
)
pkg_exposes=(tomcat-port)

do_unpack() {
  return 0
}

do_build()
{
  return 0
}

do_install()
{
  cp ${HAB_CACHE_SRC_PATH}/guacamole-${pkg_version}.war ${PREFIX}/guacamole.war
}
