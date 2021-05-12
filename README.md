
# Dockerised `py3dtiles` library

`p3dtiles` is a Python tool and library for manipulating 3D Tiles.

Library source: [py3dtiles](https://github.com/Oslandia/py3dtiles)

Library documentation:  [py3dtiles Docs](https://oslandia.github.io/py3dtiles/)

Main features:

- Convert pointcloud LAS and XYZ files to a 3D Tiles tileset (tileset.json + pnts files)
- Merge pointcloud 3D Tiles tilesets into one tileset
- Read pnts and b3dm files and print a summary of their contents

## Requirements

You MUST have the latest version of Docker installed.

## How to install and use

### Instalation

Download the repository and run the command below to build a Docker image.

You need to build it just once on the host machine. By default, the image is tagged with the name `py3dtiles`, but the name can be changed.

```bash
docker build -t py3dtiles .
```

### How to use

Run the Docker container and mount the folder with the LiDAR/pointcloud data.

```bash
docker run -it --mount type=bind,source="/PATH/TO/HOST/DIRECTORY/WITH/LiDAR",target=/py3ddata py3dtiles 
```

Note: In the command above the `py3dtiles` is the name of the image. If you changed the name during the installation step you MUST change accordingly.

## Credits & questions

Vitalij Lokucijevskij [vitalij@thecyberhawk.com](vitalij@thecyberhawk.com)
