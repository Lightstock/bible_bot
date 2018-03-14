module BibleBot

  class InvalidVerseID < StandardError
  end
  
  class Verse
  
    attr_accessor :book
    attr_accessor :chapter_number
    attr_accessor :verse_number
    
    def initialize( book: nil, chapter_number: nil,  verse_number: nil)
      self.book = book
      self.chapter_number = chapter_number
      self.verse_number = verse_number
    end
  
    def verse_id
      "#{book.name.downcase.gsub(' ', '_')}-#{chapter_number.to_s.rjust(3, '0')}-#{verse_number.to_s.rjust(3, '0')}"
    end
  
  end
end
