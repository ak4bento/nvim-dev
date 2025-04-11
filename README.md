# nvim-dev

![Neovim](https://img.shields.io/badge/Neovim-v0.10%2B-blue?logo=neovim)
![NvChad](https://img.shields.io/badge/NvChad-based-success?logo=lua)
![Maintained by ak4bento](https://img.shields.io/badge/Maintainer-ak4bento-blueviolet)

> ⚡️ Custom Neovim configuration built on top of [NvChad](https://github.com/NvChad/NvChad), designed for **modern development**, including **Golang**, **AI/NLP**, and terminal-centric workflows.

---

## ✨ Features

- 🔌 Built on **NvChad** (lightweight + fast)
- 🧠 Ready for **AI & NLP development**
- 🧰 Supports **Golang**, **Python**, **Node.js**, and more
- 🎨 Terminal-first with full **powerline + nerd font** support
- 🚀 Instant startup via Docker (used in [OS-Nvim](https://github.com/ak4bento/os-nvim))

---

## 📦 Installation

### Manual Setup (for local use)

Clone this config into your Neovim configuration directory:

```bash
git clone https://github.com/ak4bento/nvim-dev ~/.config/nvim
```

> ⚠️ Requires **Neovim v0.10+** to run properly.

You can check your Neovim version with:

```bash
nvim --version
```

Make sure it shows `v0.10.0` or higher.

---

### Docker Integration (for OS-Nvim)

In your Dockerfile (e.g. for `os-nvim`), use:

```dockerfile
# Inside your Dockerfile
RUN git clone https://github.com/ak4bento/nvim-dev ~/.config/nvim
```

This will set up the custom Neovim configuration inside your container.

---

## 📁 Folder Structure

This repo follows the official [NvChad starter template](https://github.com/NvChad/starter) structure:

```
~/.config/nvim/
├── lua/
│   ├── custom/
│   │   ├── init.lua       # Entry point for your config
│   │   ├── plugins/       # Custom plugin specs
│   │   ├── configs/       # Plugin configurations
│   │   └── mappings.lua   # Your key mappings
└── init.lua               # Loads NvChad
```

You can:

- Add plugins in `lua/custom/plugins/`
- Configure each plugin in `lua/custom/configs/`
- Map your own keys in `lua/custom/mappings.lua`

---

## 🔤 Recommended Fonts

This config uses Nerd Font patched fonts for icons and Powerline symbols.

> ✅ Recommended fonts:
> - [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)
> - [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)

---

## 🔌 Plugin Highlights

Here are some plugins included or pre-configured (via NvChad + custom layer):

- [`nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig) + Mason – LSP support
- [`null-ls`](https://github.com/nvimtools/none-ls.nvim) – formatters and linters
- [`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp) – autocompletion
- [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) – fuzzy finder
- [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) – syntax highlighting

> Coming soon: AI-powered workflows with custom plugins (OpenAI, DeepSeek, etc).

---

## 🛠 Customize

Need to tweak settings or mappings?

Just modify:

- `lua/custom/init.lua` – overrides
- `lua/custom/mappings.lua` – keymaps
- `lua/custom/plugins/*.lua` – add/disable plugins

---

## 🤝 Contributing

Pull requests are welcome!

If you have suggestions for better dev experience (especially for Golang, Rust, or AI workflows), feel free to open an issue or PR. Let’s build a top-tier terminal dev setup together.

---

## 📜 License

MIT License © 2025 [ak4bento](https://github.com/ak4bento)
