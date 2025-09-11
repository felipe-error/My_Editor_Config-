local ls = require('luasnip')
local plat = 'lua'

ls.add_snippets(plat, {
  ls.snippet('fn', {
    ls.text_node('function '), ls.insert_node(1), ls.text_node('()'),
    ls.text_node({'', '  '}), ls.insert_node(2),
    ls.text_node({'', 'end'}),
   }),
})

ls.add_snippets(plat, {
  ls.snippet('hello', {
    ls.text_node('printf("Hello World")')}
)})


