require 'rails_helper'

RSpec.describe "poems/new", type: :view do
  before(:each) do
    assign(:poem, Poem.new(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new poem form" do
    render

    assert_select "form[action=?][method=?]", poems_path, "post" do

      assert_select "input#poem_title[name=?]", "poem[title]"

      assert_select "textarea#poem_content[name=?]", "poem[content]"
    end
  end
end
