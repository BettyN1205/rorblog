class BlogArticle < ApplicationRecord
  validates :title, presence: true #验证标题不能为空，会出现false
  validates :description, presence:true, length:{minimum:2, maximum: 200} 
end
