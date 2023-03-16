require_relative 'errors_reminder'
# relative passes the path instead of the file name
RSpec.describe Reminder do
  context "when no task is set" do
    it "fails" do
      reminder = Reminder.new("Kay")
      expect { reminder.remind() }.to raise_error "No reminder set!"
    end
  end
  end