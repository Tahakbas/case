#!/bin/bash

sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo chown -R $(id -u):$(id -g) $HOME/.kube/
