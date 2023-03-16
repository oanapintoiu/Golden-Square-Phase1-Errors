require 'password_checker'

RSpec.describe PasswordChecker do
  it "false if password does not meet condition" do
    password_checker = PasswordChecker.new
    expect{ password_checker.check("cat") }.to raise_error "Invalid password, must be 8+ characters."
  end
# end

# RSpec.describe PasswordChecker do
  it "true if password meets condition"  do
    password_checker = PasswordChecker.new
    result = password_checker.check("felinethecat")
    expect(result).to eq true
  end
#  end

# RSpec.describe PasswordChecker do
  it "true if password meets condition"  do
    password_checker = PasswordChecker.new
    result = password_checker.check("eight345")
    expect(result).to eq true
  end
end