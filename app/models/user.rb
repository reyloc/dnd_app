# frozen_string_literal: true

# Defines the user model
class User < ApplicationRecord
  attr_accessor :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :full_name, presence: true
  validates :username, :email, presence: true, uniqueness: true
  has_many :alignments

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(
      ['lower(username) = :value OR lower(email) = :value',
       { value: login.strip.downcase }]
    ).first
  end

  def admin?
    admin == 1
  end

  def dm?
    dm == 1
  end
end
