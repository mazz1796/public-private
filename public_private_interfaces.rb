# Place your solutions her
require 'byebug'
class BankAccount
	attr_reader :name, :type

	def initialize(name, type, acct_number)
		@name = name
		@type = type
		@acct_number = acct_number
	end

	def to_s
		mask
		# => @a
		return "#{@name}:#{@type}, *****#{@a}"  #returnはあってもなくてもいい
	end

	private
	def mask
		
		@a = @acct_number.gsub!(/-/,"").slice(5..9)
		return @a  #ここのreturnも、あってもなくてもいい。
		#takes @acct_numb gsub it with *****-3239
		#return @acct_num
	end

end

my_acct = BankAccount.new("Koji Hiramatsu", "Checking", "234-923-239")
#p my_acct
#p my_acct.to_s

#my_acct.to_s
# puts "My account information is #{my_acct.to_s}"

puts "My account is #{my_acct}"



