require "replace_it/version"

module ReplaceIt
  def document_replace!(file_name:, string:, new_string:)
    File.open(file_name, 'w') do |file|
      file.puts File.read(file_name).gsub(/#{string}/, new_string)
    end
  end

  def document_replace(original_file:, temp_file:, options = {})
    File.open(temp_file, 'w') do |file|
      file.puts File.read(original_file).gsub(/#{string}/, new_string)
    end
  end
end
