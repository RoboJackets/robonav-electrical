

ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

OBJDIR := BUILD
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

VPATH = ..


PROJECT := firmware

# files for igvc protobuf and nanopb src files
CSRC = mbed-libs/nanopb/igvc/igvc.pb.c  # The compiled protocol definition
CSRC += mbed-libs/nanopb/pb_encode.c  # The nanopb encoder
CSRC += mbed-libs/nanopb/pb_decode.c  # The nanopb decoder
CSRC += mbed-libs/nanopb/pb_common.c  # The nanopb common parts

OBJECTS += main.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_MemBox.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_Memory.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_Time.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_System.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_Task.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_Event.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mutex.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_M3/TOOLCHAIN_GCC/SVC_Table.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_M3/TOOLCHAIN_GCC/HAL_CM3.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/HAL_CM.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_List.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_Timer.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_OsEventObserver.o
OBJECTS += mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/rt_Robin.o
OBJECTS += mbed-libs/mbed-rtos/rtos/Mutex.o
OBJECTS += mbed-libs/mbed-rtos/rtos/Thread.o
OBJECTS += mbed-libs/mbed-rtos/rtos/RtosTimer.o
OBJECTS += mbed-libs/mbed-rtos/rtos/rtos_idle.o
OBJECTS += mbed-libs/mbed-rtos/rtos/Semaphore.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/memp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/dhcp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/snmp/asn1_enc.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/snmp/msg_out.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/snmp/asn1_dec.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/snmp/mib2.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/snmp/msg_in.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/snmp/mib_structs.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/raw.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/tcp_out.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/dns.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/init.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/mem.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/def.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/udp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/stats.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/tcp_in.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/ipv4/ip_addr.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/ipv4/autoip.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/ipv4/inet_chksum.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/ipv4/ip_frag.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/ipv4/ip.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/ipv4/igmp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/ipv4/icmp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/ipv4/inet.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/netif.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/tcp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/timers.o
OBJECTS += mbed-libs/EthernetInterface/lwip/core/pbuf.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/slipif.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/vj.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/auth.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/chpms.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/lcp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/pap.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/chap.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/magic.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/md5.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/fsm.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/ppp_oe.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/ppp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/ipcp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ppp/randm.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/ethernetif.o
OBJECTS += mbed-libs/EthernetInterface/lwip/netif/etharp.o
OBJECTS += mbed-libs/EthernetInterface/lwip/api/sockets.o
OBJECTS += mbed-libs/EthernetInterface/lwip/api/netdb.o
OBJECTS += mbed-libs/EthernetInterface/lwip/api/tcpip.o
OBJECTS += mbed-libs/EthernetInterface/lwip/api/err.o
OBJECTS += mbed-libs/EthernetInterface/lwip/api/netifapi.o
OBJECTS += mbed-libs/EthernetInterface/lwip/api/api_lib.o
OBJECTS += mbed-libs/EthernetInterface/lwip/api/api_msg.o
OBJECTS += mbed-libs/EthernetInterface/lwip/api/netbuf.o
OBJECTS += mbed-libs/EthernetInterface/lwip-eth/arch/TARGET_NXP/lpc_phy_dp83848.o
OBJECTS += mbed-libs/EthernetInterface/lwip-eth/arch/TARGET_NXP/lpc17_emac.o
OBJECTS += mbed-libs/EthernetInterface/EthernetInterface.o
OBJECTS += mbed-libs/EthernetInterface/lwip-sys/arch/memcpy.o
OBJECTS += mbed-libs/EthernetInterface/lwip-sys/arch/checksum.o
OBJECTS += mbed-libs/EthernetInterface/lwip-sys/arch/sys_arch.o
OBJECTS += mbed-libs/EthernetInterface/Socket/Socket.o
OBJECTS += mbed-libs/EthernetInterface/Socket/Endpoint.o
OBJECTS += mbed-libs/EthernetInterface/Socket/TCPSocketServer.o
OBJECTS += mbed-libs/EthernetInterface/Socket/UDPSocket.o
OBJECTS += mbed-libs/EthernetInterface/Socket/TCPSocketConnection.o
OBJECTS += mbed-libs/nanopb/igvc/igvc.pb.o
OBJECTS += mbed-libs/nanopb/pb_encode.o
OBJECTS += mbed-libs/nanopb/pb_decode.o
OBJECTS += mbed-libs/nanopb/pb_common.o

INCLUDE_PATHS += -I../
INCLUDE_PATHS += -I../carwars/mbed/ethernet
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/Socket
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip-eth
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip-eth/arch
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip-eth/arch/TARGET_NXP
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip-sys
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip-sys/arch
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/api
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/core
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/core/ipv4
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/core/snmp
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/include
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/include/ipv4
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/include/ipv4/lwip
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/include/lwip
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/include/netif
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/netif
INCLUDE_PATHS += -I../mbed-libs/EthernetInterface/lwip/netif/ppp
INCLUDE_PATHS += -I../mbed-libs/mbed
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/cache
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtos
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_k_l25_z
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_k_l25_z/_a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_l_p_c11_u24
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_l_p_c11_u24/_g_c_c___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_l_p_c11_u24/u_a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_l_p_c1768
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_l_p_c1768/_a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_l_p_c1768/_g_c_c___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_l_p_c4088
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_l_p_c4088/_a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_l_p_c4088/_g_c_c___c_r
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___a_r_m7
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___a_r_m7/_a_r_m7
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___a_r_m7/_a_r_m7/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___a
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___a/_a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___a/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___a/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___a/_t_o_o_l_c_h_a_i_n___i_a_r
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m0
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m0/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m0/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m0/_t_o_o_l_c_h_a_i_n___i_a_r
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m0_p
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m0_p/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m0_p/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m0_p/_t_o_o_l_c_h_a_i_n___i_a_r
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m3
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m3/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m3/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m3/_t_o_o_l_c_h_a_i_n___i_a_r
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m4
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m4/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m4/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___m4/_t_o_o_l_c_h_a_i_n___i_a_r
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___r_t_o_s___m4___m7
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___r_t_o_s___m4___m7/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___r_t_o_s___m4___m7/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___c_o_r_t_e_x___m/_t_a_r_g_e_t___r_t_o_s___m4___m7/_t_o_o_l_c_h_a_i_n___i_a_r
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m0
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m0/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m0/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m0_p
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m0_p/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m0_p/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m3
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m3/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m3/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m4
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m4/_t_o_o_l_c_h_a_i_n___a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx/_t_a_r_g_e_t___m4/_t_o_o_l_c_h_a_i_n___g_c_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx__ca
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/rtx__ca/_a_r_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___a_r_m___s_s_g
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___freescale
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___maxim
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___n_o_r_d_i_c
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___n_u_v_o_t_o_n
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___n_x_p
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___o_n_s_e_m_i
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___r_e_n_e_s_a_s
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___s_t_m
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___silicon___labs
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t___w_i_z_n_e_t
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/.hg/store/data/targets/_t_a_r_g_e_t__ublox
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/rtos
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/rtx
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_M3
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_M3/TOOLCHAIN_GCC
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/targets
INCLUDE_PATHS += -I../mbed-libs/mbed-rtos/targets/TARGET_NXP
INCLUDE_PATHS += -I../mbed-libs/mbed/.bld
INCLUDE_PATHS += -I../mbed-libs/mbed/TARGET_LPC1768
INCLUDE_PATHS += -I../mbed-libs/mbed/TARGET_LPC1768/TARGET_NXP
INCLUDE_PATHS += -I../mbed-libs/mbed/TARGET_LPC1768/TARGET_NXP/TARGET_LPC176X
INCLUDE_PATHS += -I../mbed-libs/mbed/TARGET_LPC1768/TARGET_NXP/TARGET_LPC176X/TARGET_MBED_LPC1768
INCLUDE_PATHS += -I../mbed-libs/mbed/TARGET_LPC1768/TARGET_NXP/TARGET_LPC176X/device
INCLUDE_PATHS += -I../mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM
INCLUDE_PATHS += -I../mbed-libs/mbed/drivers
INCLUDE_PATHS += -I../mbed-libs/mbed/hal
INCLUDE_PATHS += -I../mbed-libs/mbed/platform
INCLUDE_PATHS += -I../mbed-libs/nanopb
INCLUDE_PATHS += -I../mbed-libs/nanopb/igvc

SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/analogin_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/analogout_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/can_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/ethernet_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/flash_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/gpio_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/gpio_irq_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/i2c_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/mbed_board.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/mbed_retarget.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/mbed_sdk_boot.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/pinmap.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/port_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/pwmout_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/rtc_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/serial_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/sleep.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/spi_api.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/startup_LPC17xx.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/system_LPC17xx.o
SYS_OBJECTS += mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/us_ticker.o

LIBRARY_PATHS := -L../mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM
LIBRARIES := -l:libmbed.a
LINKER_SCRIPT ?= ../mbed-libs/mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/LPC1768.ld


AS      = 'arm-none-eabi-gcc' '-x' 'assembler-with-cpp' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m3' '-mthumb'
CC      = 'arm-none-eabi-gcc' '-std=gnu99' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m3' '-mthumb'
CPP     = 'arm-none-eabi-g++' '-std=gnu++98' '-fno-rtti' '-Wvla' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m3' '-mthumb'
LD      = 'arm-none-eabi-gcc'
ELF2BIN = 'arm-none-eabi-objcopy'
PREPROC = 'arm-none-eabi-cpp' '-E' '-P' '-Wl,--gc-sections' '-Wl,--wrap,main' '-Wl,--wrap,_malloc_r' '-Wl,--wrap,_free_r' '-Wl,--wrap,_realloc_r' '-Wl,--wrap,_memalign_r' '-Wl,--wrap,_calloc_r' '-Wl,--wrap,exit' '-Wl,--wrap,atexit' '-Wl,-n' '-mcpu=cortex-m3' '-mthumb'


C_FLAGS += -std=gnu99
C_FLAGS += -DDEVICE_ERROR_PATTERN=1
C_FLAGS += -DFEATURE_LWIP=1
C_FLAGS += -D__MBED__=1
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -DTARGET_NXP
C_FLAGS += -DTARGET_LPC176X
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DDEVICE_RTC=1
C_FLAGS += -DTOOLCHAIN_object
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -DTOOLCHAIN_GCC
C_FLAGS += -DDEVICE_CAN=1
C_FLAGS += -DTARGET_LIKE_CORTEX_M3
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -DARM_MATH_CM3
C_FLAGS += -DDEVICE_ANALOGOUT=1
C_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
C_FLAGS += -DTARGET_M3
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DTARGET_LPCTarget
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -DDEVICE_PORTOUT=1
C_FLAGS += -D__CORTEX_M3
C_FLAGS += -DDEVICE_STDIO_MESSAGES=1
C_FLAGS += -DTARGET_LPC1768
C_FLAGS += -DTARGET_RELEASE
C_FLAGS += -DDEVICE_PORTINOUT=1
C_FLAGS += -DDEVICE_SERIAL_FC=1
C_FLAGS += -DTARGET_MBED_LPC1768
C_FLAGS += -DDEVICE_PORTIN=1
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -DTOOLCHAIN_GCC_ARM
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1506793501.58
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DDEVICE_ETHERNET=1
C_FLAGS += -DDEVICE_SPISLAVE=1
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DDEVICE_SEMIHOST=1
C_FLAGS += -DDEVICE_DEBUG_AWARENESS=1
C_FLAGS += -DDEVICE_LOCALFILESYSTEM=1
C_FLAGS += -include
C_FLAGS += mbed_config.h

CXX_FLAGS += -std=gnu++98
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -DDEVICE_ERROR_PATTERN=1
CXX_FLAGS += -DFEATURE_LWIP=1
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -DTARGET_NXP
CXX_FLAGS += -DTARGET_LPC176X
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DDEVICE_RTC=1
CXX_FLAGS += -DTOOLCHAIN_object
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -DTOOLCHAIN_GCC
CXX_FLAGS += -DDEVICE_CAN=1
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M3
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -DARM_MATH_CM3
CXX_FLAGS += -DDEVICE_ANALOGOUT=1
CXX_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
CXX_FLAGS += -DTARGET_M3
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DTARGET_LPCTarget
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -DDEVICE_PORTOUT=1
CXX_FLAGS += -D__CORTEX_M3
CXX_FLAGS += -DDEVICE_STDIO_MESSAGES=1
CXX_FLAGS += -DTARGET_LPC1768
CXX_FLAGS += -DTARGET_RELEASE
CXX_FLAGS += -DDEVICE_PORTINOUT=1
CXX_FLAGS += -DDEVICE_SERIAL_FC=1
CXX_FLAGS += -DTARGET_MBED_LPC1768
CXX_FLAGS += -DDEVICE_PORTIN=1
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -DTOOLCHAIN_GCC_ARM
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1506793501.58
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DDEVICE_ETHERNET=1
CXX_FLAGS += -DDEVICE_SPISLAVE=1
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DDEVICE_SEMIHOST=1
CXX_FLAGS += -DDEVICE_DEBUG_AWARENESS=1
CXX_FLAGS += -DDEVICE_LOCALFILESYSTEM=1
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h

ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -D__CMSIS_RTOS
ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -D__CORTEX_M3
ASM_FLAGS += -DARM_MATH_CM3


LD_FLAGS :=-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_memalign_r -Wl,--wrap,exit -Wl,--wrap,atexit -Wl,-n -mcpu=cortex-m3 -mthumb
LD_SYS_LIBS :=-Wl,--start-group -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys -Wl,--end-group


.PHONY: all lst size


all: $(PROJECT).bin $(PROJECT).hex size


.asm.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.S.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<


$(PROJECT).link_script.ld: $(LINKER_SCRIPT)
	@$(PREPROC) $< -o $@



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(PROJECT).link_script.ld
	+@echo "link: $(notdir $@)"
	@$(LD) $(LD_FLAGS) -T $(filter %.ld, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)


$(PROJECT).bin: $(PROJECT).elf
	$(ELF2BIN) -O binary $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ ====="

$(PROJECT).hex: $(PROJECT).elf
	$(ELF2BIN) -O ihex $< $@



DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif
