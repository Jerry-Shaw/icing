all: unitinfo.cake svcBackdoor.cake

%.cake: %.yaml %.s patissier.py
	armips $(basename $@).s
	py -3 patissier.py $(basename $@).yaml $@

.PHONY: clean
clean:
	rm -f *.cake *.bin
