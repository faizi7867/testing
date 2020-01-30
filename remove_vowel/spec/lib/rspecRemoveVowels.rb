require_relative "./remove_vowels"

RSpec.describe Vowel do
    context 'testing for [hi, how are you?]' do
        subject {rem_vowels.new("[hi, how are you?]")}
        it " should return [h, hw r y?]" do
            subject.rem_vowels.should == "[h, hw r y?]"
        end
    end

    context 'testing for nil ' do
        subject {described_class.new(nil)}
        it " should return 0" do
            subject.rem_vowels.should == 0
        end
    end

    context 'testing for " " ' do
        subject {described_class.new(" ")}
        it " should return 0" do
            subject.rem_vowels.should == 0
        end
    end

    context 'testing for " " ' do
        subject {described_class.new("kloc technologies")}
        it " should return 0" do
            subject.rem_vowels.should == "klc tchnlgs"
        end
    end

    context 'testing for string without voewls ' do
        subject {described_class.new("rhythm")}
        it " should display no vowels in string" do
            subject.rem_vowels.should == "rhythm"
        end
    end


    context 'testing for string without characters ' do
        subject {described_class.new("12345")}
        it " should display no characters in string" do
            subject.rem_vowels.should == "12345"
        end
    end

end