export PROJECT=website

all: run

run:
	npm run dev

build-image:
	docker build -t cloudnativeid/${PROJECT} .

clean:
	sudo rm bin/${PROJECT}
	