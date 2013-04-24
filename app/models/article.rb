class Article < ActiveRecord::Base
  # ------- Schema Information -------
  # table name : articles
  # title      : string (required)
  # content    : text   (required)
  # category_id: integer
  # active     : boolean

  # ------ Relationships ------
  belongs_to :category

  # ------ Validations ------
  validates_presence_of :title, :content
  
  # ------ Scopes ------
  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)
  
end
