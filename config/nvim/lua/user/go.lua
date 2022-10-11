if vim.fn.executable('gofmt') == 1 then
  
  vim.api.nvim_create_autocmd({'BufWritePost'}, { pattern = "*.go" }, command = "!gofmt -w -e ." )
end
