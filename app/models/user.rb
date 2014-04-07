class User < ActiveRecord::Base
  before_save {self.email=email.downcase}
  before_create :create_remember_token
  validates_presence_of :name,message: "名字不能为空"
  validates_length_of :name,maximum: 50,message: "名字不能大于50个字符"
  validates_presence_of :email,{message: "邮箱不能为空"}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_uniqueness_of :email,case_sensitive: false,message:"邮箱已存在，不能重复"
  validates_format_of :email,message: "邮箱格式不正确",with: VALID_EMAIL_REGEX

  validates_presence_of :password,message: "密码不能为空",on: :create
  validates_length_of :password,minimum: 6,message: "密码最少6位"
  validates_confirmation_of :password,message: "密码确认不正确"
  has_secure_password

  has_many :testpapers,dependent: :destroy

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
