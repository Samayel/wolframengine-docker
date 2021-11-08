build:
	docker build --tag wolframengine .

build-full:
	docker build --tag wolframengine --no-cache .

run:
	docker run -it --rm --name=wolframengine-dev --hostname wolframengine -v /root/.WolframEngine/Licensing/mathpass:/root/.WolframEngine/Licensing/mathpass wolframengine bash
