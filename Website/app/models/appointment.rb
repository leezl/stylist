class Appointment < ActiveRecord::Base
  attr_accessible :appot, :email, :first_name, :last_name, :message, :phone, :service

# validate First Name - field is filled out, and more than one character less than 15
  validates :first_name, presence: true, length: {minimum: 1, maximum: 15}

# validate Last Name - field is filled out, and more than one character less than 15

  validates :last_name, presence: true, length: {minimum: 1, maximum: 15}

# validate Email - field is filled out, and use regex

  validates :email, presence: true, format: { with: /\A[^@\s]+@(?:[-a-z0-9]+\.)+[a-z]{2,}\z/i, message: "email address invalid " }

#validate phone - field is filled out, 10 numbers required, auto fill numbers for later 

  validates :phone, presence: true, format: { with: /\A\(?(\d{3})[-\)]?\s?(\d{3})?[-\s]?(\d{4})\z/, message: "phone number invalid" }
  # a much simpler test, which requires that only numbers be entered
  #,length: {minimum: 7, maximum: 10}, numericality: { only_integer: true }



=begin

4. appot = date/time 
6. service - must be defined as checkbox

what happens if the one clients wants to make multiple appointments?
=end


end