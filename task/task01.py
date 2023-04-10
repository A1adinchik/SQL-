import pandas as pd
import datetime
import random
import itertools

from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine, MetaData, Table, select, func, text
from sqlalchemy.ext.automap import automap_base



USERNAME = "postgres"  # замените на свой логин




connection_string = f"postgresql+psycopg2://{USERNAME}:@localhost:5432/{USERNAME}"
engine = create_engine(connection_string)
Session = sessionmaker(engine)


# формируем запрос в виде строковой переменной

with open('01.sql', 'r') as sql_file:
    query = sql_file.read()

with engine.connect() as connection:  # используем соединение к нашей базе данных
    result = pd.read_sql(query, con=connection)  # скачиваем данные из базы в виде объекта класса DataFrame - 
                                                 # основного типа данных pandas, содержащего в себе таблицу
        
print(result)