class Contact

  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note

  @@contacts = []
  @@id = 1
  # This method should initialize the contact's attributes
  def initialize (first_name,last_name, email, note = "Hello!")
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
    #@@id = 1
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create (first_name, last_name, email, note = "N/A")
    new_contact = new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.find {|contact| contact.id == id}

    # return 'Contact does not exist'
  end

  def self.count
      contact = @@contacts
      return contact.count
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact

  #
  def update(variable, value)
    @@contacts.each do |name|
      case variable
      when "first_name"
        name.first_name = value
      when "last_name"
        name.last_name = value
      when "email"
        name.email = value
      when "note"
        name.note = value
      end
  end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty

  def self.find_by(attribute, value)
    @@contacts.each do |contact|
    case attribute
    when "first_name"
      contact.first_name == value
      return contact
    when "last_name"
      contact.last_name == value
    return contact
    when "email"
      contact.email == value
      return contact
    when "note"
      contact.note == value
      return contact
    end
  end
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts.clear
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    Contact.all.delete(self)
  end

  # Feel free to add other methods here, if you need them.
  def full_name
    return "#{@first_name} #{@last_name}"
  end

end

# @@contacts.find do |contact|
#   if contact.id == id
#     return contact.id
#     end
#   end


Contact.create('Betty', 'Maker', 'betty@bitmakerlabs.com', 'developer')
Contact.create("Adrian","Pearman","adrianpearman12@gmail.com", 'Hello!')
Contact.create("George","Costanza","pretzel@thristy.com", "I was in the pool!")
Contact.create("Jerry","Seinfeld","whats@thedeal.com", "What's the deal!")
Contact.create("Elaine","Benes","nosoup@foryou.com", "It shrinks?")
Contact.create('Mark', 'Zuckerberg', 'mark@facebook.com', 'CEO')
Contact.create('Sergey', 'Brin', 'sergey@google.com', 'Co-Founder')
Contact.create('Steve', 'Jobs', 'steve@apple.com', 'Visionary')
