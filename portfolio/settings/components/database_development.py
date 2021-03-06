import os


print 'On development database'


# Database
# https://docs.djangoproject.com/en/1.10/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': os.environ.get('DATABASE_NAME', 'django'),
        'USER': os.environ.get('DATABASE_USER', 'django'),
        'PASSWORD': os.environ.get('DATABASE_PASSWORD', 'fi4ierie1queaW7bfi4ierie1queaW7b'),
        'HOST': os.environ.get('DATABASE_HOST', 'localhost'),
        'PORT': os.environ.get('DATABASE_PORT', '5432')
    }
}
