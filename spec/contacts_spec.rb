require('rspec')
require('pry')
require('contacts')

describe("Contacts") do
  describe(".all") do
    it("is empty at first") do
      expect(Contacts.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("saves a contact in the list") do
      contact = Contacts.new({:first_name=> "Hannah", :last_name=> "Lee", :phone_number=> "5555555555", :job_title=> "Student", :company=> "NASA", :contact_type=> "friend"})
      contact.save()
      expect(Contacts.all()).to(eq([contact]))
    end
  end
end
