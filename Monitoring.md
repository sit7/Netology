**Алерты, которые настроены в Prometheus alerts:**

![image](https://user-images.githubusercontent.com/6259198/175782547-2ecee917-e2fc-4522-bb02-2cf9fcb3b3a0.png)

- Алерты, отслеживающие состояние контейнеров - Сработал алерт, говорящий что Jenkins контейнер не запущен более 30 сек.
- Алерты, отслеживающие состояние хоста - Сработал алерт по загрузке (настроен на срабатывание при значении >1.5, сработал на 1.93)
- Алерты, отслеживающие состояния сервисов в targets - там не запустился cadvisor (в дальнейшем проблему решил)

**dashboards в Grafana:**

![image](https://user-images.githubusercontent.com/6259198/175783608-e1e6cb54-0a3e-4791-8156-199561f94573.png)

- Docker Host Dashboard - отслеживать состояние хоста. ПО - система.
- Docker Containers Dashboard - следить за запущенными в докере контейнерами. ПО - docker
- Monitor Services Dashboard - следить за сервисами (targets в Prometheus). ПО - prometheus
- Nginx - следить за nginx, работающем на хосте

**Docker Containers Dashboard**

![image](https://user-images.githubusercontent.com/6259198/175807534-71d7cb06-a9ea-4940-bb5b-cdfd0c0cf578.png)

Что они показывают - следует из названий, описание в readme.md проекта:
The Docker Containers Dashboard shows key metrics for monitoring running containers:

- Total containers CPU load, memory and storage usage
- Running containers graph, system load graph, IO usage graph
- Container CPU usage graph
- Container memory usage graph
- Container cached memory usage graph
- Container network inbound usage graph
- Container network outbound usage graph
- 
Note that this dashboard doesn't show the containers that are part of the monitoring stack.

Единственное, у меня дэшбород в "Running Containers Dashboard" показывает контейнеры, из стека мониторинга, остальные действительно стек отфильтровывают. Отредактировал запрос (в порядке эксперимента) - вернул контенеры стека на один график:

![image](https://user-images.githubusercontent.com/6259198/175808649-a720b53f-b834-4d0b-8b9c-901a4a3a0673.png)
