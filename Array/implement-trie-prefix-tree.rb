class Trie
    attr_reader :array
    def initialize()
      @array = []
    end


=begin
    :type word: String
    :rtype: Void
=end
    def insert(word)
      @array.push(word)
      return 
    end


=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
      @array.include?(word)
    end


=begin
    :type prefix: String
    :rtype: Boolean
=end
    def starts_with(prefix)
        @array.any?{|word| prefix == word[0...prefix.size]}
    end


end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)
