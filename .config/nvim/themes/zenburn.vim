"""""Zenburn is a low contrast theme"""""

" CONFIGURABLE PARAMETERS:
"
" You can use the default (don't set any parameters), or you can
" set some parameters to tweak the Zenburn colours.
"
" To use them, put them into your .vimrc file before loading the color scheme,
" example:
"    let g:zenburn_high_Contrast=1
"    colors zenburn
"
" You can also do ":let g:zenburn" then hit Ctrl-d or Tab to scroll through the
" list of configurable parameters.
"
" * You can now set a darker background for bright environments. To activate, use:
      let g:zenburn_high_Contrast = 1
"
" * For transparent terminals set the background to black with:
"      let g:zenburn_transparent = 1
"
" * For example, Vim help files uses the Ignore-group for the pipes in tags
"   like "|somelink.txt|". By default, the pipes are not visible, as they
"   map to Ignore group. If you wish to enable coloring of the Ignore group,
"   set the following parameter to 1. Warning, it might make some syntax files
"   look strange.
"
"      let g:zenburn_color_also_Ignore = 1
"
" * To increase the contrast/brightness of the Visual selection, use
"
"      let g:zenburn_alternate_Visual = 1
"
"   Note: if the old-style Visual is used, this increases the contrast.
"   Otherwise it chooses a brighter background; see g:zenburn_old_Visual
"
" * To use alternate colouring for Error message, use
"
"      let g:zenburn_alternate_Error = 1
"
" * The new default for Include is a duller orange. To use the original
"   colouring for Include, use
"
"      let g:zenburn_alternate_Include = 1
"
" * To disable underlining for Labels, use
"
"      let g:zenburn_disable_Label_underline = 1
"
" * Work-around to a Vim bug, it seems to misinterpret ctermfg and 234 and 237
"   as light values, and sets background to light for some people. If you have
"   this problem, use:
"
"      let g:zenburn_force_dark_Background = 1
"
" * By default the CursorColumn is of a lighter colour. I find it more readable
"   that way, but some people may want to align it with the darker CursorLine
"   color, for visual uniformity. To do so, use:
"
"      let g:zenburn_unified_CursorColumn = 1
"
"   Note: you can ignore this unless you use
"   ":set cursorline cursorcolumn", since otherwise the effect won't be
"   seen.
"
" * New (dark) Visual coloring has been introduced.
"   The dark Visual is more aligned with the rest of the colour scheme,
"   especially if you use line numbers. If you wish to use the 
"   old Visual coloring, use
"
"      let g:zenburn_old_Visual = 1
"
"   Default is to use the new Visual.
"
"  * Italic comments can be enabled with
"
"      let g:zenburn_italic_Comment=1
"
"   Note: This requires the terminal to support italics. Try this in your
"   terminal:
"
"      echo -e "\e[3m test \e[23m"
"
"   and if the output is not italic, then you should not enable italic comments,
"   as they will not render correctly.
"
"  * EXPERIMENTAL FEATURE: Zenburn would like to support TagHighlight
"    (an evolved ctags-highlighter) by Al Budden (homepage:
"    http://www.cgtk.co.uk/vim-scripts/taghighlight).
"    Current support status is broken: there is no automatic detection of
"    TagHighlight, no specific language support; however there is some basic
"    support for Python. If you are a user of TagHighlight and want to help,
"    please enable:
"
"      let g:zenburn_enable_TagHighlight=1
"
"    and improve the corresponding block at the end of the file.
"
" NOTE:
"
" * To turn the parameter(s) back to defaults, use UNLET or set them to 0:
"
"      unlet g:zenburn_alternate_Include
"   or 
"      let g:zenburn_alternate_Include = 0
"
"
" That's it, enjoy!

colors zenburn
