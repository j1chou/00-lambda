#####################################################################################################
COURSE=cs130sp19
ASGN=00
COMPILER=lambda
#####################################################################################################

test:
	stack test --allow-different-user

bin:
	stack build --allow-different-user

clean:
	stack clean --allow-different-user

turnin: 
	git commit -a -m "turnin"
	git push origin master

#turnin: clean
#	tar -zcvf ../$(ASGN)-$(COMPILER).tgz --exclude .git --exclude .stack-work ../$(ASGN)-$(COMPILER)
#	mv ../$(ASGN)-$(COMPILER).tgz .
#	turnin -c $(COURSE) -p $(ASGN) ./$(ASGN)-$(COMPILER).tgz
