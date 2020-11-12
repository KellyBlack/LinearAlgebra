(TeX-add-style-hook
 "section3.6"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "svgnames" "table" "" "aspectratio=169")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "hhline"
    "etoolbox"
    "tikz"
    "mathtools"
    "amssymb"
    "polynom"
    "qrcode"
    "pgfpages")
   (TeX-add-symbols
    '("columnVector" 1)
    '("threeByThree" 9)
    '("twoByTwo" 4)
    '("dotfield" 2))
   (LaTeX-add-xcolor-definecolors
    "georgiaRed"
    "mediumGray"))
 :latex)

