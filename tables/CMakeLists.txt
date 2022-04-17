fcitx5_translate_desktop_file("flypy.conf.in" "flypy.conf")
add_custom_command(OUTPUT "flypy.main.dict"
  DEPENDS "flypy.txt"
  COMMAND LibIME::tabledict ARGS "${CMAKE_CURRENT_SOURCE_DIR}/flypy.txt"
  "${CMAKE_CURRENT_BINARY_DIR}/flypy.main.dict")
add_custom_target(table_data ALL DEPENDS "${CMAKE_CURRENT_BINARY_DIR}/flypy.main.dict")

install(FILES "${CMAKE_CURRENT_BINARY_DIR}/flypy.conf" DESTINATION "${FCITX_INSTALL_PKGDATADIR}/inputmethod")
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/flypy.main.dict" DESTINATION "${FCITX_INSTALL_PKGDATADIR}/table")
install(FILES flypy.lua DESTINATION "${FCITX_INSTALL_PKGDATADIR}/lua/imeapi/extensions" COMPONENT config)