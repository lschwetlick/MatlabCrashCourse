# Git
![](/Users/lisa/Documents/MatlabCrashCourse/gitxkcd.png)
## Distributed Verision Control System
- Distributed...: Jeder hat eine eigene Kopie des Files die er auf seinem Rechner verändern kann, ohne dass er damit die laufende Version stört
- ...Version Control: Jede Veränderung wird mithilfe von diffs (Unterschieden zur vorherigen Verion) gespeichert. Somit kann man Veränderungen Rückgangig machen. z.B. zur letzten funktionierenden Version zurückkehren.
## Github
- ist eine website die häufig in Kontext von open source verwendet wird
- [Git](#git)
    - [Distributed Verision Control System](#distributed-verision-control-system)
    - [Github](#github)
    - [Wie?](#wie)
    - [Womit](#womit)
        - [GUIS](#guis)
## Wie?
- `git clone "name"` - kopiert einen Ordner von einem Server (zB Github) auf deinen Rechner
- `git status` - zeigt den status aller Files in dem Ordner
- `git add "name"` - plaziert genannte files in die staging area
- `git commit -m "message"` - commit
- `git push` - läd die Veränderungen wieder auf den Server.
- `git pull` - läd veränderungen vom server runter
- `git log` - alle veränderungen
- `git revert` - zurücksetzen (niemals mit "-f"!!)
- `git `

- Immer erst git pull, dann git push, damit man immer mit dem neusten stand arbeitet
- merge conflict: wenn jemand anders die gleiche Zeile im gleichen file verändert hat, muss man diese Konflikte manuell lösen
![](/Users/lisa/Documents/MatlabCrashCourse/git.png)

## Womit
- Normalerweise commandline/Terminal.
- Windows: Git Bash
### GUIS
- Mac: [GitKraken](https://www.gitkraken.com/)
- Windows: [Tortoisegit](https://tortoisegit.org/download/)