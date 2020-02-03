#
# Makefile for uECC stuff
#

include $(TOPDIR)/config.mk

LIB   = libuecc.a
OBJS += uECC.c

all:    $(LIB)

$(LIB): $(OBJS)
	    $(AR) crv $@ $(OBJS)

#########################################################################

.depend: Makefile $(OBJS:.o=.c)
	     $(CC) -M $(CFLAGS) $(OBJS:.o=.c) > $@

sinclude .depend

#########################################################################

