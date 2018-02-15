class Contacts

  attr_accessor :first_name, :last_name, :phone_number, :job_title, :company, :contact_type

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
  end

  def self.sort()
    @@list.sort_by! {|contact| contact.last_name}
  end


end
