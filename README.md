# 🐱 Setup Neovim di Termux (Android)

Konfigurasi ini dibuat untuk belajar coding Python (FastAPI), Node.js (Express), dan Next.js langsung dari HP menggunakan Termux.  
Menggunakan **lazy.nvim** sebagai plugin manager → cepat, modern, dan mudah di-maintain.  
*This configuration is made for coding Python (FastAPI), Node.js (Express), and Next.js directly from a phone using Termux.  
It uses **lazy.nvim** as the plugin manager → fast, modern, and easy to maintain.*

---

## ✨ Fitur  
*Features*

- 🎨 Tema → [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)  
  *Theme*  
- 📂 File Explorer → [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)  
  *File Explorer*  
- 📝 Highlight Syntax → [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)  
  *Syntax Highlighting*  
- 🔍 Pencarian Cepat → [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)  
  *Fast Search*  
- ⚡ Autocomplete → [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)  
  *Autocomplete*  
- 🧩 Snippets → [LuaSnip](https://github.com/L3MON4D3/LuaSnip)  
  *Snippets*  
- 🧠 LSP (Language Server Protocol) → [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)  
  *Language Server Support*  
- 📊 Statusline → [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)  
  *Statusline*  

---

## 📦 Instalasi  
*Installation*

1. **Pasang package yang dibutuhkan**  
   *Install required packages*  

   ```bash
   pkg install neovim git curl wget ripgrep fd clang nodejs python -y
   ```

2. **Buat folder konfigurasi**  
   *Create config folder*  

   ```bash
   mkdir -p ~/.config/nvim
   nvim ~/.config/nvim/init.lua
   ```

3. **Unduh atau Copy init.lua**  
   *Download or Copy init.lua*  

   ```bash
   -- Unduh atau salin file config.init.lua yang ada di repository ini
   -- Download or copy the config.init.lua file from this repository.
   ```

4. **Install LSP servers**  
   *Install LSP servers*  

   ```bash
   npm install -g pyright typescript typescript-language-server
   ```

5. **Jalankan Neovim dan sinkronisasi plugin**  
   *Run Neovim and sync plugins*  

   ```bash
   nvim
   ```

   Di dalam Neovim ketik:  
   *Inside Neovim type:*  

   ```
   :Lazy sync
   ```

---

## 🎹 Shortcut Penting  
*Important Shortcuts*

| Shortcut    | Fungsi (Indonesia)       | *Function (English)*       |
|-------------|--------------------------|-----------------------------|
| `<space>e`  | Buka / tutup file explorer | *Open / close file explorer* |
| `<space>ff` | Cari file                | *Find file*                 |
| `<space>fg` | Cari teks dalam project  | *Search text in project*    |
| `<space>fb` | List buffer              | *List buffers*              |
| `<space>fh` | Help tags                | *Help tags*                 |

---

## 👽 ESC Mode (Important)

| Command     | Fungsi (Indonesia)           | *Function (English)*       |
|-------------|------------------------------|-----------------------------|
| `:w`        | Simpan file                  | *Save file*                 |
| `:q`        | Keluar dari Neovim           | *Quit Neovim*               |
| `:wq`       | Simpan lalu keluar           | *Save and quit*             |
| `:q!`       | Keluar tanpa simpan          | *Quit without saving*       |
| `i`         | Masuk ke mode insert         | *Enter insert mode*         |
| `v`         | Masuk ke mode visual         | *Enter visual mode*         |
| `yy`        | Copy 1 baris                 | *Yank line (copy)*          |
| `dd`        | Hapus 1 baris                | *Delete line*               |
| `p`         | Paste di bawah cursor        | *Paste below*               |
| `u`         | Undo                         | *Undo last change*          |
| `Ctrl + r`  | Redo                         | *Redo*                      |
| `/teks`     | Cari kata dalam file         | *Search text in file*       |
| `n`         | Lompat ke hasil cari berikut | *Next search result*        |
| `N`         | Lompat ke hasil cari sebelumnya | *Previous search result* |
| `gg`        | Lompat ke awal file          | *Go to top*                 |
| `G`         | Lompat ke akhir file         | *Go to bottom*              |
| `0`         | Lompat ke awal baris         | *Go to line start*          |
| `$`         | Lompat ke akhir baris        | *Go to line end*            |
| `<space>ff` | Cari file dalam project      | *Find file*                 |
| `<space>fg` | Cari teks dalam project      | *Search text in project*    |
| `<space>fb` | Lihat daftar buffer          | *List buffers*              |
| `<space>fh` | Help tags (bantuan)          | *Help tags*                 |

---

## 📌 Catatan  
*Notes*

- Config ini dibuat khusus untuk Termux, tapi juga bisa dipakai di Linux / WSL.  
  *This config is made for Termux, but also works on Linux / WSL.*  
- Kalau HP kamu low-end, bisa bikin versi minimalis (tanpa Telescope & Treesitter).  
  *If your phone is low-end, you can make a minimal version (without Telescope & Treesitter).*  

---

🐱 Selamat coding dengan Neovim di HP!  
*Happy coding with Neovim on your phone!*
