# Удаление виртуального окружения
.PHONY: del_deps
del_deps:
	rm -R ./.venv

# Подготовка виртуального окружения
.PHONY: venv
venv:
	python3 -m venv ./.venv

# Установка зависимостей
.PHONY: deps
deps: venv
	. ./.venv/bin/activate; \
	pip install -r requirements.txt; \


# Запуск Jupyter Notebook
.PHONY: run_jupyter
run_jupyter:
	(. ./.venv/bin/activate; jupyter notebook)


# Запуск
.PHONY: run
run:
	docker-compose up --build

# Остановка
.PHONY: stop
stop:
	docker-compose down
