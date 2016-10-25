
class Blog
	def initialize
	@articles = []
end

	def addarticle(hola)
	@articles.push(hola)
	end



	def printarticles(articles)
		new_arr = @articles.sort_by {|articles| articles.title}

		new_arr.each do |a|
			if a.sponsored = false
			puts "#{a.title}" 
			puts "**************" 
			puts "#{a.text}"
			puts "----------------"
		else
			puts "******#{a.title}******" 
			puts "**************" 
			puts "#{a.text}"
			puts "----------------"	
		end
		end
	end


end

class Post < Blog
	attr_accessor :title, :date, :text, :sponsored

	def initialize(title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored

	end
end


art1 = Post.new("Ruby on Rails future", 2005, "Whats up?",true)
art2 = Post.new("Advanced methods on ruby", 2010, "What is art?",false)

blog = Blog.new
blog.addarticle(art1)
blog.addarticle(art2)

blog.printarticles(@articles)


