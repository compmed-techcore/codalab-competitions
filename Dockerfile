FROM python:3.8.3
#FROM python:3.11.3

# For nodejs
#RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
#RUN apt-get update && apt-get install -y npm netcat nodejs python-dev libmemcached-dev
RUN apt update -y
RUN apt install -y nodejs
RUN npm install -g npm
#RUN apt install -y npm
RUN apt install -y netcat
RUN apt install -y python-dev
RUN apt install -y libmemcached-dev

RUN pip install --upgrade pip  # make things faster, hopefully
COPY codalab/requirements/requirements.txt requirements.txt
RUN pip install -r requirements.txt
# New installs via pip instead of requirements.txt 20230721
RUN pip install Django==3.2.20 # 3.2 is LTE until 4/2024
#RUN pip install Django==3.1.14 #latest version of 3.1
RUN pip install django-braces==1.15.0
RUN pip install django-analytical==3.1.0
RUN pip install django-appconf==1.0.5
RUN pip install django-compressor==4.3.1
RUN pip install django-configurations==2.4.1
RUN pip install django-debug-toolbar==4.1.0
RUN pip install sqlparse==0.4.4
RUN pip install django-debug-panel==0.8.3
RUN pip install django-extensions==3.2.3
RUN pip install django-extra-views==0.14.0
RUN pip install django-filter==23.2
RUN pip install django-guardian==2.4.0
RUN pip install django-haystack==3.2.1
RUN pip install django-js-reverse==0.9.1
RUN pip install django-mptt==0.14.0
RUN pip install django-nose==1.4.7
RUN pip install django-oauth-toolkit==2.3.0
RUN pip install django-storages==1.9.1
RUN pip install django-tinymce==3.6.1
RUN pip install djangorestframework==3.14.0
RUN pip install oauthlib==3.2.2
RUN pip install django-simple-captcha==0.5.17
RUN pip install django-s3direct==2.0.3
RUN pip install django-allauth==0.54.0
RUN pip install psycopg2==2.9.6
RUN pip install django-pin-passcode==0.3.1
RUN pip install boto3==1.28.9

WORKDIR /app/codalab
