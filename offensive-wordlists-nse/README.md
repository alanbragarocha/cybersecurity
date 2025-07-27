
# 🔧 Estrutura Personalizada de Scripts e Wordlists para Pentest

Este pacote contém scripts NSE e wordlists organizados por categoria para facilitar seu uso em ferramentas como `nmap`, `hydra`, `gobuster`, `ffuf` e outras.

---

## 📂 Estrutura

```
scripts/
├── ssh/
├── enumeracao/
└── vulnerabilidades/

wordlists/
├── senhas/
├── usuarios/
├── web_diretorios/
├── subdominios/
├── iot_default/
└── fuzzing_exploits/
```

---

## 🚀 Exemplos de Uso

### 🔍 Nmap com Scripts Personalizados

**Rodar um script específico:**
```bash
nmap -p 22 --script ./scripts/ssh/ssh-brute.nse 192.168.0.100
```

**Rodar todos os scripts de uma categoria:**
```bash
nmap -p 80 --script ./scripts/enumeracao/ 192.168.0.100
```

---

### 🔐 Hydra com Wordlists

**Brute force em SSH:**
```bash
hydra -L ./wordlists/usuarios/usernames.txt -P ./wordlists/senhas/rockyou.txt ssh://192.168.0.100
```

---

### 🌐 Gobuster ou FFUF

**Descoberta de diretórios web:**
```bash
gobuster dir -u http://alvo.com -w ./wordlists/web_diretorios/common.txt
```

**Enumeração de subdomínios:**
```bash
gobuster dns -d alvo.com -w ./wordlists/subdominios/dns-Jhaddix.txt
```

---

### 🧪 Fuzzing / Exploits

**Fuzzing com payloads de XSS:**
```bash
ffuf -w ./wordlists/fuzzing_exploits/xss-payload-list.txt -u http://alvo.com/FUZZ
```

---

## ✅ Dicas

- Scripts NSE podem ser usados **sem mover para `/usr/share/nmap/scripts`**.
- Wordlists funcionam em qualquer local desde que o caminho seja informado corretamente.
- Recomendado usar ambientes de teste como **TryHackMe**, **Hack The Box** ou **máquinas virtuais vulneráveis**.

---

## ⚠️ Aviso Legal

> Use apenas em ambientes que você tem **permissão legal** para testar.

---

## 👨‍💻 Autor
Organizado para facilitar estudos de cibersegurança ofensiva e testes práticos com ferramentas populares.
