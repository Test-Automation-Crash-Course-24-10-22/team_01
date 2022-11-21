require 'selenium-webdriver'
require 'test-unit'

driver = Selenium::WebDriver.for :chrome
url = "https://rozetka.com.ua/promo/black-friday/"

driver.get(url)
button_to_loggin_form = driver.find_element(:xpath, "/html/body/app-root/div/div/rz-header/rz-main-header/header/div/div/ul/li[3]/rz-user/button").click()
driver.manage.timeouts.implicit_wait=10
loggin_form = driver.find_element(:id, "auth_email").send_keys("automationtestrozetka@gmail.com")
password_form = driver.find_element(:id, "auth_pass").send_keys("qseqLAS3IT8w2")
button_to_loggin = driver.find_element(:xpath, "/html/body/app-root/rz-single-modal-window/div[3]/div[2]/rz-user-identification/rz-auth/div/form/fieldset/div[5]/button[1]").click()
