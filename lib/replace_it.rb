require "replace_it/version"

class ReplaceDocument
  attr_accessor :original_file, :temp_file

  def initialize(original_file, temp_file)
    @original_file = original_file
    @temp_file     = temp_file
  end

  def document_replace(string, new_string)
    File.open(@temp_file, 'w') do |file|
      file.puts File.read(@original_file).gsub(/#{string}/, new_string)
    end
  end
end
