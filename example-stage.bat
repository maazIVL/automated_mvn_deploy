@echo off
>stage-%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%.log 2>&1 (
  mvn clean package -X -Denv=stage -Dregion=sydney cargo:redeploy
  mvn clean package -X -Denv=stage -Dregion=perth cargo:redeploy
)
