# latex-handout

This is a class for PDFLaTeX handouts styled to have a similar layout to the Tufte handouts, but not as opinionated as the Tufte class. I like the Tufte class layout with narrow text and generous space for sidenotes, but prefer to use BibLaTeX, which causes problems for the Tufte class. Feel free to use section numbering or not, and change the font to whatever you like. 

The footnote command is redefined as sidenote, so use either `\sidenote{}` or `\footnote{}` for sidenotes. The first two lines after `\maketitle` should be `thispagestyle{empty}` and `\RaggedRight`.  The first removes from the first page the horizontal line with the document title and page number that appears on subsequent pages  The second ensures that sidenotes don't have awkward word spacing, since they have a very narrow width.

