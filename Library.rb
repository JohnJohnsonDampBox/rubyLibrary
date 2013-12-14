#Library for codefellows coding challenge
#


class Book
    attr_reader :title
    
    def initialize(title)
        @title = title
    end
    
    def enshelf(shelf)
        @shelf = shelf
        shelf.add_book(self)
    end
        
    def unshelf(shelf)
       @shelf.remove_book(self)
    end
end

class Shelf
    attr_reader :books    
        
    def initialize(lib)
        lib.add_shelf(self)
        @books = []
    end 
    
    def remove_book(book)
        @books.delete(book)
    end
    
    def add_book(book)
        @books << book
    end
end

class Library   
    attr_reader :shelves
    
    def initialize
        @shelves = []                   
    end
    
    def all_books
        for i in @shelves
            @shelves[i].each do |x|
                puts x 
            end
        end       
    end
    
    def add_shelf(shelf)
        @shelves << @shelf
    end  
end

lib = Library.new
puts lib
fiction = Shelf.new(lib)
puts fiction
nonfiction = Shelf.new(lib)
puts lib.shelves
book1 = Book.new('East Of Eden')
puts book1.title
book2 = Book.new('Farewell to Arms')
puts book2.title
