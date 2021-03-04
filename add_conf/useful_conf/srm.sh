#!/bin/bash

#TODO: Make it more nice by asking for a regex
ls | grep -P ".pdf$"|xargs -d"\n" rm   
