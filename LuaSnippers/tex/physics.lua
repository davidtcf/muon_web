return{
--Unit--
s("uni", fmt([[ [<>] ]],{i(1)},{delimiters="<>"})),

s("muz",{t("\\mu_0")}),

s("uv", fmt([[\hat{<>_{<>}} ]],{i(1),i(2)},{delimiters="<>"})),

s("s", fmt([[_{<>}]],{i(1)},{delimiters="<>"})),

--Bra-Ket Notation--
s("ket", fmt([[$\ket{<>}$]],{i(1),},{delimiters="<>"})),

s("bra", fmt([[$\bra{<>}$]],{i(1),},{delimiters="<>"}))



}
