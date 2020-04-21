class Author
  :betty
  attr_accessor :name

  def initialize(name)
    @name= name
    @posts = []
  end

  def posts
    Post.all.select {|post| post.author == self} #select all from array
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  

end
