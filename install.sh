#!/system/bin/sh

SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

REPLACE="
"

print_modname() {
  ui_print "*********************************"
  ui_print "  🚀 Mvast Kernel Tweak 🚀      "
  ui_print "*********************************"
  ui_print "         Contributor:             "
  ui_print "       - Ryndi              "
  ui_print "       - Viska          "
  ui_print "       - 香川 (Kagawa)   "
  ui_print "*********************************"
  ui_print "      /\\  /\\                     "
  ui_print "     (  \\/  )   All In Mvast    "
  ui_print "      \\    /                     "
  ui_print "       \\/\\/                      "
  ui_print "*********************************"
  sleep 1
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
chmod +x "$MODPATH/system/bin/mkt"

}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0777 0755
}