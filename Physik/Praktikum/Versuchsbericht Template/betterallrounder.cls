\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{betterallrounder}[2023/03/16 Better Allrounder Format]
\LoadClass{report}





%%%%%%%%%%%%
% Packages %
%%%%%%%%%%%%

\RequirePackage[main=ngerman,english]{babel}				% manages typographical rules
\RequirePackage[T1]{fontenc}								% select font encoding
\RequirePackage[tmargin=2cm,rmargin=1in,lmargin=1in,margin=0.85in,bmargin=2cm,footskip=.2in]{geometry} % customize page layout
\RequirePackage{amsmath,amsfonts,amsthm,amssymb,mathtools}	% math tools, symbols and fonts
\RequirePackage[varbb]{newpxmath}							% fixes and enhances math smybols and other
\RequirePackage{xfrac}										% typeset fractions in the form ‘n/d’
\RequirePackage[makeroom]{cancel}							%+ allows diagonal lines ('cancelling' a term)
\RequirePackage{bookmark}									% implements a new bookmark org for package 'hyperref'
\RequirePackage{enumitem}									% provides control over layout of 'enumerate', 'itemize' and 'description'
\RequirePackage{hyperref,theoremref}						% handles cross-referencing and links
\hypersetup{
	colorlinks=true, linkcolor=documentcolor!90,
	bookmarksnumbered=true,
	bookmarksopen=true,
	urlcolor=documentcolor
}
\RequirePackage[most,many,breakable]{tcolorbox}				% provides an environment for coloured and framed text boxes
\RequirePackage{xcolor}										% provides access to colors
\RequirePackage{tabularx}									% provides a new tabular environment
\RequirePackage{transparent}								% provides a transparency value for colors
\RequirePackage{varwidth}									% variable-width minipage
\RequirePackage{makecell}									% supports common layouts for tabular column heads in whole documents
\RequirePackage{etoolbox}									% provides LATEX frontends
\RequirePackage{nameref}									% allows referencing to an object by its name
\RequirePackage{multicol,array}								% provides multicol tables and extends array and tabular env
\RequirePackage{tikz-cd}									% typeset commutative diagrams and mathematical pictures
\RequirePackage[ruled,vlined,linesnumbered]{algorithm2e}	% environment for writing algorithms
\RequirePackage{import}										% establish input relativ to a directory
\RequirePackage{xifthen}									% provides if-else commands
\RequirePackage{pdfpages}									% simplifies inclusion of external multi-page pdf docs
\RequirePackage{tikz}										% create graphics
\RequirePackage{tikzsymbols}								% provides tikz symbols
\RequirePackage{titletoc}									% alternative headings for toc/lof/lot
\RequirePackage{sectsty}									% change color of chapters, sections
\RequirePackage{parskip}									% tidy up par
\RequirePackage{pgfplots}									% create normal/logarithmic plots in two and three dimensions
\pgfplotsset{compat=1.18}





%%%%%%%%%%%%
% Preamble %
%%%%%%%%%%%%

% set font for text and math env
\renewcommand{\familydefault}{\sfdefault}
\DeclareSymbolFont{letters}{OML}{cmm}{m}{it}
\DeclareSymbolFontAlphabet{\mathnormal}{letters}

% change color of chapter, section and subsection headings
\chapterfont{\color{documentcolor!90}}
\sectionfont{\color{documentcolor!70}}
\subsectionfont{\color{documentcolor!50}}

%-------------------%
% Table of Contents %
%-------------------%

\contentsmargin{0cm}
\titlecontents{chapter}[3.7pc]
{\addvspace{30pt}
	\begin{tikzpicture}[remember picture, overlay]
		\draw[fill=documentcolor!60,draw=documentcolor!60] (-7,-.1) rectangle (-0.9,.5);
		\pgftext[left,x=-3.5cm,y=0.2cm]{\color{white}\Large\bfseries Kapitel\ \thecontentslabel};
	\end{tikzpicture}\color{documentcolor!60}\large\bfseries}
{}
{}
{\;\titlerule\;\large\bfseries Seite \thecontentspage
	\begin{tikzpicture}[remember picture, overlay]
		\draw[fill=documentcolor!60,draw=documentcolor!60] (2pt,0) rectangle (5,0.1pt);
	\end{tikzpicture}}

\titlecontents{section}[3.7pc]
{\addvspace{2pt}}
{\color{documentcolor!100}\contentslabel[\thecontentslabel]{2pc}}
{}
{\color{documentcolor!60}\hfill\small \thecontentspage}
[]

\titlecontents*{subsection}[3.7pc]
{\addvspace{-1pt}\small}
{}
{}
{\color{documentcolor!60}\ --- \small\thecontentspage}
[ \color{documentcolor!100}\textbullet\ ][]

\makeatletter
\renewcommand{\tableofcontents}{
	\chapter*{
	  \vspace*{-20\p@}
	  \begin{tikzpicture}[remember picture, overlay]
		  \pgftext[right,x=17cm,y=0.2cm]{\color{documentcolor!60}\Huge\bfseries \contentsname};
		  \draw[fill=documentcolor!60,draw=documentcolor!60] (12.4,-.75) rectangle (20,1);
		  \clip (12.4,-.75) rectangle (20,1);
		  \pgftext[right,x=17cm,y=0.2cm]{\color{white}\Huge\bfseries \contentsname};
	  \end{tikzpicture}}
	\@starttoc{toc}}
\makeatother

%------------------%
% TColorBox Setups %
%------------------%

\setlength{\parindent}{1cm}

%................%
% Definition Box %
%................%

\makeatletter
\newtcbtheorem[number within=section]{definition}{Definition}{enhanced,
	breakable,
	colback=white,
	colframe=definitioncolor!85!black,
	attach boxed title to top left={yshift*=-\tcboxedtitleheight},
	fonttitle=\bfseries,
	title={#2},
	boxed title size=title,
	boxed title style={%
			sharp corners,
			rounded corners=northwest,
			colback=tcbcolframe,
			boxrule=0pt,
		},
	underlay boxed title={%
			\path[fill=tcbcolframe] (title.south west)--(title.south east)
			to[out=0, in=180] ([xshift=5mm]title.east)--
			(title.center-|frame.east)
			[rounded corners=\kvtcb@arc] |-
			(frame.north) -| cycle;
		},
	#1
}{def}
\makeatother

%..............%
% Beispiel Box %
%..............%

\newtcbtheorem[number within=section]{beispiel}{Beispiel}
{%
	colback = examplecolor!15
	,breakable
	,colframe = examplecolor
	,coltitle = examplecolor
	,boxrule = 1pt
	,sharp corners
	,detach title
	,before upper=\tcbtitle\par\smallskip
	,fonttitle = \bfseries
	,description font = \mdseries
	,separator sign none
}
{ex}

%..........%
% Satz Box %
%..........%

\tcbuselibrary{theorems,skins,hooks}
\newtcbtheorem[number within=section]{satz}{Satz}
{%
	enhanced,
	breakable,
	colback = satzcolor!15,
	frame hidden,
	boxrule = 0sp,
	borderline west = {2pt}{0pt}{satzcolor},
	sharp corners,
	detach title,
	before upper = \tcbtitle\par\smallskip,
	coltitle = satzcolor,
	fonttitle = \bfseries\sffamily,
	description font = \mdseries,
	separator sign none,
	segmentation style={solid, satzcolor},
}
{th}

%...........%
% Lemma Box %
%...........%

\tcbuselibrary{theorems,skins,hooks}
\newtcbtheorem[number within=section]{lemma}{Lemma}
{%
	enhanced,
	breakable,
	colback = lemmacolor!15,
	frame hidden,
	boxrule = 0sp,
	borderline west = {2pt}{0pt}{lemmacolor},
	sharp corners,
	detach title,
	before upper = \tcbtitle\par\smallskip,
	coltitle = lemmacolor,
	fonttitle = \bfseries\sffamily,
	description font = \mdseries,
	separator sign none,
	segmentation style={solid, lemmacolor},
}
{th}

%..............%
% Korollar Box %
%..............%

\tcbuselibrary{theorems,skins,hooks}
\newtcbtheorem[number within=section]{korollar}{Korollar}
{%
	enhanced
	,breakable
	,colback = korollarcolor!15
	,frame hidden
	,boxrule = 0sp
	,borderline west = {2pt}{0pt}{korollarcolor}
	,sharp corners
	,detach title
	,before upper = \tcbtitle\par\smallskip
	,coltitle = korollarcolor
	,fonttitle = \bfseries\sffamily
	,description font = \mdseries
	,separator sign none
	,segmentation style={solid, korollarcolor}
}
{th}

%...........%
% Frage Box %
%...........%

\makeatletter
\newtcbtheorem{frage}{Frage}{enhanced,
	breakable,
	colback=white,
	colframe=questioncolor!85,
	attach boxed title to top left={yshift*=-\tcboxedtitleheight},
	fonttitle=\bfseries,
	title={#2},
	boxed title size=title,
	boxed title style={%
			sharp corners,
			rounded corners=northwest,
			colback=tcbcolframe,
			boxrule=0pt,
		},
	underlay boxed title={%
			\path[fill=tcbcolframe] (title.south west)--(title.south east)
			to[out=0, in=180] ([xshift=5mm]title.east)--
			(title.center-|frame.east)
			[rounded corners=\kvtcb@arc] |-
			(frame.north) -| cycle;
		},
	#1
}{def}
\makeatother

%............%
% Lösung Box %
%............%

\makeatletter
\newtcolorbox{loesung}{enhanced,
	breakable,
	colback=white,
	colframe=solutioncolor!70!black,
	attach boxed title to top left={yshift*=-\tcboxedtitleheight},
	title=Solution,
	boxed title size=title,
	boxed title style={%
			sharp corners,
			rounded corners=northwest,
			colback=tcbcolframe,
			boxrule=0pt,
		},
	underlay boxed title={%
			\path[fill=tcbcolframe] (title.south west)--(title.south east)
			to[out=0, in=180] ([xshift=5mm]title.east)--
			(title.center-|frame.east)
			[rounded corners=\kvtcb@arc] |-
			(frame.north) -| cycle;
		},
}
\makeatother

%...............%
% Bemerkung Box %
%...............%

\usetikzlibrary{arrows,calc}
\tcbuselibrary{skins}
\newtcolorbox{bemerkung}[1][]{%
	enhanced jigsaw,
	colback=gray!20!white,%
	colframe=gray!80!black,
	size=small,
	boxrule=1pt,
	title=\textbf{Bemerkung:},
	halign title=flush center,
	coltitle=black,
	breakable,
	attach boxed title to top left={xshift=1cm,yshift=-\tcboxedtitleheight/2,yshifttext=-\tcboxedtitleheight/2},
	minipage boxed title=2.5cm,
	boxed title style={%
			colback=white,
			size=fbox,
			boxrule=1pt,
			boxsep=2pt,
			underlay={%
					\coordinate (dotA) at ($(interior.west) + (-0.5pt,0)$);
					\coordinate (dotB) at ($(interior.east) + (0.5pt,0)$);
					\begin{scope}
						\clip (interior.north west) rectangle ([xshift=3ex]interior.east);
						\filldraw [white, rounded corners=2pt] (interior.north west) rectangle (interior.south east);
					\end{scope}
					\begin{scope}[gray!80!black]
						\fill (dotA) circle (2pt);
						\fill (dotB) circle (2pt);
					\end{scope}
				},
		},
	#1,
}

%........%
% Beweis %
%........%

\newenvironment{myproof}[1][\proofname]{%
	\proof[\bfseries Beweis: ]%
}{\endproof}

\newcounter{mylabelcounter}

\makeatletter
\newcommand{\setword}[2]{%
	\phantomsection
	#1\def\@currentlabel{\unexpanded{#1}}\label{#2}%
}
\makeatother





%%%%%%%%%%
% Colors %
%%%%%%%%%%

\definecolor{documentcolor}{HTML}{003C6E}		% Indigo Dye, used as document color
\definecolor{definitioncolor}{HTML}{e71d36}		% Rode Madder, used for definition box
\definecolor{examplecolor}{HTML}{E76F51}		% Burnt Sienna, used for example box
\definecolor{satzcolor}{HTML}{2A9D8F}			% Persian Green, used for satz box
\definecolor{lemmacolor}{HTML}{ff9f1c}			% Orange Peel, used for lemma box
\definecolor{korollarcolor}{HTML}{b758ee}		% Medium Orchid, used for korollar box
\definecolor{questioncolor}{HTML}{001219}		% Rich Black FOGRA 29, used for question box
\definecolor{solutioncolor}{HTML}{53bef3}		% Capri, used for answer box





%%%%%%%%%%%%%%%%%%%%%
% Commands - Macros %
%%%%%%%%%%%%%%%%%%%%%

% tcolorboxes
\newcommand{\dfn}[2]{\begin{definition}{#1}{}#2\end{definition}}
\newcommand{\bsp}[2]{\begin{beispiel}{#1}{}#2\end{beispiel}}
\newcommand{\sat}[2]{\begin{satz}{#1}{}#2\end{satz}}
\newcommand{\lem}[2]{\begin{lemma}{#1}{}#2\end{lemma}}
\newcommand{\kor}[2]{\begin{korollar}{#1}{}#2\end{korollar}}
\newcommand{\fra}[2]{\begin{frage}{#1}{}#2\end{frage}}
\newcommand{\loes}[1]{\begin{loesung}{}{}#1\end{loesung}}
\newcommand{\bem}[1]{\begin{bemerkung}#1\end{bemerkung}}
\newcommand{\bew}[1]{\begin{myproof}#1\end{myproof}}

% arrows
\newcommand{\ra}{\rightarrow}
\newcommand{\Ra}{\Rightarrow}
\newcommand{\la}{\leftarrow}
\newcommand{\La}{\Leftarrow}
\newcommand{\lra}{\leftrightarrow}
\newcommand{\LRa}{\Leftrightarrow}

% greek alphabet
\newcommand{\vepsilon}{\varepsilon}
\newcommand{\vtheta}{\vartheta}
\newcommand{\vkappa}{\varkappa}
\newcommand{\vpi}{\varpi}
\newcommand{\vrho}{\varrho}
\newcommand{\vsigma}{\varsigma}
\newcommand{\vphi}{\varphi}

% math stuff
\newcommand{\oeq}[1]{\ensuremath{{\overset{\mathrm{#1}}{=}}}}
\newcommand{\ub}{\underbrace}
\newcommand{\ob}{\overbrace}
\newcommand{\ol}{\overline}
\newcommand{\ul}{\underline}
\newcommand{\us}{\underset}
\newcommand{\os}{\overset}
\newcommand{\wt}{\widetilde}
\newcommand{\wh}{\widehat}
\providecommand{\half}{\frac{1}{2}}
\newcommand{\infsum}[2]{\ensuremath{\sum\limits_{#1 = #2}^\infty}}
\newcommand{\uslim}[1]{\us{#1}{\lim}}
\newcommand{\norm}[1]{\ensuremath{\left|\left|#1\right|\right|}}

% letters
\newcommand{\RR}[1][]{\ensuremath{\ifstrempty{#1}{\mathbb{R}}{\mathbb{R}^{#1}}}}
\newcommand{\NN}[1][]{\ensuremath{\ifstrempty{#1}{\mathbb{N}}{\mathbb{N}^{#1}}}}
\newcommand{\ZZ}[1][]{\ensuremath{\ifstrempty{#1}{\mathbb{Z}}{\mathbb{Z}^{#1}}}}
\newcommand{\QQ}[1][]{\ensuremath{\ifstrempty{#1}{\mathbb{Q}}{\mathbb{Q}^{#1}}}}
\newcommand{\CC}[1][]{\ensuremath{\ifstrempty{#1}{\mathbb{C}}{\mathbb{C}^{#1}}}}
\newcommand{\PP}[1][]{\ensuremath{\ifstrempty{#1}{\mathbb{P}}{\mathbb{P}^{#1}}}}
\newcommand{\HH}[1][]{\ensuremath{\ifstrempty{#1}{\mathbb{H}}{\mathbb{H}^{#1}}}}
\newcommand{\FF}[1][]{\ensuremath{\ifstrempty{#1}{\mathbb{F}}{\mathbb{F}^{#1}}}}
\newcommand{\mbb}[1]{\mathbb{#1}}
\newcommand{\mc}[1]{\mathcal{#1}}
\newcommand{\bms}[1]{\boldsymbol{#1}}
\newcommand{\mf}[1]{\mathfrak{#1}}

\newcommand{\quotes}[1]{\glqq #1\grqq}