

class Address
  @@address = []

  def initialize(attributes)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip_code = attributes.fetch(:zip_code)
  end

  def self.all
    @@address
  end

  def add_address
    @@address.push(self)

  end
end

class Contacts
  attr_accessor :first_name, :last_name, :phone_number, :job_title, :company, :contact_type, :zip_code
  attr_reader :id

  @@list = []

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @phone_number = attributes.fetch(:phone_number)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
    @id = @@list.length + 1
  end

  def self.all
    @@list
  end

  def save
    @@list.push(self)
  end

  def self.sort()
    @@list.sort_by! {|contact| contact.last_name}
  end

  def self.find(id)
    contact_id = id.to_i()
    @@list.each do |contact|
      if contact.id == contact_id
        return contact
      end
    end
  end
end

# class Masterbook
#   def final_push
#     @master_array = []
#   end
# end
#
# @output = Masterbook.new [Contacts  .new, Address.new]
