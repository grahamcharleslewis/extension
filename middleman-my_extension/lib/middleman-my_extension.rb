require "middleman-core"

Middleman::Extensions.register :my_extension do
  require "middleman-my_extension/extension"
  MyExtension
end
