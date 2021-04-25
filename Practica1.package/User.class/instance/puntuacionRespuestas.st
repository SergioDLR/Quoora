accessing
puntuacionRespuestas
|likes dislikes|
likes:= self answers  sumNumbers:[: q|q like].
dislikes:= self answers sumNumbers:[: e|e dislike].
^likes - dislikes.