# Подготовка виртуального окружения
.PHONY: venv
venv:
	python3 -m venv ./.venv

# Удаление виртуального окружения
.PHONY: del_deps
del_deps:
	rm -R ./.venv


# Установка зависимостей
.PHONY: deps
deps: venv
	. ./.venv/bin/activate; \
	pip install -r requirements.txt; \

# Запуск
.PHONY: run
run:
	docker-compose up --build

# Остановка
.PHONY: stop
stop:
	docker-compose down
