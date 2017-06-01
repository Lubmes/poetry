require 'rails_helper'

RSpec.describe "poems/show", type: :view do
  before(:each) do
    @poem = assign(:poem, Poem.create!(
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
