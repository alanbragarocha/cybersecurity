#!/usr/bin/env bash
# Script: baixar_seclists_pt.sh
# Objetivo: baixar listas do SecLists com pastas nomeadas em português

set -euo pipefail

BASE_DIR="listas_seclists"
mkdir -p "$BASE_DIR"

# ---------------- Senhas ---------------- #
echo "🔐 Baixando listas de senhas..."

mkdir -p "$BASE_DIR/senhas/comuns"
mkdir -p "$BASE_DIR/senhas/vazadas"
mkdir -p "$BASE_DIR/senhas/padroes"

# Senhas comuns
curl -sLo "$BASE_DIR/senhas/comuns/10k-mais-comuns.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10k-most-common.txt
curl -sLo "$BASE_DIR/senhas/comuns/500-piores.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/500-worst-passwords.txt
curl -sLo "$BASE_DIR/senhas/comuns/1-milhao-seclists.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/1000000-password-seclists.txt
curl -sLo "$BASE_DIR/senhas/comuns/top-10000.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/top-10000.txt

# Senhas vazadas
curl -sLo "$BASE_DIR/senhas/vazadas/rockyou-75.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/rockyou-75.txt
curl -Lso "$BASE_DIR/senhas/vazadas/rockyou.txt.tar.gz" https://github.com/danielmiessler/SecLists/raw/master/Passwords/Leaked-Databases/rockyou.txt.tar.gz
curl -sLo "$BASE_DIR/senhas/vazadas/000webhost.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/000webhost.txt
curl -sLo "$BASE_DIR/senhas/vazadas/exploit.in.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/exploit.in.txt

# Senhas padrão
curl -sLo "$BASE_DIR/senhas/padroes/senhas-padroes.csv" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Default-Credentials/default-passwords.csv
curl -sLo "$BASE_DIR/senhas/padroes/cirt-senhas.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Default-Credentials/cirt-default-passwords.txt
curl -sLo "$BASE_DIR/senhas/padroes/routerpasswords.csv" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Default-Credentials/RouterPasswordscom-default-passwords.csv

# ---------------- Usuários ---------------- #
echo "👤 Baixando listas de usuários..."

mkdir -p "$BASE_DIR/usuarios"

curl -sLo "$BASE_DIR/usuarios/usuarios-top.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Usernames/top-usernames-shortlist.txt
curl -sLo "$BASE_DIR/usuarios/usuarios-windows.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Usernames/Names/win.txt
curl -sLo "$BASE_DIR/usuarios/usuarios-linux.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Usernames/Names/linux.txt
curl -sLo "$BASE_DIR/usuarios/usuarios-email.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Usernames/Names/top-email-users.txt

# ---------------- Diretórios ---------------- #
echo "📂 Baixando listas de diretórios..."

mkdir -p "$BASE_DIR/diretorios"

curl -sLo "$BASE_DIR/diretorios/comuns.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/common.txt
curl -sLo "$BASE_DIR/diretorios/apache.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/apache.txt
curl -sLo "$BASE_DIR/diretorios/iis.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/iis.txt
curl -sLo "$BASE_DIR/diretorios/lista-media.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/directory-list-2.3-medium.txt
curl -sLo "$BASE_DIR/diretorios/extensoes-web.txt" https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/web-extensions.txt

echo "✅ Concluído! Arquivos salvos em ./$BASE_DIR"

