
PROJECT	:= Instalation_Berry_WM

push:
	git remote set-url origin \
		git@github.com-Feavr555:Feavr555/$(PROJECT).git
	git push -u origin main --force



init:
	git remote add origin https://github.com/Feavr555/$(PROJECT).git
	git pull origin main

