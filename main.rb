require_relative 'factory'

Customer = Struct.new(:name, :address, :zip)

joe = Customer.new('Joe Smith', '123 Maple, Anytown NC', 12345)

joe.name
joe['name']
joe[:name]
joe[0]

Client = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

p Client.new('Dave', '123 Main').greeting