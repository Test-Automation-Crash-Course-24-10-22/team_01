require 'selenium-webdriver'
require 'test-unit'

class GoogleTest < Test::Unit::TestCase

    def setup
        @driver = Selenium::WebDriver.for :chrome
        @url = 'https://rozetka.com.ua/'
        '''action = Selenium::WebDriver::ActionBuilder'''
        @driver.get(@url)
        @driver.manage.window.maximize
        @driver.manage.timeouts.implicit_wait = 30
        @wait = Selenium::WebDriver::Wait.new(:timeout => 30)
        
    end

    def test_button
        @button_box = @driver.find_element(:class_name, "header-actions__component")
        @button_box.click
    end

end