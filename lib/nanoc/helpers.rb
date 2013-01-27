require 'redcarpet'

module Nanoc::DataSources
  module Filesystem
    def items
      load_objects('alt_content', 'item', Nanoc::Item)
    end

    def layouts
      load_objects('alt_layouts', 'layout', Nanoc::Layout)
    end
  end
end

include Nanoc3::Helpers::Rendering
