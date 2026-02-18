TARGETS := sysmodule

.PHONY: all clean $(TARGETS)

# Build each target
sysmodule:
	$(MAKE) -C $@

all: $(TARGETS)
	mkdir -p ./out/atmosphere/contents/0100000000000FED/flags
	cp ./sysmodule/sysmodule.nsp ./out/atmosphere/contents/0100000000000FED/exefs.nsp
	cp ./sysmodule/toolbox.json ./out/atmosphere/contents/0100000000000FED/
	touch ./out/atmosphere/contents/0100000000000FED/flags/boot2.flag

# Clean each target
clean:
	for dir in $(TARGETS); do \
		$(MAKE) -C $$dir clean; \
	done
	rm -rf ./out