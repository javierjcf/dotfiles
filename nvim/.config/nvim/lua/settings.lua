--
-- EDITOR SETTINGS

local o = vim.o
local g = vim.g

--o.nocompatible = true         -- disable compatibility old-time vi
o.ignorecase = true           -- case insensitive
o.mouse = 'v'                 -- middle-click paste with
o.mouse = 'a'                 -- enable mouse
o.hlsearch = true             -- highlight search
o.incsearch = true            -- incremental search
o.tabstop = 4                 -- number columns by tab
o.softtabstop = 4              -- number columns by tab
o.shiftwidth = 4               -- width for autoindenters
o.expandtab = true            -- convert taqbs to white spaces
o.autoindent = true           -- autoindent
o.number = true               -- show line numbers
o.relativenumber = true       -- showrelative numbers
o.syntax = 'on'               -- hightlight sintax 
o.clipboard = 'unnamedplus'   -- using system keyboard
--o.cc = '80'                     -- 80 as line border


-- TIMEOUTS PARA EL REMAP DE JK COMO ESC
o.timeout = true
o.ttimeout = true
o.timeoutlen = 1000
o.ttimeoutlen = 50


o.termguicolors = true



