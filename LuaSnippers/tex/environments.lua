return{
  s("eq",
        fmt(
        [[
          \begin{equation}
              <>
          \end{equation}
        ]],
        {i(1)},
        {delimiters = "<>"}
        )
    ),
--Environment--
  s("ev",{t("\\input{~/Latex-Envi/theorems.tex}")}),

--Structure--  
  s("se", fmt([[\section{<>}]],{i(1)},{delimiters="<>"})),
  s("ch", fmt([[\chapter{<>}]],{i(1)},{delimiters="<>"})),
  s("sse", fmt([[\subsection{<>}]],{i(1)},{delimiters="<>"})),
  s("ssse", fmt([[\subsubsection{<>}]],{i(1)},{delimiters="<>"})),
  s("pa", fmt([[\paragraph{<>}]],{i(1)},{delimiters="<>"})),
  s("spa", fmt([[\subparagraph{<>}]],{i(1)},{delimiters="<>"}))







}
