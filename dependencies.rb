# require 'rspec'

array = [
 "KittenService: ",
 "Leetmeme: Cyberportal",
 "Cyberportal: Ice",
 "CamelCaser: KittenService",
 "Fraudstream: Leetmeme",
 "Ice: "
]

@installed = []

def has_dependency? (input)
  if input == "KittenService" || input == "Ice"
    @installed << input
  else
    check_dependency(input)
  end
end

def check_dependency (input)
  case input 
      when "CamelCaser"
        @installed << "KittenService" unless @installed.include?("KittenService")
      when "Leetmeme"
        @installed << "Ice" unless @installed.include?("Ice")
        @installed << "Cyberportal" unless @installed.include?("Cyberportal")
        @installed << "Leetmeme" unless @installed.include?("Leetmeme")
      when "Cyberportal"
        @installed << "Ice" unless @installed.include?("Ice")
      when "Fraudstream"
        @installed << "Leetmeme" unless @installed.include?("Leetmeme")
      else
        has_dependency? input
  end
  @installed
end
 p check_dependency("Cyberportal")


# describe 'testing' do
#   it 'tests dependencies' do
#     array = [
#  "KittenService: ",
#  "Leetmeme: Cyberportal",
#  "Cyberportal: Ice",
#  "CamelCaseor: KittenService",
#  "Fraudstream: Leetmeme",
#  "Ice: "
# ]
#     expect(testing(array)).to eq(%w[KittenService Ice Cyberportal Leetmeme CamelCaser Fraudstream])
#   end
# end

