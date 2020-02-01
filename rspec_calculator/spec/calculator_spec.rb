require_relative '../Calculator'


RSpec.describe Calculator do
  before(:each) do
    @calc = Calculator.new(@x,@y)
  end
  context "Addition" do
    context "When I add 5 and 5" do
      it "should return 10" do
        @calc.additon(5,5).should == 10
      end
    end
    context "When I add 5 and -5" do
      it "should return 0" do
        @calc.additon(5,-5).should == 0
      end
    end
    context "When I add 5 and nil" do
      it "should raise an exception" do
         @calc.additon(5,nil).should == "invalid no of argument or argument type or not an integer"
      end
    end
    context "When both paramenters are non intger" do
      it "should raise an exception" do
         @calc.additon("3","6").should == "invalid no of argument or argument type or not an integer"
      end
    end
  end
  

  context "Division" do
    context "When I divide by zero" do
      it "should give me a warning" do
        @calc.division(5,0).should == "You can't divide by zero!"
      end
    end
    context "When I divide 10 by 2" do
      it "should return 5 " do
        @calc.division(10,2).should == 5
      end
    end
    context "When numerator is smaller than denomenator" do
      it "should raise an exception" do
         @calc.division(3,6).should == 0
      end
    end
  end
  context "Subtraction" do
    context "When I subtract 5 from 10" do
      it "should return -5" do
        @calc.subtraction(5,10).should == -5
      end
    end
    context "When I subtract 5 from 10" do
      it "should return 5" do
        @calc.subtraction(10,5).should == 5
     end
    end
    context "When I add 5 and nil" do
      it "should raise an exception" do
         @calc.subtraction(5,nil).should == "invalid no of argument or argument type or not an integer"
      end
    end
    context "When both paramenters are non intger" do
      it "should raise an exception" do
         @calc.subtraction("3","6").should == "invalid no of argument or argument type or not an integer"
      end
    end
  end

  context "multiplication" do
    context "When I multiply 5 from 10" do
      it "should return 50" do
        @calc.multiplication(5,10).should == 50
      end
    end
    context "When I add 5 and nil" do
      it "should raise an exception" do
         @calc.multiplication(5,nil).should == "invalid no of argument or argument type or not an integer"
      end
    end
    context "When both paramenters are non intger" do
      it "should raise an exception" do
         @calc.multiplication("3","6").should == "invalid no of argument or argument type or not an integer"
      end
    end    

  end
  


end


