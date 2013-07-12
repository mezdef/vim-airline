let s:N1 = [ '#141413' , '#8CFFBA' , 232 , 154 ] " blackestgravel & lime
let s:N2 = [ '#000000' , '#CCCCCC' , 222 , 238 ] " dirtyblonde    & deepgravel
let s:N3 = [ '#333333' , '#EFEFEF' , 121 , 235 ] " saltwatertaffy & darkgravel
let s:N4 = [ '#666462' , 241 ]                   " mediumgravel

let s:I1 = [ '#FFFFFF' , '#FB0050' , 232 , 39  ] " blackestgravel & tardis
let s:I2 = [ '#FB0050' , '#CCCCCC' , 222 , 27  ] " dirtyblonde    & facebook
let s:I3 = [ '#333333' , '#EFEFEF' , 39  , 235 ] " tardis         & darkgravel

let s:V1 = [ '#FFFFFF' , '#1CDBFF' , 232 , 214 ] " blackestgravel & orange
let s:V2 = [ '#1CDBFF' , '#CCCCCC' , 16  , 221 ] " coal           & dalespale
let s:V3 = [ '#333333' , '#EFEFEF' , 16  , 137 ] " coal           & toffee
let s:V4 = [ '#c7915b' , 173 ]                   " coffee

let s:PA = [ '#f4cf86' , 222 ]                   " dirtyblonde
let s:RE = [ 'ff9eb8'  , 211 ]                   " dress

let s:file = [ '#ff2c4b' , s:N3[1] , 196 , s:N3[3] , '' ]


let g:airline#themes#palefire#normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3, s:file)
let g:airline#themes#palefire#normal_modified = {
      \ 'statusline'     : [ s:I1[1]   , s:N3[1]  , s:I1[2]   , s:N2[3]   , ''     ] }
let g:airline#themes#palefire#inactive = {
      \ 'mode'           : [ s:N2[1]   , s:N3[1]   , s:N2[3]   , s:N3[3]   , ''     ] }


let g:airline#themes#palefire#insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3, s:file)
let g:airline#themes#palefire#insert_modified = {
      \ 'statusline'     : [ s:I1[1]   , s:N3[1]   , s:V1[3]   , s:N2[3]   , ''     ] }
let g:airline#themes#palefire#insert_paste = {
      \ 'mode'           : [ s:I1[0]   , s:PA[0]   , s:I1[2]   , s:PA[1]   , ''     ] ,
      \ 'mode_separator' : [ s:PA[0]   , s:I2[1]   , s:PA[1]   , s:I2[3]   , ''     ] }


let g:airline#themes#palefire#replace = copy(airline#themes#palefire#insert)
let g:airline#themes#palefire#replace.mode           = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]
let g:airline#themes#palefire#replace.mode_separator = [ s:RE[0] , s:I2[1] , s:RE[1] , s:I2[3] , '' ]
let g:airline#themes#palefire#replace_modified = g:airline#themes#palefire#insert_modified


let g:airline#themes#palefire#visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3, s:file)
let g:airline#themes#palefire#visual_modified = {
      \ 'statusline'      : [ s:I1[1]   , s:N3[1]   , s:V3[2]   , s:V4[1]   , ''     ] }
