# -*- Makefile -*-
#

TARGETS = miniecu_v1

all: $(TARGETS)

miniecu_v1:


%: ./boards/%
	make -C ./pb
	make -C ./boards/$@

clean:
	for target in $(TARGETS); do \
		make -C ./boards/$$target clean; \
	done
