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
binding.pry
  end
end

class Contacts

  attr_accessor :first_name, :last_name, :phone_number, :job_title, :company, :contact_type, :zip_code

  @@list = []

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @phone_number = attributes.fetch(:phone_number)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
  end

  def self.all
    @@list
  end

  def save
    @@list.push(self)
    @@list.push(@@address)
  end

  def self.sort()
    @@list.sort_by! {|contact| contact.last_name}
  end
end
