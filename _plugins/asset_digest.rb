module Jekyll
  module AssetDigest
    def asset_digest(input)
      site = @context.registers[:site]
      file_path = site.in_source_dir(input.sub(/^\//, ''))

      if File.exist?(file_path)
        content = File.read(file_path)
        hash = Digest::MD5.hexdigest(content)
        Jekyll.logger.info "AssetDigest", "Generated: #{input} => #{hash}"
        "#{input}?v=#{hash}"
      else
        input
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetDigest)
