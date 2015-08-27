function(eth_apply TARGET REQUIRED)	
	if (MINIUPNPC_FOUND)
		target_include_directories(${TARGET} SYSTEM PUBLIC ${MINIUPNPC_INCLUDE_DIRS})
		target_link_libraries(${TARGET} ${MINIUPNPC_LIBRARIES})
		target_compile_definitions(${TARGET} PUBLIC ETH_MINIUPNPC)
	elseif (NOT ${REQUIRED} STREQUAL "OPTIONAL")
		message(FATAL_ERROR "Miniupnpc library not found")
	endif()
endfunction()