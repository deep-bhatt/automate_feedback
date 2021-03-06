#!/usr/bin/env python3

from selenium.webdriver import Firefox
from selenium.webdriver.firefox.options import Options
import time
import random

USERNAME = 'SXXXXXXXXX'
PASSWORD = 'YOUR_PASSWORD_HERE'
URI = 'http://erp.tcetmumbai.in/'

def login():
    # Select fields for login
    usr_field = browser.find_element_by_id('txtUserId')
    pwd_field = browser.find_element_by_id('txtPassword')
    cap_field = browser.find_element_by_id('txtCaptcha')
    lgn_field = browser.find_element_by_id('btnLogin')

    # Fill out login fields
    usr_field.send_keys(USERNAME)
    pwd_field.send_keys(PASSWORD)

    # Ask for captcha
    CAPTCHA = input('Captcha on screen: ')
    cap_field.send_keys(CAPTCHA)

    # Hit the login button
    lgn_field.click()

def do_job(umm_which_one):
    try:
        for i in range(1, 10):
            umm_which_one()
            browser.find_element_by_id(f'grdPenJobDtls_ctl01_lnkJobDesc').click()
            time.sleep(1)

            # 12 feedback questions
            for q in range(1, 13):
                random_check = random.randint(1, 4) # Max: 9 Min: 6
                if q >= 10:
                    browser.find_element_by_id(f'rptQue_ctl{q}_rptOpt_ctl0{random_check}_chkSele').click()
                else:
                    browser.find_element_by_id(f'rptQue_ctl0{q}_rptOpt_ctl0{random_check}_chkSele').click()

            # Submit
            browser.find_element_by_id('btnSave').click()

            # Confirm dialog
            confirm = browser.switch_to.alert
            confirm.accept()

            browser.get('http://erp.tcetmumbai.in/PendingJobDisp.aspx')
    except:
        pass

def click_theory():
    browser.find_element_by_id('grdPenJobSumm_ctl02_lnkJobDesc').click()

def click_pracs():
    browser.find_element_by_id('grdPenJobSumm_ctl03_lnkJobDesc').click()

if __name__ == '__main__':
    browser = Firefox()
    browser.get(URI)
    login()
    time.sleep(3)
    browser.get('http://erp.tcetmumbai.in/PendingJobDisp.aspx')

    do_job(click_theory)
    do_job(click_pracs)
