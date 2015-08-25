class IdentTest
  attr_reader :regexp

  def initialize(regexp)
    @regexp = regexp
  end

  def test_id(regexp)
    if @regexp =~ /\A\D+([a-z]|[0-9]|\_)*\Z/
      puts 'Идентификатор корректный'
    elsif @regexp =~ /\A[A-Z]{1}([a-z]|[0-9]|\_)*\Z/
      puts 'Идентификатор корректный'
    elsif @regexp =~ /\A\@?[a-z]+([a-z]|[0-9]|\_)*\Z/
      puts 'Идентификатор корректный'
    elsif @regexp =~ /\A\@{2}[a-z]+([a-z]|[0-9]|\_)*\Z/
      puts 'Идентификатор корректный'
    elsif @regexp =~ /\A[A-Z]+([A-Z]|[0-9]|\_)*\Z/
      puts 'Идентификатор корректный'
    
	else 
		puts 'Идентификатор не корректный'
end
end

ident_test = IdentTest.new(regexp = gets.chomp)
ident_test.test_id(regexp)
end
