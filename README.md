# Guidescan
A Work in Progress..

### Installation

```
docker build -t guidescan .
docker run -it --rm guidescan pytest
```

If tests run okay, start the Flask server (the default command).

```
docker run -it --rm -p 80:5000 guidescan
```
