# Automate Boring ERP Feedback

## ?_?

It fills out `Theory` and `Practical` feedbacks without you having to do any work at all! It randomly selects a rating between 9 to 6 (inclusive). Your credentials are only used to authenticate you. (You shouldn't use your primary password anyway, connection to the website isn't over TLS!)

## How do I use it?

1. `make install`

2. Set env variables `ERP_USERNAME`, `ERP_PASSWORD` and `ERP_URL`

3. Run `python3 main.py`

4. Enter the captcha

5. Here be dragons ;)

## To remove the downloaded files
`make rm`
