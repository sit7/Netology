**Домашняя работа к занятию “MLOps/DataOps”**

Установку провел на Ubuntu 20
модель:

mlflow run https://github.com/mlflow/mlflow-example.git -P alpha=0.42

![image](https://user-images.githubusercontent.com/6259198/178480997-c58829e9-7816-4c4a-a4f7-fef5b527efab.png)

обучение модели:

mlflow models serve -m S3://mlflow/0/d38cf19a9625499e8dcab383b087bd3a/artifacts/model -p 1234

Проверяем:

curl -X POST -H "Content-Type:application/json; format=pandas-split" --data '{"columns":["alcohol", "chlorides", "citric acid", "density", "fixed acidity", "free sulfur dioxide", "pH", "residual sugar", "sulphates", "total sulfur dioxide", "volatile acidity"],"data":[[12.8, 0.029, 0.48, 0.98, 6.2, 29, 3.33, 1.2, 0.39, 75, 0.66]]}' http://127.0.0.1:1234/invocations

- результат:

**[4.003823159595421]**

На терминальной стороне появилось сообщение:

/home/alex/anaconda3/envs/mlflow-75a6243e43f5c65f6c83b1762212ecb7fafd0721/lib/python3.9/site-packages/sklearn/base.py:493: FutureWarning: The feature names should match those that were passed during fit. Starting version 1.2, an error will be raised.
Feature names must be in the same order as they were in fit.

  warnings.warn(message, FutureWarning)


Расположил колонки в последовательности, как в модели (на гитхабе) - получил:

**[6.507185441498436]**

и уже без сообщения об ошибке

![image](https://user-images.githubusercontent.com/6259198/178483569-c2aca38a-70b9-49d9-b799-b7bae88352d4.png)
