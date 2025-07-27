
# 📚 Guia de Estudo: Scripts NSE do Nmap

Este material é voltado para estudantes de **cibersegurança e pentest**, com foco no uso prático dos scripts NSE (Nmap Scripting Engine).

---

## 📁 Organização dos Scripts

Os scripts são baixados e organizados nas seguintes categorias:

- `ssh/` → Enumeração e brute force de SSH
- `vulnerabilidades/` → Exploração e detecção de CVEs
- `enumeracao/` → Coleta de informações de serviços como HTTP, FTP, SMTP, DNS, etc.

---

## 🧪 Casos de Uso para Estudo

### 🔐 1. **Força Bruta SSH**
Teste de dicionário contra um servidor SSH:

```bash
nmap -p 22 --script ssh-brute.nse --script-args userdb=usuarios.txt,passdb=senhas.txt 192.168.0.100
```

> 💡 Dica: use máquinas vulneráveis como do TryHackMe ou Hack The Box para testes legais e seguros.

---

### 🕵️ 2. **Descoberta de Vulnerabilidades HTTP**

```bash
nmap -p 80 --script http-vuln-cve2017-5638.nse 192.168.0.100
```

> 📌 Essa CVE afeta servidores Apache Struts 2. Ideal para laboratórios de análise de CVEs.

---

### 🧠 3. **Enumeração de Diretórios Web**

```bash
nmap -p 80 --script http-enum.nse 192.168.0.100
```

> 🎯 Útil para descobrir painéis administrativos e arquivos ocultos.

---

### 🔎 4. **Verificação de Headers de Segurança**

```bash
nmap -p 80 --script http-security-headers.nse 192.168.0.100
```

> 🛡️ Verifica práticas recomendadas de segurança em aplicações web.

---

### 🛰️ 5. **Zone Transfer em DNS**

```bash
nmap -p 53 --script dns-zone-transfer.nse 192.168.0.100
```

> 🧬 Usado para capturar zonas DNS inteiras quando má configuração permite.

---

### 🐍 6. **Exploração do Samba (MS17-010)**

```bash
nmap -p 445 --script smb-vuln-ms17-010.nse 192.168.0.100
```

> ⚠️ Identifica se o alvo é vulnerável ao exploit EternalBlue.

---

## 🎓 Dicas de Estudo

- Use laboratórios controlados como **TryHackMe**, **VulnHub** ou **máquinas virtuais vulneráveis**.
- Sempre execute com o parâmetro `-sV` para detectar versões:
```bash
nmap -sV -p 80 --script http-methods.nse 192.168.0.100
```
- Estude o conteúdo dos scripts `.nse` – eles são escritos em **Lua**, o que facilita modificações.

---

## 🔐 Aviso Legal

> Nunca execute varreduras em redes que você **não tem permissão**. Use ambientes de teste.

---

## 📘 Recursos Extras

- [Documentação oficial do NSE](https://nmap.org/book/nse.html)
- [Repositório GitHub dos scripts](https://github.com/nmap/nmap/tree/master/scripts)
