# twitter-clone

## Para utilizarlo/configurarlo

1. Clona el repositorio o descargalo como zip.

```git clone https://github.com/mundo-python/social_project.git```

2. Crea un ambiente virtual

```bash
python -m venv socialenv
```

3. Instala las dependencias/librerias en requirements.txt

```bash
pip install -r requirements.txt
```

1. Ejecuta las migraciones.

```bash
python manage.py makemigrations
```

```bash
python manage.py migrate
```

5. Crea un superusuario.

```bash
python manage.py createsuperuser
```

6. Corre el servidor.

```bash
python manage.py runserver
```

```bash
Username (leave blank to use 'empreendedor'): fagno
Email address:    
Password:123
Password (again):123 
```

 fly deploy --wait-timeout 10m
 git commit -m "ajustando as keys"
 