require 'selenium-webdriver'
require 'test-unit'

driver = Selenium::WebDriver.for :chrome
    
driver.get 'https://rozetka.com.ua/'

driver.quit