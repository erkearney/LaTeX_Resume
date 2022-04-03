%-----------------------------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%-----------------------------------------------------------------------------------------------------------

\ProvidesClass{resumeclass}
\LoadClass{extarticle}

%-----------------------------------------------------------------------------------------------------------
%	PACKAGES
%-----------------------------------------------------------------------------------------------------------

\usepackage{xcolor}				% Provides colorbox command
\usepackage[hidelinks]{hyperref}		% Provides ability to include links into the pdf
\usepackage{geometry}				% provides ability to adjust page dimensions and margins
\usepackage{longtable}				% Provides ability to create pages that span multiple pages
\usepackage{enumitem}				% Provides ordered and unorderd lists
\usepackage{etoolbox}

%-----------------------------------------------------------------------------------------------------------
%	PAGE LAYOUT
%-----------------------------------------------------------------------------------------------------------

\setlength{\parindent}{0mm}			% Suppress paragraph indentation
\pagestyle{empty}				% Remove page numbers

\geometry{
	paper=letterpaper,			% Standard US page size
	top=1.75cm,
	bottom=1.75cm,
	left=2cm,
	right=2cm,
	headheight=0.75cm,			% Header height
	footskip=1cm,				% Space from the bottom margin to the baseline of the footer
	headsep=0.5cm,				% Space from the top margin to the baseline of the header
	%showframe,				% For debugging, show the bounding boxes of the paper
}


%-----------------------------------------------------------------------------------------------------------
%	CUSTOM COMMANDS
%-----------------------------------------------------------------------------------------------------------

\newcommand{\resumesect}[1]{			% Argument is the name of the section
	\vspace{\baselineskip}			% Add whitespace before the section title
	\vspace{-5mm}
	\colorbox{black}{\large\textcolor{white}{\MakeUppercase{\textbf{#1}}}}\\
}

\setlength{\LTpre}{0pt}				% Remove default whitespace before longtable
\setlength{\LTpost}{0pt}			% Remove default whitespace after longtable

\setlength{\tabcolsep}{0pt}			% Remove spacing between table columns

\newenvironment{entrylist}{
	\begin{longtable}[H]{l l}
}{
	\end{longtable}
}

\newcommand{\entry}[4]{							% First argument is the date range, second is the position title, third is the program name, fourth is the description
	\parbox[t]{0.275\textwidth}{					% Use 27.5% of the page
		#1
	}%
	&\parbox[t]{0.725\textwidth}{					% Use the remaining 72.5% of the page
		\textbf{#2}
		\hfill							% Fill the remaining horizontal whitespace on the line
		{\footnotesize \textbf{\textcolor{black}{#3}}}\\	% Right-align the Position title
		#4
	}\\\\
}

\newcommand{\boldwithparens}[2]{
	\textbf{#1} {\small{({#2})}}\\
}
