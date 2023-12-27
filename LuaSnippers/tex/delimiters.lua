return{
--List--
s("itm", fmt([[\begin{itemize}
    <>
\end{itemize}
]],{i(1)},{delimiters="<>"})),

s("enu", fmt([[\begin{enumerate}
    <>
\end{enumerate}]],{i(1)},{delimiters="<>"})),

s("item",{t("\\item ")})






}
