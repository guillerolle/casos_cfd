#!/bin/sh
while true; do
  foamLog log.pimpleFoam
  gnuplot graficar_res.gp --persist
  sleep 10
done

