#!/bin/bash

sudo -A chown $(id -u):$(id -g) $HOME/.kube/config
sudo -A chown -R $(id -u):$(id -g) $HOME/.kube/
