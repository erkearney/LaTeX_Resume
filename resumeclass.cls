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
\usepackage{setspace}				% Provides the ability to change line spacing



%-----------------------------------------------------------------------------------------------------------
%	PAGE LAYOUT
%-----------------------------------------------------------------------------------------------------------

\setlength{\parindent}{0mm}			% Suppress paragraph indentation
\pagestyle{empty}				% Remove page numbers

\geometry{
	paper=letterpaper,			% Standard US page size
	top=1.00cm,
	bottom=1.00cm,
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

%\newcommand{\resumesect}[2]{			% #1 is the name of the section, #2 is the text of the section
%    \begin{minipage}[t]{0.18\textwidth}
%	\colorbox{black}{\normalsize\textcolor{white}{\MakeUppercase{\textbf{#1}}}}\\
%    \end{minipage}
%    \begin{minipage}[t]{0.82\textwidth}
%	{#2}
%    \end{minipage}
%}

\newcommand{\resumesect}[2]{		       % #1: Section name, #2: Section text
    \colorbox{black}{\normalsize\textcolor{white}{\MakeUppercase{\textbf{#1}}}}
    \vspace{5pt}\\
    {#2}
}

\newcommand{\experiencesect}[4]{	      % #1: Title, #2: Position Name, #3: Dates, #4: Text
    \large{\textbf{{#1}}} - \normalsize{{#2}} \hfill \normalsize{{#3}}

    \normalsize{{#4}}
}
