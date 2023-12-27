return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  s(
    "hi",
    { t("Hello, world!") }
  ),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  s(
    "foo",
    { t("Another snippet.") }
  ),
  
  s("snip", fmt([[

  s("<>",{t("<>")}),

  ]],

  {i(1),i(2)},

  {delimiters="<>"}

  )
  ),

  
  s("snif",{
      t('s("'),
      i(1),
      t('", fmt([['),
      i(2),
      t(']],'),
      t('{'),
      i(3),
      t('},'),
      t('{delimiters="<>"})),')
  }
  ),
 
  s("i",{
  t('i('),
  i(1),
  t('),')
  }),

  
  







  
}










