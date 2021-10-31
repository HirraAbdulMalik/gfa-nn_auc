#dir = ../data/
#shopt -s globstar
#for dir in */; do
#    { printf '%s\n' "$dir"
#      ( cd "$dir" && find . )
#    } >"$dir/original_filenames.txt"
#done
#for file in ../data/**/; do
    python make_entitiy2id.py --path ../data/FB15K_J/Transductive/
    python makedict_for_pattern_rel_dbs.py --path ../data/FB15K_J/Transductive/
    python extract_graph_features.py  --path ../data/FB15K_J/Transductive/

    #python make_entitiy2id.py --path ../data/FB15K_H/Inductive/
    #python makedict_for_pattern_rel_dbs.py --path ../data/FB15K_H/Inductive/
    #python extract_graph_features.py  --path ../data/FB15K_H/Inductive/

    #python make_entitiy2id.py --path ../data/FB15K_H/Transductive/Inference/
    #python makedict_for_pattern_rel_dbs.py --path ../data/FB15K_H/Transductive/Inference/
    #python extract_graph_features.py  --path ../data/FB15K_H/Transductive/Inference/

    #python make_entitiy2id.py --path ../data/FB15K_H/Transductive/AntiSymmetry/
    #python makedict_for_pattern_rel_dbs.py --path ../data/FB15K_H/Transductive/AntiSymmetry/
    #python extract_graph_features.py  --path ../data/FB15K_H/Transductive/AntiSymmetry/


done
