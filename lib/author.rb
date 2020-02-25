class Author
  
  attr_accessor :name 
  
  def initialize(name)
    @name =name 
    @posts = []
  end
  
  def add_post(post_n)
    post_n.author = self 
    @posts << post_n
  end
  
  def posts 
    @posts
  end
  
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  
  def self.post_count
    posts = Post.all 
    count = 0 
    posts.each do |post|
      count += 1 
    end
  end
  
end