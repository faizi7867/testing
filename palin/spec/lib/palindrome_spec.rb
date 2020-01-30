require './palindrome.rb'
RSpec.describe Palindrome do
    describe '#check_for_palindrome' do
      subject { Palindrome.new }
  
      it 'returns true when given a palindrome' do
        word = 12321
  
        result = subject.check_for_palindrome(word)
  
        expect(result).to be true
      end
  
      it 'returns false when not given a palindrome' do
        word = 1212
  
        result = subject.check_for_palindrome(word)
  
        expect(result).to be false
      end
      it 'returns no input when no input recieved' do
        word = nil
  
        result = subject.check_for_palindrome(word)
  
        expect(result).to be false
      end
      it 'returns false when recieved a negetive input' do
        word = 1221323
  
        result = subject.check_for_palindrome(word)
  
        expect(result).to be false
      end
      it 'returns false when input not a integer' do
        word = "!@#$%"
  
        result = subject.check_for_palindrome(word)
  
        expect(result).to be false
      end

    end
end

