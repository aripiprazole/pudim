(local nvim (require :aniseed.nvim))

(require :plugins)

(require :themes.github)

(require :config.icons)
(require :config.lsp)
(require :config.tab)
(require :config.editor)
(require :config.ui)
(require :config.scroll)
(require :config.completion)
(require :config.formatting)
(require :config.terminal)
(require :config.tree)
(require :config.debug)
(require :config.which-key)

(require :languages.rust)
(require :languages.scala)

(require :config.theming)

(nvim.fn.glaive#Install)

