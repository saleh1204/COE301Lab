PDF :=  COE301_Lab01_Introduction_to_MARS.pdf                         \
        COE301_Lab02_Introduction_to_MIPS_Assemply_Programming.pdf    \
        COE301_Lab03_Integer_Arithmetic.pdf                           \
        COE301_Lab04_Flow_Control.pdf                                 \
        COE301_Lab05_Arrays_Files.pdf                                 \
        COE301_Lab06_Multiplication_Division.pdf                      \
        COE301_Lab07_MIPS_Functions.pdf                               \
        COE301_Lab08_MIPS_Exceptions_IO.pdf                           \
        COE301_Lab09_Floating_Point.pdf     
		
all: pdf


pdf: $(PDF)

%.pdf: %.tex
	pdflatex -shell-escape  --interaction=batchmode $<
	pdflatex -shell-escape  --interaction=batchmode $<

clean: clean_aux
	rm -f $(PDF)

clean_aux: 
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.gz *.vrb

.PHONY: all clean clean_aux pdf
