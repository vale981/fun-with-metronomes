;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrartcl" "fontsize=10pt" "paper=usletter" "open=any" "twoside=no" "toc=listof" "toc=bibliography" "captions=nooneline" "captions=tableabove" "english" "DIV=calc" "numbers=noenddot" "final" "parskip=full" "headinclude=true" "footinclude=false" "BCOR=0mm" "heading=normal" "twocolumn") ("revtex4-2" "10pt" "aps" "pra" "twocolumn" "nofootinbib" "superscriptaddress" "floatfix")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("preview" "") ("babel" "english") ("layouts" "") ("hirostyle" "") ("hiromacros" "") ("loopmacros" "") ("booktabs" "") ("float" "") ("biblatex" "backend=biber" "language=english" "style=phys" "sorting=none" "backref=true") ("caption" "") ("subcaption" "") ("csquotes" "autostyle=true") ("tabularx" "") ("bbold" "") ("scrhack" "") ("fontenc" "T1") ("scrlayer-scrpage" "automark") ("appendix" "titletoc") ("tikz" "") ("pgfplots" "") ("nicematrix" "") ("ifdraft" "") ("mathtools" "tbtags") ("graphicx" "") ("microtype" "tracking" "kerning" "spacing" "protrusion" "expansion") ("physics" "") ("hyperref" "pdfencoding=auto" "hidelinks" "colorlinks=true" "linkcolor=blue" "filecolor=blue" "citecolor=black" "urlcolor=cyan" "" "final") ("cleveref" "capitalize") ("fixme" "margin=true" "draft") ("xstring" "") ("natbib" "") ("stix2" "" "upint") ("siunitx" "") ("xcolor" "") ("mathdots" "") ("aligned-overset" "") ("makecell" "") ("cancel" "") ("poormanssubfig" "") ("commonmacros" "") ("circuitikz" "RPvoltages" "siunitx") ("datetime2" "calc" "showseconds=false") ("conversationalcomments" "draft")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "setfloatlink")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "homepage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "email")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "revtex4-2"
    "revtex4-210"
    "mathtools"
    "graphicx"
    "microtype"
    "physics"
    "hyperref"
    "cleveref"
    "fixme"
    "xstring"
    "natbib"
    "stix2"
    "siunitx"
    "xcolor"
    "mathdots"
    "aligned-overset"
    "makecell"
    "cancel"
    "poormanssubfig"
    "commonmacros"
    "circuitikz"
    "datetime2"
    "conversationalcomments")
   (TeX-add-symbols
    '("bibitem" ["argument"] 1)
    '("refcite" ["argument"] 1)
    '("hinter" ["argument"] 1)
    '("strike" 1)
    '("esk" 0)
    '("peb" 0)
    '("outputf" 0)
    '("inputf" 0)
    '("abss" 1)
    "sys"
    "bath"
    "experimental"
    "inter"
    "drive"
    "cavy"
    "lamb"
    "oldbibitem"
    "orghat"
    "hat")
   (LaTeX-add-labels
    "sec:introduction"
    "fig:tray"
    "eq:1"
    "eq:3"
    "eq:4"
    "eq:5"
    "eq:6"
    "eq:7"
    "eq:8"
    "eq:9"
    "eq:10"
    "eq:11"
    "eq:14"
    "eq:16"
    "eq:2"
    "eq:15"
    "eq:17"
    "eq:18"
    "eq:12"
    "eq:13")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-mathtools-DeclarePairedDelimiters
    '("Bra" "")
    '("Ket" ""))
   (LaTeX-add-xcolor-definecolors
    "pastelblue"
    "pastelred"
    "pastelgreen"))
 :latex)

