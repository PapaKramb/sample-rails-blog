require "spec_helper"
require "rails_helper"

feature "Article comment creation" do
  before(:each) do
    create_article
  end

  scenario "create comment" do
    visit article_comments_path
    fill_in :comment_body, with: "Something"
    click_button 'Create Comment'
    expect(page).to have_content I18n.t('articles.new_article_comment')
  end

end