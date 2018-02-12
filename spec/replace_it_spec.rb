require "spec_helper"
require 'pry'

describe ReplaceIt do
  let(:file_name)   { 'testfile.txt' }
  let(:temp_file)   { 'testtemfile.txt' }
  let(:content)     { 'aaa' }
  let(:new_content) { 'bbb' }
  let(:replace)     { ReplaceDocument.new(file_name, temp_file) }

  around(:each) do |example|
    File.open(file_name, 'w') { |f| f.write(content) }
    example.run
    File.delete(file_name)
    File.delete(temp_file)
  end

  it 'document_replace method should keep the original file' do
    replace.document_replace(content, new_content)

    expect(File.open(file_name).read.strip).to eq content
  end

  it 'document_replace method should replace a string' do
    replace.document_replace(content, new_content)

    expect(File.open(temp_file).read.strip).to eq new_content
  end
end
