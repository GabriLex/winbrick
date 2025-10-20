# WinBrick 🧱💀

---

## 📋 **Descrizione**

**WinBrick** è un **batch script educativo** progettato per **simulare il brick totale di Windows 10/11**. 

**⚠️ AVVISO CRITICO: USO SOLO SU AMBIENTI DI TEST ISOLATI! ⚠️**

- **Target**: Windows 10/11 (tutte le build incluse 25H2)
- **Modalità**: **Offensiva/Educativa**
- **Efficacia**: **100% brick garantito**
- **Recovery**: Richiede Windows Recovery USB

---

## 🔥 **Cosa Fa WinBrick**

### **Vettori di Attacco Multipli:**
1. **`winlogon.exe`** → **Debugger override** (Login brick)
2. **`explorer.exe`** → **Desktop brick** 
3. **Servizi critici** → **System services disabled**
4. **BCD Boot** → **No recovery + boot failures**
5. **Registry** → **System corruption + Shell override**

### **Risultato Finale:**
```
💀 SCHERMO NERO ALL'AVVIO 💀
💀 BSOD o boot loop 💀  
💀 Sistema completamente inutilizzabile 💀
```

---

## 🎨 **ASCII Art Iconica**

```
   .  .    .__        .  
  |  |*._ [__)._.* _.;_/
  |/\||[ )[__)[  |(_.| \                 
```

---

## 🚀 **Caratteristiche Principali**

### ✅ **Versione 2.2 - STABLE**
- **Auto-elevazione UAC** → Doppio click → Brick!
- **ASCII Art perfetta** su tutte le risoluzioni
- **VM Detection** → Avviso per hardware fisico
- **5-step brick sequence** → Multi-vector attack
- **Countdown animato** con ASCII
- **Log file** → `%temp%\winbrick.log`
- **Error handling** → 100% affidabile

---

## 📥 **Installazione**

### **Prerequisiti:**
- **Windows 10/11** (qualsiasi build)
- **Privilegi amministratore**
- **Ambiente di test isolato** (VM consigliata)

### **Download:**
```bash
git clone https://github.com/gabriled/winbrick.git
cd winbrick
```

**O scarica direttamente:** `WinBrick_v2.2.bat`

---

## 🎮 **Utilizzo**

### **Metodo 1: Doppio Click (Auto-Elevate)**
```
1. Doppio click su WinBrick_v2.2.bat
2. UAC → "Sì"
3. Digita: BRICK
4. 🔥 BRICK COMPLETO! 🔥
```

### **Metodo 2: CMD Admin**
```cmd
# Apri CMD come Amministratore
WinBrick_v2.2.bat
# Digita: BRICK
```

---

## 📊 **Flusso di Esecuzione**

```
[START] → Admin Check → UAC Prompt
     ↓
[VM SCAN] → Environment Analysis
     ↓  
[WARNING] → Type "BRICK" to confirm
     ↓
[BRICK 1/5] Winlogon.exe → ✅ BRICKED
[BRICK 2/5] Explorer.exe → ✅ BRICKED  
[BRICK 3/5] Services → ✅ DISABLED
[BRICK 4/5] Boot Config → ✅ CORRUPTED
[BRICK 5/5] Registry → ✅ CORRUPTED
     ↓
[SUCCESS] → 100% BRICK COMPLETE
     ↓
[COUNTDOWN] → 10s → REBOOT
     ↓
💀 SYSTEM BRICKED 💀
```

---

## 🛡️ **Recovery Guide**

### **Metodo 1: Windows Recovery USB**
1. **Crea USB bootable** Windows 10/11
2. **Boot da USB** → **Ripristina PC**
3. **Reset completo** (dati persi)

### **Metodo 2: Safe Mode (Parziale)**
```
1. F8/F12 → Safe Mode
2. Regedit → Rimuovi Image File Execution Options
3. riavvia
```

### **Metodo 3: Registry Backup**
```cmd
# Da recovery USB
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /f
```

---

## 🧪 **Test Environments**

| **Ambiente** | **Status** | **Note** |
|--------------|------------|----------|
| **VMware** | ✅ **SAFE** | Consigliato |
| **VirtualBox** | ✅ **SAFE** | Consigliato |
| **Hyper-V** | ✅ **SAFE** | Consigliato |
| **Physical PC** | ⚠️ **DANGER** | **NON USARE** |

---

## 📝 **Log File**

**Posizione:** `%temp%\winbrick.log`

**Esempio:**
```
10/20/2025 14:30:15 - WinBrick v2.2 SUCCESS | PC-TEST | VM
```

---

## ⚠️ **Avvertenze Legali**

### **🔴 PERICOLI CRITICI:**
- **IRRECUPERABILE** senza recovery tools
- **PERDITA DATI** totale
- **SOLO VM ISOLATE** o sistemi **usa e getta**
- **NON USARE** su produzione/hardware reale

### **📜 DISCLAIMER:**
```
QUESTO SCRIPT È FORNITO "COSÌ COM'E'" PER SCOPI EDUCATIVI.
L'AUTORE NON È RESPONSABILE PER DANNI CAUSATI DA UTILIZZO IMPROPRIO.
USARE SOLO SU AMBIENTI DI TEST CONTROLLATI.
```

---

## 🔧 **Troubleshooting**

### **❌ Problemi Comuni:**

| **Errore** | **Soluzione** |
|------------|---------------|
| **"Access denied"** | **Run as Administrator** |
| **"Brick non funziona"** | **Riavvia** dopo esecuzione |
| **"ASCII rotta"** | **CMD con Raster Fonts** |
| **"Si chiude subito"** | **Disabilita Antivirus** |

---

<div align="center">

```
   .  .    .__        .  
  |  |*._ [__)._.* _.;_/
  |/\||[ )[__)[  |(_.| \                 
```

**🧱 WINBRICK v2.2 - IL BRICK DEFINITIVO 🧱**

</div>

---

**⚠️ **RICORDA: USA SOLO SU VM DI TEST!** ⚠️** 🔥💀🧱
