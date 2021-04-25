accessing
puntuacionPreguntas
|likes dislikes|
likes:= self questions sumNumbers:[: q|q like].
dislikes:= self questions sumNumbers:[: e|e dislike].
^likes - dislikes.