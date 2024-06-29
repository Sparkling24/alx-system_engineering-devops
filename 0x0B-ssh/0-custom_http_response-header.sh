ADD301_REDIRECT="\\\tlocation /redirect_me {\n\t\t return 301 https://google.com;\n\t}\n"
ADD404_NOTFOUND="error_page 404 /custom_404.html;\n\\tlocation = /custom_404.html {\n\t\t root /usr/share/nginx/html;\n\t\tinternal;\n\t}\n"
PATTERN="#error_pa
