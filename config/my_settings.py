
# SECRET_KEY = "cc)*5=(s+i2-&9x7&&&o+y7$g5!db3tvu85ykok#mwxf#6gir2"
SECRET_KEY = "m3t6sp&wrs2qnv^-qk3+-4o3h!p937835lqc69wo$+$c1z)ng^"
MYSQL_ID = 'root'
MYSQL_PASSWORD = '4354'
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'user',
        'USER': f'{MYSQL_ID}',
        'PASSWORD': f'{MYSQL_PASSWORD}',
        'HOST': 'localhost',
        'PORT': '3306'
    }
}