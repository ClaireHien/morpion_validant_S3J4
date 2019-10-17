
<h1>Projet THP - Morpion</h1>
Par Jordi Le Guet et Claire Tardy

<br /><br />
app.rb pour lancer le jeu depuis le terminal : ruby app.rb<br /><br />

player.rb va définir les paramètres des deux joueurs<br /><br />

boardcase.rb va définir les paramètres des différentes cases : c'est la value des différentes boardcase qui vont visuellement afficher les cases cochées de notre morpion. <br /><br />

board.rb va afficher le jeu. <br /><br />

game.rb va lancer une partie :<br />
<ul>
<li>Le jeu va demander à chaque joueur de choisir une case.
<li>Il s'arrête en cas de victoire de l'un des deux joueurs ou si toutes les cases sont remplies et donnent une égalité
<li>On ne peut pas choisir une case déjà remplie sinon il redemande de faire un choix
<ul><br /><br />

application.rb va organiser le jeu : <br />
<ul>
<li>Demande leurs noms aux joueurs
<li>Lancer la première partie
<li>Demander s'ils veulent rejouer
<li>Relancer autant de parties qu'ils veulent
<li>Finir par un tableau des scores récapitulant les victoires de chacuns
</ul>