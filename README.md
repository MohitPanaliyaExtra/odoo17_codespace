## 📂 Preparation
Before starting, ensure your three master scripts (`setup_env.sh`, `install_deps.sh`, and `run.sh`) are saved in the root directory.

1. **Open the Terminal**
2. **Grant Execution Permissions:**
   ```bash
   chmod +x *.sh

```

---

## 🛠️ Step 1: Infrastructure Initialization

This step handles the installation of the PostgreSQL server, system headers, and Odoo source code.

* **Run command:**
```bash
./setup_env.sh

```


* **Status:** Wait for the message `✅ Infrastructure Ready!`

---

## 🐍 Step 2: Python Environment & Dependencies

This step builds the virtual environment and installs the patched Odoo requirements.

1. **Activate the environment:**
```bash
source odoo-venv/bin/activate

```


2. **Install dependencies:**
```bash
./install_deps.sh

```



* **Status:** Wait for the message `🚀 Python Environment Ready!`

---

## 🚀 Step 3: Launching Odoo

This starts the database services and the web server.

* **Run command:**
```bash
./run.sh

```


* **Status:** The terminal will show the URL and the message `HTTP service (werkzeug) running on localhost:8069`.

---

## 🌐 Step 4: Web Browser Configuration

1. Click the **"Open in Browser"** popup from Codespaces.
2. Fill in the **Database Management** form with these specific values:
* **Master Password:** `admin`
* **Database Name:** `odoo_dev`
* **Email (Login):** `admin`
* **Password:** `admin`


3. Click **Create Database** (this may take up to 2 minutes).

---
