class Administrator < ActiveRecord::Base
  attr_accessor :password, :password_confirmation

  belongs_to :role
  has_many :notifications

  before_create :hash_password

  validates :account, presence: true, length: { maximum: 32 }
  validates :password, presence: true, length: { maximum: 50 }, on: :create
  validates :name, presence: true, length: { maximum: 50 }

  def hash_password
    self.hashed_password = Digest::MD5.hexdigest self.password
  end

  def authenticate password
    self.hashed_password == Digest::MD5.hexdigest(password) ? self : nil
  end

  def update_password password
    self.update(hashed_password: Digest::MD5.hexdigest(password))
  end
end
