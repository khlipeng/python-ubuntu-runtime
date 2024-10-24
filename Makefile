PLATFORM := linux/amd64,linux/arm64

python-runtime:
	docker buildx build --push --progress plain --platform=${PLATFORM}	\
		--file=python-ubuntu-runtime.Dockerfile \
		--tag=ghcr.io/khlipeng/python-ubuntu-runtime:3.11 \
		.

