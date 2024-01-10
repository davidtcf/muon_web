return{
--Chapters--
s("part", fmt([[\part{<>}]],{i(1)},{delimiters="<>"})),
s("ch", fmt([[\chapter{<>}]],{i(1)},{delimiters="<>"})),
s("se", fmt([[\section{<>}]],{i(1)},{delimiters="<>"})),
s("sse", fmt([[\subsection{<>}]],{i(1)},{delimiters="<>"})),
s("ssse", fmt([[\subsubsection{<>}]],{i(1)},{delimiters="<>"})),
s("para", fmt([[\paragraph{<>}]],{i(1)},{delimiters="<>"})),
s("spara", fmt([[\subparagraph{<>}]],{i(1)},{delimiters="<>"})),

--Content--
s("tfcont",{t("\\tableofcontents")}),

--Appendix--
s("appen",{t("\\appendix")}),
s("frontmatter",{t("\\frontmatter")}),
s("mainmatter",{t("\\mainmatter")}),
s("backmatter",{t("\\backmatter")}),

--Title Page--
s("title", fmt([[\title{<>}
\author{<>}
\date{<>}
\maketitle
]],{i(1),i(2),i(3)},{delimiters="<>"})),

--Cross Referencing交叉引用--
s("ref", fmt([[\ref{<>}]],{i(1)},{delimiters="<>"})),
s("pref", fmt([[\pageref{<>}]],{i(1)},{delimiters="<>"})),

--Footnote脚注--
s("ftnote", fmt([[\footnote{<>}]],{i(1)},{delimiters="<>"})),

--List列表--
s("enumerate", fmt([[
\begin{enumerate}
  \item <>
  <>
\end{enumerate}
]],{i(1),i(2)},{delimiters="<>"})),

s("itemize", fmt([[
\begin{itemize}
  \item <>
  <>
\end{itemize}]],{i(1),i(2)},{delimiters="<>"})),

s("item",{t("\\item ")}),


--Formatting Environment对齐环境--
s("center", fmt(
[[
\begin{center}
  <>
\end{center}
]],{i(1)},{delimiters="<>"})),

s("left", fmt([[
\begin{flushleft}
  <>
\end{flushleft}
]],{i(1)},{delimiters="<>"})),

s("right", fmt([[
\begin{flushright}
  <>
\end{flushright}
]],{i(1)},{delimiters="<>"})),


--Quotation引用--
s("quote", fmt([[
\begin{quotation}
  <>
\end{quotation}]],{i(1)},{delimiters="<>"})),

--Abstract摘要--
s("abstract", fmt([[
\begin{abstract}
  <>
\end{abstract}
]],{i(1)},{delimiters="<>"})),

--Code Environment代码环境--
s("code", fmt([[
\begin{verbatim}
  <>
\end{verbatim}]],{i(1)},{delimiters="<>"})),

--Change Line--
s("nl",{t([[\\]])}),










}
