require 'redcarpet'

module Nanoc::DataSources
  module Filesystem
    def items
      ghp_config = Nanoc::Site.new('.').config
      alt_content = ghp_config[:alt_content] || "content"
      alt_dir = $:.collect {|x| File.join(File.expand_path("..", x), alt_content) }.select {|x| File.directory? x }[0]
      load_objects(alt_dir, 'item', Nanoc::Item)
    end

    def layouts
      ghp_config = Nanoc::Site.new('.').config
      alt_layouts = ghp_config[:alt_layouts] || "layouts"
      alt_dir = $:.collect {|x| File.join(File.expand_path("..", x), alt_layouts) }.select {|x| File.directory? x }[0]
      load_objects(alt_dir, 'layout', Nanoc::Layout)
    end
  end
end

include Nanoc3::Helpers::Rendering
