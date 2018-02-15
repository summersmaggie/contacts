require('rspec')
require('pry')
require('contacts')

# describe("Contacts") do
#   describe(".all") do
#     it("is empty at first") do
#       expect(Contacts.all()).to(eq([]))
#     end
#   end
#   describe("#save") do
#     it("saves a contact in the list") do
#       contact = Contacts.new({:first_name=> "Hannah", :last_name=> "Lee", :phone_number=> "5555555555", :job_title=> "Student", :company=> "NASA", :contact_type=> "friend"})
#       contact.save()
#       expect(Contacts.all()).to(eq([contact]))
#     end
#   end
#   describe(".sort") do
#     it("sorts name by alphabetical order") do
#       contact1 = Contacts.new({:first_name=> "Hannah", :last_name=> "Lee", :phone_number=> "5555555555", :job_title=> "Student", :company=> "NASA", :contact_type=> "friend"})
#       contact1.save()
#       contact2 = Contacts.new({:first_name=> "Maggie", :last_name=> "Summers", :phone_number=> "1111111", :job_title=> "Professional", :company=> "Google", :contact_type=> "friend"})
#       contact2.save()
#       expect(Contacts.sort()).to(eq(Contacts.all))
#     end
#   end
# describe("Address") do
#   it("will save address to list") do
#    contact1 = Contacts.new({:first_name=> "Maggie", :last_name=> "Summers", :phone_number=> "1111111", :job_title=> "Professional", :company=> "Google", :contact_type=> "friend"})
#    contact1.save()
#    address1 = Address.new({:zip_code=> 98765})
#    address1.add_address()
#    address1.save()
#    expect(Contacts.all()).to(eq([[contact1],[address1]]))
#   end
# end

describe("Address") do
  describe("#add_address") do
      it("will add zip to address list") do
      address1 = Address.new({:street=> "Burnside", :city=> "Portland", :state=> "OR",:zip_code=> 98765})
      address1.add_address
      expect(Address.all).to(eq([address1]))
    end
  end
end
