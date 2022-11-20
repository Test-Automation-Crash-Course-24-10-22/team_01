require 'selenium-webdriver'
require 'test-unit'

class GoogleTest < Test::Unit::TestCase

    def setup
        driver = Selenium::WebDriver.for :chrome
        url = 'https://rozetka.com.ua/'
        driver.get(url)
        driver.manage.window.maximize        
    end

    def test_button
        button = driver.find_element(:class_name, "header-actions__component")
        button.click
    end
end