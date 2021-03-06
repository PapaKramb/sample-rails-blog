require "spec_helper"
require "rails_helper"

feature "Article creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('articles.new_articles')
  end

  scenario "create new article" do
    visit new_article_path
    expect(page).to have_content ''
  end

end