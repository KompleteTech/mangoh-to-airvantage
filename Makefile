# Makefile ---
#
# Author: Majdi Toumi
# Created: Mon Jun 26 10:58:58 2017 (+0100)
# Last-Updated: Wed Jun 28 13:37:00 2017 (+0100)
#           By: Majdi Toumi
# Version: 1.0.0
#
# THE AIEOWTEA-WARE LICENSE
# Majdi Toumi wrote this file
# As long you retain this notice, you can do whatever
# you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a cup of tea in return.
#
# Let's Rock!
#

#
# CONFIGURATIONS
#
TARGETS := ar7 ar86 wp85 localhost wp750x

#
# RULES
#
all	: $(TARGETS)

$(TARGETS):
	mkapp -v -t $@ \
	-i $(LEGATO_ROOT)/interfaces/airVantage \
	-i myComponent/utils/i2c \
	-i myComponent/utils/lsm6ds3 \
	mangohToAirvantage.adef

clean:
	rm -rf _build_* *.update

#
# SPECIAL BUILT-IN
#
.PHONY	: all $(TARGETS)
