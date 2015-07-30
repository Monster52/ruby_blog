class Blog
  @@blog_post = 0
  @@blog_num = []
  
  def self.add(thing)
    @@blog_post += 1
    @@blog_num << thing
  end
end

class BlogPost < Blog
  def initialize(title, content, date, author)
    @title = title
    @content = content
    @date = date
    @author = author
  end

  def title
    gets.chomp
  end

  def to_s
    puts "#{@title}\n #{@content}\n #{@date}\n #{@author}"
  end

  def save
    BlogPost.add(self)
  end
end

puts "Do you want to create a blog post? [Y/N]"
answer = gets.chomp.downcase

if answer == "y"
  puts "Please enter a title"
  title = gets.chomp
  puts "Please enter your thoughts."
  content = gets.chomp
  puts "Whats you name."
  author = gets.chomp
end

date = Time.new

post = BlogPost.new(title, content, date, author)
post.to_s

post.save
