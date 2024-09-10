require "application_system_test_case"

class BlogArticlesTest < ApplicationSystemTestCase
  setup do
    @blog_article = blog_articles(:one)
  end

  test "visiting the index" do
    visit blog_articles_url
    assert_selector "h1", text: "Blog articles"
  end

  test "should create blog article" do
    visit blog_articles_url
    click_on "New blog article"

    fill_in "Description", with: @blog_article.description
    fill_in "Title", with: @blog_article.title
    click_on "Create Blog article"

    assert_text "Blog article was successfully created"
    click_on "Back"
  end

  test "should update Blog article" do
    visit blog_article_url(@blog_article)
    click_on "Edit this blog article", match: :first

    fill_in "Description", with: @blog_article.description
    fill_in "Title", with: @blog_article.title
    click_on "Update Blog article"

    assert_text "Blog article was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog article" do
    visit blog_article_url(@blog_article)
    click_on "Destroy this blog article", match: :first

    assert_text "Blog article was successfully destroyed"
  end
end
