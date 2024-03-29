\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pdfhandout}[2021/04/26 Ridenour handout class]

\DeclareOption*
{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

\usepackage{sidenotes,ragged2e,authoraftertitle} % Use \sidenote{sidenote text}

% Reduce font size in sidenotes.

\RenewDocumentCommand\sidenotetext{ o o +m }{%    
  \IfNoValueOrEmptyTF{#1}{%
    \@sidenotes@placemarginal{#2}{\textsuperscript{\thesidenote}{}~\footnotesize#3}%
    \refstepcounter{sidenote}%
  }{%
    \@sidenotes@placemarginal{#2}{\textsuperscript{#1}~#3}%
  }%
}


\usepackage{fancyhdr}
\setlength{\headheight}{15.2pt}
\pagestyle{fancy}

\usepackage{graphicx,epstopdf,amsmath,amssymb,url}
\usepackage[normalem]{ulem}
\usepackage{microtype}
\usepackage[american]{babel}
\usepackage[autostyle]{csquotes}
\usepackage[letterpaper,left=1in,top=1in,headsep=2\baselineskip,textwidth=26pc,marginparsep=2pc,marginparwidth=12pc,textheight=44\baselineskip,headheight=\baselineskip]{geometry}

\usepackage[sf,sc]{titlesec}
\usepackage[parfill]{parskip} % Line between paragraphs

\clubpenalty = 10000 % Reduce orphans and widows
\widowpenalty = 10000


% Adjust list spacing. Use \setlist[nosep] to reduce all vertical spacing in lists. \setlist[wide] to remove indentation.
\usepackage{enumitem}

% Libertinus Fonts
\usepackage{libertinus-type1}
\usepackage{libertinust1math}
\usepackage[T1]{fontenc}

\usepackage[unicode=true]{hyperref}

\renewcommand\maketitle
{\noindent
  {\LARGE\scshape\sffamily\@title}\\%
  \noindent
  {\large\scshape\sffamily\@author}\\%
  \noindent
  {\scshape\sffamily\@date}%
  \bigskip\par\noindent
}

\renewcommand{\footnote}{\sidenote}

\fancyheadoffset[R]{\dimexpr\marginparsep + \marginparwidth}
% \fancyheadoffset[R]{14pc}
\fancyhead[L,C]{}
\fancyhead[R]{\textbf{\textsf{\textsc{\MyTitle \phantom{X} \thepage}}}}
\fancyfoot[L,C,R]{}

\endinput
