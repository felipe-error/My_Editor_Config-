return {
  'rcarriga/nvim-notify',
  config = function()
    require('notify').setup({
      render = 'default'
    })
  end
}
