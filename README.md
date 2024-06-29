# proj1
użyte komendy:
dyzio@KomputerDawid MINGW64 ~
$ git clone https://github.com/dawiddymek1108/proj1.git
Cloning into 'proj1'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.

dyzio@KomputerDawid MINGW64 ~
$ cd proj1

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout -b nowyBranch
Switched to a new branch 'nowyBranch'

dyzio@KomputerDawid MINGW64 ~/proj1 (nowyBranch)
$ touch skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (nowyBranch)
$ chmod +x skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (nowyBranch)
$ git checkout -b dateFeature
Switched to a new branch 'dateFeature'

dyzio@KomputerDawid MINGW64 ~/proj1 (dateFeature)
$ echo '#!/bin/bash' > skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (dateFeature)
$ echo 'if [[ "$1" == "--date" ]]; then' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (dateFeature)
$ echo '  date' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (dateFeature)
$ echo 'fi' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (dateFeature)
$ git add skrypt.sh
warning: in the working copy of 'skrypt.sh', LF will be replaced by CRLF the next time Git touches it

dyzio@KomputerDawid MINGW64 ~/proj1 (dateFeature)
$ git commit -m "Dodano opcję --date do skryptu"
[dateFeature da0ce47] Dodano opcję --date do skryptu
 1 file changed, 4 insertions(+)
 create mode 100644 skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (dateFeature)
$ git push -u origin dateFeature
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 349 bytes | 349.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
remote:
remote: Create a pull request for 'dateFeature' on GitHub by visiting:
remote:      https://github.com/dawiddymek1108/proj1/pull/new/dateFeature
remote:
To https://github.com/dawiddymek1108/proj1.git
 * [new branch]      dateFeature -> dateFeature
branch 'dateFeature' set up to track 'origin/dateFeature'.

dyzio@KomputerDawid MINGW64 ~/proj1 (dateFeature)
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git merge dateFeature
Updating e2f98df..da0ce47
Fast-forward
 skrypt.sh | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout -b gitignoreFeature
Switched to a new branch 'gitignoreFeature'

dyzio@KomputerDawid MINGW64 ~/proj1 (gitignoreFeature)
$ echo '*log*' > .gitignore

dyzio@KomputerDawid MINGW64 ~/proj1 (gitignoreFeature)
$ git add .gitignore
warning: in the working copy of '.gitignore', LF will be replaced by CRLF the next time Git touches it

dyzio@KomputerDawid MINGW64 ~/proj1 (gitignoreFeature)
$ git commit -m "Dodano .gitignore, ignorujący pliki zawierające 'log' w nazwie"
[gitignoreFeature 6311e3b] Dodano .gitignore, ignorujący pliki zawierające 'log' w nazwie
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore

dyzio@KomputerDawid MINGW64 ~/proj1 (gitignoreFeature)
$ git push -u origin gitignoreFeature
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 361 bytes | 361.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
remote:
remote: Create a pull request for 'gitignoreFeature' on GitHub by visiting:
remote:      https://github.com/dawiddymek1108/proj1/pull/new/gitignoreFeature
remote:
To https://github.com/dawiddymek1108/proj1.git
 * [new branch]      gitignoreFeature -> gitignoreFeature
branch 'gitignoreFeature' set up to track 'origin/gitignoreFeature'.

dyzio@KomputerDawid MINGW64 ~/proj1 (gitignoreFeature)
$ git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git merge gitignoreFeature
Updating da0ce47..6311e3b
Fast-forward
 .gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout -b logsFeature
Switched to a new branch 'logsFeature'

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ echo 'if [[ "$1" == "--logs" ]]; then' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ echo '  num_files=${2:-100}' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ echo '  for i in $(seq 1 $num_files); do' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ echo '    echo -e "log$i\n$0\n$(date)" > log$i.txt' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ echo '  done' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ echo 'fi' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ git add skrypt.sh
warning: in the working copy of 'skrypt.sh', LF will be replaced by CRLF the next time Git touches it

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ git commit -m "Dodano opcję --logs do skryptu"
[logsFeature 29f4ec7] Dodano opcję --logs do skryptu
 1 file changed, 6 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ git push -u origin logsFeature
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 412 bytes | 412.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote:
remote: Create a pull request for 'logsFeature' on GitHub by visiting:
remote:      https://github.com/dawiddymek1108/proj1/pull/new/logsFeature
remote:
To https://github.com/dawiddymek1108/proj1.git
 * [new branch]      logsFeature -> logsFeature
branch 'logsFeature' set up to track 'origin/logsFeature'.

dyzio@KomputerDawid MINGW64 ~/proj1 (logsFeature)
$ git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 2 commits.
  (use "git push" to publish your local commits)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git merge logsFeature
Updating 6311e3b..29f4ec7
Fast-forward
 skrypt.sh | 6 ++++++
 1 file changed, 6 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout -b helpFeature
Switched to a new branch 'helpFeature'

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ echo 'if [[ "$1" == "--help" ]]; then' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ echo '  echo "Dostępne opcje:"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ echo '  echo "--date - wyświetla dzisiejszą datę"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ echo '  echo "--logs [n] - tworzy n plików logx.txt (domyślnie 100)"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ echo '  echo "--help - wyświetla dostępne opcje"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ echo 'fi' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ git add skrypt.sh
warning: in the working copy of 'skrypt.sh', LF will be replaced by CRLF the next time Git touches it

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ git commit -m "Dodano opcję --help do skryptu"
[helpFeature 418bcb1] Dodano opcję --help do skryptu
 1 file changed, 6 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ git push -u origin helpFeature
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 520 bytes | 520.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote:
remote: Create a pull request for 'helpFeature' on GitHub by visiting:
remote:      https://github.com/dawiddymek1108/proj1/pull/new/helpFeature
remote:
To https://github.com/dawiddymek1108/proj1.git
 * [new branch]      helpFeature -> helpFeature
branch 'helpFeature' set up to track 'origin/helpFeature'.

dyzio@KomputerDawid MINGW64 ~/proj1 (helpFeature)
$ git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 3 commits.
  (use "git push" to publish your local commits)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git merge helpFeature
Updating 29f4ec7..418bcb1
Fast-forward
 skrypt.sh | 6 ++++++
 1 file changed, 6 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout main
Already on 'main'
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git tag v1.0

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git push origin v1.0
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/dawiddymek1108/proj1.git
 * [new tag]         v1.0 -> v1.0

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout -b singleDashFlags
Switched to a new branch 'singleDashFlags'

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo 'if [[ "$1" == "--date" || "$1" == "-d" ]]; then' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo '  date' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo 'fi' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo 'if [[ "$1" == "--logs" || "$1" == "-l" ]]; then' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo '  num_files=${2:-100}' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo '  for i in $(seq 1 $num_files); do' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo '    echo -e "log$i\n$0\n$(date)" > log$i.txt' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo '  done' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo 'fi' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo 'if [[ "$1" == "--help" || "$1" == "-h" ]]; then' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo '  echo "Dostępne opcje:"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo '  echo "--date, -d - wyświetla dzisiejszą datę"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo '  echo "--logs [n], -l [n] - tworzy n plików logx.txt (domyślnie 100)"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo '  echo "--help, -h - wyświetla dostępne opcje"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ echo 'fi' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ git add skrypt.sh
warning: in the working copy of 'skrypt.sh', LF will be replaced by CRLF the next time Git touches it

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ git commit -m "Dodano flagi z pojedynczym myślnikiem"
[singleDashFlags eb4f176] Dodano flagi z pojedynczym myślnikiem
 1 file changed, 15 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ git push -u origin singleDashFlags
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 565 bytes | 565.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote:
remote: Create a pull request for 'singleDashFlags' on GitHub by visiting:
remote:      https://github.com/dawiddymek1108/proj1/pull/new/singleDashFlags
remote:
To https://github.com/dawiddymek1108/proj1.git
 * [new branch]      singleDashFlags -> singleDashFlags
branch 'singleDashFlags' set up to track 'origin/singleDashFlags'.

dyzio@KomputerDawid MINGW64 ~/proj1 (singleDashFlags)
$ git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git merge singleDashFlags
Updating 418bcb1..eb4f176
Fast-forward
 skrypt.sh | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout -b initFeature
Switched to a new branch 'initFeature'

dyzio@KomputerDawid MINGW64 ~/proj1 (initFeature)
$ echo 'if [[ "$1" == "--init" ]]; then' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (initFeature)
$ echo '  git clone https://github.com/<twoje-konto>/<nazwa-repozytorium>.git' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (initFeature)
$ echo '  export PATH=$PATH:$(pwd)/<nazwa-repozytorium>' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (initFeature)
$ echo 'fi' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (initFeature)
$ git add skrypt.sh
warning: in the working copy of 'skrypt.sh', LF will be replaced by CRLF the next time Git touches it

dyzio@KomputerDawid MINGW64 ~/proj1 (initFeature)
$ git commit -m "Dodano opcję --init do skryptu"
[initFeature dc959ec] Dodano opcję --init do skryptu
 1 file changed, 4 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (initFeature)
$ git push -u origin initFeature
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 422 bytes | 422.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
remote:
remote: Create a pull request for 'initFeature' on GitHub by visiting:
remote:      https://github.com/dawiddymek1108/proj1/pull/new/initFeature
remote:
To https://github.com/dawiddymek1108/proj1.git
 * [new branch]      initFeature -> initFeature
branch 'initFeature' set up to track 'origin/initFeature'.

dyzio@KomputerDawid MINGW64 ~/proj1 (initFeature)
$ git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 5 commits.
  (use "git push" to publish your local commits)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git merge initFeature
Updating eb4f176..dc959ec
Fast-forward
 skrypt.sh | 4 ++++
 1 file changed, 4 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout -b errorFeature
Switched to a new branch 'errorFeature'

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ echo 'if [[ "$1" == "--error" || "$1" == "-e" ]]; then' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ echo '  num_files=${2:-100}' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ echo '  mkdir -p error' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ echo '  for i in $(seq 1 $num_files); do' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ echo '    echo -e "error$i\n$0\n$(date)" > error/error$i.txt' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ echo '  done' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ echo 'fi' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ git add skrypt.sh
warning: in the working copy of 'skrypt.sh', LF will be replaced by CRLF the next time Git touches it

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ git commit -m "Dodano opcję --error do skryptu"
[errorFeature f4a8734] Dodano opcję --error do skryptu
 1 file changed, 7 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ git push -u origin errorFeature
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 389 bytes | 389.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
remote:
remote: Create a pull request for 'errorFeature' on GitHub by visiting:
remote:      https://github.com/dawiddymek1108/proj1/pull/new/errorFeature
remote:
To https://github.com/dawiddymek1108/proj1.git
 * [new branch]      errorFeature -> errorFeature
branch 'errorFeature' set up to track 'origin/errorFeature'.

dyzio@KomputerDawid MINGW64 ~/proj1 (errorFeature)
$ git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 6 commits.
  (use "git push" to publish your local commits)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git merge errorFeature
Updating dc959ec..f4a8734
Fast-forward
 skrypt.sh | 7 +++++++
 1 file changed, 7 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout -b updateGitignore
Switched to a new branch 'updateGitignore'

dyzio@KomputerDawid MINGW64 ~/proj1 (updateGitignore)
$ echo 'error/' >> .gitignore

dyzio@KomputerDawid MINGW64 ~/proj1 (updateGitignore)
$ git add .gitignore
warning: in the working copy of '.gitignore', LF will be replaced by CRLF the next time Git touches it

dyzio@KomputerDawid MINGW64 ~/proj1 (updateGitignore)
$ git commit -m "Aktualizacja .gitignore, dodanie folderu error"
[updateGitignore 9e30ecf] Aktualizacja .gitignore, dodanie folderu error
 1 file changed, 1 insertion(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (updateGitignore)
$ git push -u origin updateGitignore
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 351 bytes | 175.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
remote:
remote: Create a pull request for 'updateGitignore' on GitHub by visiting:
remote:      https://github.com/dawiddymek1108/proj1/pull/new/updateGitignore
remote:
To https://github.com/dawiddymek1108/proj1.git
 * [new branch]      updateGitignore -> updateGitignore
branch 'updateGitignore' set up to track 'origin/updateGitignore'.

dyzio@KomputerDawid MINGW64 ~/proj1 (updateGitignore)
$ git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 7 commits.
  (use "git push" to publish your local commits)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git merge updateGitignore
Updating f4a8734..9e30ecf
Fast-forward
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git checkout -b completeHelp
Switched to a new branch 'completeHelp'

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ ^[[200~echo 'if [[ "$1" == "--help" || "$1" == "-h" ]]; then' >> skrypt.sh
bash: $'\E[200~echo': command not found

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ echo 'if [[ "$1" == "--help" || "$1" == "-h" ]]; then' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ echo '  echo "Dostępne opcje:"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ echo '  echo "--date, -d - wyświetla dzisiejszą datę"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ echo '  echo "--logs [n], -l [n] - tworzy n plików logx.txt (domyślnie 100)"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ echo '  echo "--help, -h - wyświetla dostępne opcje"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ echo '  echo "--init - klonuje repozytorium i dodaje do PATH"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ echo '  echo "--error [n], -e [n] - tworzy n plików errorx/errorx.txt (domyślnie 100)"' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ echo 'fi' >> skrypt.sh

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ git add skrypt.sh
warning: in the working copy of 'skrypt.sh', LF will be replaced by CRLF the next time Git touches it

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ git commit -m "Dokończono opcję --help"
[completeHelp e0a404e] Dokończono opcję --help
 1 file changed, 8 insertions(+)

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ git push -u origin completeHelp
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 410 bytes | 410.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
remote:
remote: Create a pull request for 'completeHelp' on GitHub by visiting:
remote:      https://github.com/dawiddymek1108/proj1/pull/new/completeHelp
remote:
To https://github.com/dawiddymek1108/proj1.git
 * [new branch]      completeHelp -> completeHelp
branch 'completeHelp' set up to track 'origin/completeHelp'.

dyzio@KomputerDawid MINGW64 ~/proj1 (completeHelp)
$ git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 8 commits.
  (use "git push" to publish your local commits)

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git rebase completeHelp
Successfully rebased and updated refs/heads/main.

dyzio@KomputerDawid MINGW64 ~/proj1 (main)
$ git push
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/dawiddymek1108/proj1.git
   e2f98df..e0a404e  main -> main
