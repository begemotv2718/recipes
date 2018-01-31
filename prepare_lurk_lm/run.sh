#!/bin/bash
lm_order=2
pos_dep_phones=true

local/voxforge_prepare_lm.sh --order ${lm_order} || exit 1
local/voxforge_prepare_dict.sh || exit 1
utils/prepare_lang.sh --position-dependent-phones $pos_dep_phones \
  data/local/dict '!SIL' data/local/lang data/lang || exit 1
local/voxforge_format_data.sh || exit 1
