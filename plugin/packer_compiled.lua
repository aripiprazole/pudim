-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/gabi/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/gabi/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/gabi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/gabi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gabi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["agda-vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/agda-vim",
    url = "https://github.com/derekelkins/agda-vim"
  },
  aniseed = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/aniseed",
    url = "https://github.com/Olical/aniseed"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  conjure = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/conjure",
    url = "https://github.com/Olical/conjure"
  },
  ["crates.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  darcula = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/darcula",
    url = "https://github.com/doums/darcula"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["eva01.vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/eva01.vim",
    url = "https://github.com/hachy/eva01.vim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/famiu/feline.nvim"
  },
  ["fennel-nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/fennel-nvim",
    url = "https://github.com/jaawerth/fennel-nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["haskell-vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/haskell-vim",
    url = "https://github.com/neovimhaskell/haskell-vim"
  },
  ["idris-vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/idris-vim",
    url = "https://github.com/idris-hackers/idris-vim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp-trouble.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim",
    url = "https://github.com/folke/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["night-owl.vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/night-owl.vim",
    url = "https://github.com/haishanh/night-owl.vim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-compe",
    url = "https://github.com/hrsh7th/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-lsputils",
    url = "https://github.com/RishabhRD/nvim-lsputils"
  },
  ["nvim-metals"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-metals",
    url = "https://github.com/scalameta/nvim-metals"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/popfix",
    url = "https://github.com/RishabhRD/popfix"
  },
  ["popui.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/popui.nvim",
    url = "https://github.com/hood/popui.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["sitruuna.vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/sitruuna.vim",
    url = "https://github.com/eemed/sitruuna.vim"
  },
  sniprun = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  sonokai = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["space-vim-dark"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/space-vim-dark",
    url = "https://github.com/liuchengxu/space-vim-dark"
  },
  ["spacegray.vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/spacegray.vim",
    url = "https://github.com/ackyshake/spacegray.vim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-lsp-handlers.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/telescope-lsp-handlers.nvim",
    url = "https://github.com/gbrlsnchs/telescope-lsp-handlers.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight-vim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/tokyonight-vim",
    url = "https://github.com/ghifarit53/tokyonight-vim"
  },
  vim = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/embark-theme/vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-codefmt"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-codefmt",
    url = "https://github.com/google/vim-codefmt"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-colors-xcode",
    url = "https://github.com/arzg/vim-colors-xcode"
  },
  ["vim-glaive"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-glaive",
    url = "https://github.com/google/vim-glaive"
  },
  ["vim-gruvbox8"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-gruvbox8",
    url = "https://github.com/lifepillar/vim-gruvbox8"
  },
  ["vim-handmade-hero"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-handmade-hero",
    url = "https://github.com/creaturephil/vim-handmade-hero"
  },
  ["vim-koka"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-koka",
    url = "https://github.com/Nymphium/vim-koka"
  },
  ["vim-llvm"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-llvm",
    url = "https://github.com/rhysd/vim-llvm"
  },
  ["vim-maktaba"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-maktaba",
    url = "https://github.com/google/vim-maktaba"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-moonlight2"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-moonlight2",
    url = "https://github.com/gugsrs/vim-moonlight2"
  },
  ["vim-reasonml"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-reasonml",
    url = "https://github.com/jordwalke/vim-reasonml"
  },
  ["vim-rescript"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-rescript",
    url = "https://github.com/rescript-lang/vim-rescript"
  },
  ["vim-solarized8"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-solarized8",
    url = "https://github.com/lifepillar/vim-solarized8"
  },
  ["vim-solidity"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-solidity",
    url = "https://github.com/tomlion/vim-solidity"
  },
  ["vim-styled-components"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-styled-components",
    url = "https://github.com/fleischie/vim-styled-components"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  ["vim-wordmotion"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/vim-wordmotion",
    url = "https://github.com/chaoren/vim-wordmotion"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/gabi/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
