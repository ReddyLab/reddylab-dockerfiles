FROM ubuntu:14.04
MAINTAINER Alejandro Barrera <alejandro.barrera@duke.edu>

# fetchChromSizes can use mysql, wget, or FTP
RUN apt-get update && apt-get install -y \
  wget \
  curl \
  bedtools

RUN mkdir /hubutils

WORKDIR /hubutils

# Fetch tools from hgdownload
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bedGraphToBigWig
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/fetchChromSizes
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/hubCheck
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/twoBitToFa
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bigBedToBed
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bigWigToBedGraph
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bedToBigBed
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bigBedInfo
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bigBedNamedItems
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bigBedSummary
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bedClip
RUN curl -SLO http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bedSort

RUN chmod +x /hubutils/*
ENV PATH /hubutils:$PATH

