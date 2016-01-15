#!/usr/bin/env ruby

##
# Convert a molecular formula to its mass.
#
# Example:
#
#     echo "H2O" | awk -f molecular-formula-to-mass.awk
#      H2O 18.01528
#
# Contact: Joel Parker Henderson, joel@joelparkerhenderson.com
# License: Creative Commons Share And Share Alike
# Version: 1.0.0
##

function init_element_info() {
    element["H",  "mass"] = 1.007940
    element["He", "mass"] = 4.002602
    element["Li", "mass"] = 6.941000
    element["Be", "mass"] = 9.012182
    element["B",  "mass"] = 10.81100
    element["C",  "mass"] = 12.01170
    element["N",  "mass"] = 14.00670
    element["O",  "mass"] = 15.99940
    element["F",  "mass"] = 18.99840
    element["Ne", "mass"] = 20.17970
    element["Na", "mass"] = 22.98976
    element["Mg", "mass"] = 24.30500
    element["Al", "mass"] = 26.98153
    element["Si", "mass"] = 28.08550
    element["P",  "mass"] = 30.97376
    element["S",  "mass"] = 32.06500
    element["Cl", "mass"] = 35.45300
    element["Ar", "mass"] = 39.94800
    element["K",  "mass"] = 39.09830
    element["Ca", "mass"] = 40.07800
    element["Sc", "mass"] = 44.95591
    element["Ti", "mass"] = 47.86700
    element["V",  "mass"] = 50.94150
    element["Cr", "mass"] = 51.99610
    element["Mn", "mass"] = 54.93804
    element["Fe", "mass"] = 55.84500
    element["Co", "mass"] = 58.93319
    element["Ni", "mass"] = 58.69340
    element["Cu", "mass"] = 63.54600
    element["Zn", "mass"] = 65.38000
    element["Ga", "mass"] = 69.72300
    element["Ge", "mass"] = 72.64000
    element["As", "mass"] = 74.92160
    element["Se", "mass"] = 78.96000
    element["Br", "mass"] = 79.90400
    element["Kr", "mass"] = 83.79800
    element["Rb", "mass"] = 85.46780
    element["Sr", "mass"] = 87.62000
    element["Y",  "mass"] = 88.90585
    element["Zr", "mass"] = 91.22400
    element["Nb", "mass"] = 92.90638
    element["Mo", "mass"] = 95.96000
    element["Tc", "mass"] = 98.00000
    element["Ru", "mass"] = 101.0700
    element["Rh", "mass"] = 102.9055
    element["Pd", "mass"] = 106.4200
    element["Ag", "mass"] = 107.8682
    element["Cd", "mass"] = 112.4110
    element["In", "mass"] = 114.8180
    element["Sn", "mass"] = 118.7100
    element["Sb", "mass"] = 121.7600
    element["Te", "mass"] = 127.6000
    element["I",  "mass"] = 126.9044
    element["Xe", "mass"] = 131.2930
    element["Cs", "mass"] = 132.9054
    element["Ba", "mass"] = 137.3270
    element["La", "mass"] = 138.9054
    element["Ce", "mass"] = 140.1160
    element["Pr", "mass"] = 140.9076
    element["Nd", "mass"] = 144.2420
    element["Pm", "mass"] = 145.0000
    element["Sm", "mass"] = 150.3600
    element["Eu", "mass"] = 151.9640
    element["Gd", "mass"] = 157.2500
    element["Tb", "mass"] = 158.9253
    element["Dy", "mass"] = 162.5000
    element["Ho", "mass"] = 164.9303
    element["Er", "mass"] = 167.2590
    element["Tm", "mass"] = 168.9342
    element["Yb", "mass"] = 173.0540
    element["Lu", "mass"] = 174.9668
    element["Hf", "mass"] = 178.4900
    element["Ta", "mass"] = 180.9478
    element["W",  "mass"] = 183.8400
    element["Re", "mass"] = 186.2070
    element["Os", "mass"] = 190.2300
    element["Ir", "mass"] = 192.2170
    element["Pt", "mass"] = 195.0840
    element["Au", "mass"] = 196.9665
    element["Hg", "mass"] = 200.5900
    element["Tl", "mass"] = 204.3833
    element["Pb", "mass"] = 207.2000
    element["Bi", "mass"] = 208.9804
    element["Po", "mass"] = 210.0000
    element["At", "mass"] = 210.0000
    element["Rn", "mass"] = 222.0000
    element["Fr", "mass"] = 223.0000
    element["Ra", "mass"] = 226.0000
    element["Ac", "mass"] = 227.0000
    element["Th", "mass"] = 232.0380
    element["Pa", "mass"] = 231.0358
    element["U",  "mass"] = 238.0289
    element["Np", "mass"] = 237.0000
    element["Pu", "mass"] = 244.0000
    element["Am", "mass"] = 243.0000
    element["Cm", "mass"] = 247.0000
    element["Bk", "mass"] = 247.0000
    element["Cf", "mass"] = 251.0000
    element["Es", "mass"] = 252.0000
    element["Fm", "mass"] = 257.0000
    element["Md", "mass"] = 258.0000
    element["No", "mass"] = 259.0000
    element["Lr", "mass"] = 262.0000
    element["Rf", "mass"] = 265.0000
    element["Db", "mass"] = 268.0000
    element["Sg", "mass"] = 271.0000
    element["Bh", "mass"] = 264.0000
    element["Hs", "mass"] = 267.0000
    element["Mt", "mass"] = 268.0000
    element["Ds", "mass"] = 271.0000
    element["Rg", "mass"] = 272.0000
    element["Cn", "mass"] = 285.0000
    ## Groups
    element["Me", "mass"] = 15.03550
    element["Et", "mass"] = 29.06310
    element["Ph", "mass"] = 77.10990
}

function shorthand_to_algebra(s) {
    gsub(/\[/, "(", s); gsub(/\]/, ")", s)  # "[]" to "()"
    s = gensub(/ *([0-9]+) */, " * \\1 ", "g", s)  # "2" to "*2"
    s = gensub(/ *([0-9]+|[A-Z][a-z]*|\)) *([A-Z][a-z]*|\() */, " \\1 + \\2 ", "g", s) # "AB" to "A+B" primary
    s = gensub(/ *([0-9]+|[A-Z][a-z]*|\)) *([A-Z][a-z]*|\() */, " \\1 + \\2 ", "g", s) # "AB" to "A+B" secondary
    return s
}

BEGIN {
    init_element_info()
}

{
    for (nf=1; nf<=NF; nf++) {
        ai=split(shorthand_to_algebra($nf), a)
        s = ""
        for (i=1; i<=ai; i++) {
              key = a[i] SUBSEP "mass"
              s = s ((key in element) ? element[key] : a[i])  " "
        }
        printf $nf " "
        system("echo \"" s "\" | bc")
    }
}
