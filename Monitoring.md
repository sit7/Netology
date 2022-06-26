**Алерты, которые настроены в Prometheus alerts:**

![image](https://user-images.githubusercontent.com/6259198/175782547-2ecee917-e2fc-4522-bb02-2cf9fcb3b3a0.png)

- Алерты, отслеживающие состояние контейнеров - Сработал алерт, говорящий что Jenkins контейнер не запущен более 30 сек.
- Алерты, отслеживающие состояние хоста - Сработал алерт по загрузке (настроен на срабатывание при значении >1.5, сработал на 1.93)
- Алерты, отслеживающие состояния сервисов в targets - там не запустился cadvisor

**dashboards в Grafana:**

![image](https://user-images.githubusercontent.com/6259198/175783608-e1e6cb54-0a3e-4791-8156-199561f94573.png)

- Docker Host Dashboard - отслеживать состояние хоста. ПО - система.
- Docker Containers Dashboard - следить за запущенными в докере контейнерами. ПО - docker
- Monitor Services Dashboard - следить за сервисами (targets в Prometheus). ПО - prometheus
- Nginx - следить за nginx, работающем на хосте

**Docker Containers Dashboard**

