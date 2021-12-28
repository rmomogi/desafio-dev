class CnabParse
  def self.call(content)
    new(content).read_file
  end

  def initialize(content)
    @content = content
  end

  def read_file
    @content.readlines.each do |line|
      Cnab::Creator.call(line)
    end
  end
end
