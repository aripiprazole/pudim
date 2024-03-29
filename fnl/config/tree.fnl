(local nvim (require :aniseed.nvim))
(local nvim-tree (require :nvim-tree))

(local g nvim.g)

(set g.nvim_tree_width_allow_resize 1)

;; Setup key bindings

(vim.api.nvim_set_keymap "n" "<leader>n" "<cmd>NvimTreeToggle<CR>" {:noremap true})
(vim.api.nvim_set_keymap "n" "<leader>r" "<cmd>NvimTreeRefresh<CR>" {:noremap true})
(vim.api.nvim_set_keymap "n" "<leader>nf" "<cmd>NvimTreeFindFile<CR>" {:noremap true})

;; Setup nvim-tree
(nvim-tree.setup {
  :renderer {
    :indent_markers {
      :enable true
    }
    :highlight_opened_files "all"
    :special_files ["README.md" "Makefile"]
    :icons {
      :glyphs {
        :default ""
        :symlink ""
        :git {
          :unstaged "✗"
          :staged "✓"
          :unmerged ""
          :renamed "➜"
          :untracked "★"
          :deleted ""
          :ignored "◌"
        }
        :folder {
          :arrow_open ""
          :arrow_closed ""
          :default ""
          :open ""
          :empty ""
          :empty_open ""
          :symlink ""
          :symlink_open ""
        }
      }
    }
  }
  :diagnostics {
    :enable false
    :icons {
      :hint ""
      :info ""
      :warning ""
      :error ""
    }
  } 
  :view {
    :side :left
    :width 30
    :hide_root_folder true
  } 
  :update_focused_file {:enable true}
})
