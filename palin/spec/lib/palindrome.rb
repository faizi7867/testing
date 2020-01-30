class Palindrome
    def check_for_palindrome(subject)
      subject.to_s.reverse.to_i == subject
    end
end
