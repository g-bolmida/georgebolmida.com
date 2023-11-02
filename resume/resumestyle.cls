\ProvidesClass{resumestyle}[2023/11/02 George's Resume Styling]
\LoadClass{article}

% Load font
\RequirePackage[T1]{fontenc}
\RequirePackage{tgheros}

% Set TeX Gyre Heros as the default sans-serif font
\renewcommand*\sfdefault{qhv}

% Set default font style to sans-serif
\renewcommand{\familydefault}{\sfdefault}

% Required packages
\RequirePackage[margin=0.75in]{geometry}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage[svgnames]{xcolor}
\RequirePackage[hidelinks]{hyperref}

% Main header
\newcommand{\resumeHeader}[1]{%
  \begin{center}
    \textbf{\huge #1} \\[10pt]
  \end{center}
}

% Contact info
\newcommand{\contactInfo}[1]{%
  \begin{center}
    \small #1
  \end{center}
}

% Section titles
\titleformat{\section}{%
  \vspace{-4pt}\scshape\raggedright\large
}{}{0em}{}[\color{black}\titlerule \vspace{-5pt}]

% Resume items i.e. job descriptions
\providecommand{\resumeItem}[1]{%
  \item[-]\small{%
    {#1 \vspace{-2pt}}%
  }%
}

% Resume subheadings i.e. jobs or degrees
\providecommand{\resumeSubheading}[4]{%
  \vspace{-1pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & #2 \\
      \textit{\small#3} & \textit{\small #4} \\
    \end{tabular*}\vspace{-5pt}
}

% List logic
\providecommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=*]}
\providecommand{\resumeSubHeadingListEnd}{\end{itemize}}

\providecommand{\resumeSubItem}[1]{\resumeItem{#1}\vspace{-4pt}}

\providecommand{\resumeItemListStart}{\begin{itemize}}
\providecommand{\resumeItemListEnd}{\end{itemize}\vspace{-5pt}}

% Disable page numbering
\pagestyle{empty}

% Hyperlink setup
\hypersetup{colorlinks=true, linkcolor=blue, filecolor=magenta, urlcolor=teal}
