require "replace_it/version"

module ReplaceIt
  def self.document_replace(options = {})
    File.open(options[:temp_file], 'w') do |file|
      file.puts File.read(options[:original_file]).gsub(/#{options[:string]}/, options[:new_string])
    end
  end
end
