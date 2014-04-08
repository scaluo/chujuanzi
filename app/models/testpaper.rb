class Testpaper < ActiveRecord::Base
  belongs_to :user
  has_many :question,dependent: :destroy
  default_scope -> {order('created_at DESC')}
  validates :user_id,presence: true
  validates_presence_of :title,message: "试卷标题不能为空"
  validates_length_of :securecode,maximum: 20,message: "安全码最长20位"
end
