(local dapui (require :dapui))
(local dap (require :dap))
(local nvim-dap-virtual-text (require :nvim-dap-virtual-text))

(dapui.setup {:sidebar {:size 30
                        :position :left
                        :elements [{:id :watches :size 0.2}
                                   {:id :stacks :size 0.4}
                                   {:id :scopes :size 0.4}]}})

(nvim-dap-virtual-text.setup {})

(vim.fn.sign_define :DapBreakpoint
                    {:text "🛑" :texthl "" :linehl "" :numhl ""})

(vim.api.nvim_set_keymap :n :<F5> ":lua require'dap'.continue()<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<F7> ":lua require'dapui'.toggle()<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<F9> ":lua require'dap'.terminate()<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<F10> ":lua require'dap'.step_over()<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<F11> ":lua require'dap'.step_into()<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<F12> ":lua require'dap'.step_out()<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<leader>b
                         ":lua require'dap'.toggle_breakpoint()<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<leader>B
                         ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<leader>lp
                         ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<leader>dr ":lua require'dap'.repl.open()<CR>"
                         {:noremap true})
(vim.api.nvim_set_keymap :n :<leader>dl ":lua require'dap'.run_last()<CR>"
                         {:noremap true})

