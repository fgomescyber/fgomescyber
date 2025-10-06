@echo off
cd /d "C:\Users\Saints Nandy\Documents\Project_Git_Github\fgomescyber"

echo =============================
echo [1/3] Puxando mudanças do GitHub
git pull origin main

echo [2/3] Adicionando arquivos novos e alterados
git add .

echo [3/3] Commitando e enviando para o GitHub
git diff --quiet
if %errorlevel% equ 0 (
    echo Nenhuma alteração para commit.
) else (
    git commit -m "Sync automático em %date% %time%"
    git push origin main
)

echo ✅ Sincronização concluída.
pause
