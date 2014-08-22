require "rails_helper"

describe User do
  describe ".active" do
    it "includes active users"
    it "excludes inactive users"
  end

  describe ".without_comments" do
    it "includes users with comments"
    it "excludes users without comments"
  end

  describe ".with_at_least_n_comments(n)" do
    it "includes users with more than n comments"
    it "excludes users with fewer than n comments"
  end
end