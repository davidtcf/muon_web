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

  s("m", fmt([[$<>$]],{i(1)},{delimiters="<>"})),

s("cen", fmt([[\begin{center}
    <>
\end{center}]],{i(1)},{delimiters="<>"})),
--Environment--
  s("ev",{t("\\input{~/.config/nvim/Latex-Envi/theorems.tex}")}),

--Structure--  
  s("se", fmt([[\section{<>}]],{i(1)},{delimiters="<>"})),
  s("ch", fmt([[\chapter{<>}]],{i(1)},{delimiters="<>"})),
  s("sse", fmt([[\subsection{<>}]],{i(1)},{delimiters="<>"})),
  s("ssse", fmt([[\subsubsection{<>}]],{i(1)},{delimiters="<>"})),
  s("pa", fmt([[\paragraph{<>}]],{i(1)},{delimiters="<>"})),
  s("spa", fmt([[\subparagraph{<>}]],{i(1)},{delimiters="<>"})),
  s("cet",{t("\\centering")})






}
