import os                                                                                                             
                                                                                                                      
def exec_in_dir(dir):                                                                                                  
    r = []                                                                                                            
    subdirs = [x[0] for x in os.walk(dir)]                                                                            
    for subdir in subdirs: 
        onlyF = [f for f in os.listdir(subdir) if os.path.isdir(os.path.join(subdir, f))]
        #if(len(onlyF) > 0):
            #print(subdir)
            #os.system('python make_entitiy2id.py --path ' + subdir+'/')
            #os.system('python makedict_for_pattern_rel_dbs.py --path ' + subdir)
            #os.system('python extract_graph_features.py --path ' + subdir)                                                                              
 
        onlyfiles = [f for f in os.listdir(subdir) if os.path.isfile(os.path.join(subdir, f)) and f.endswith('.txt')]                                                                        
        #files = os.walk(subdir).__next__()[2]                                                                             
        if (len(onlyfiles) > 0):
            #print(subdir.rfind('/'))
            #print(subdir)
            di = subdir[0:subdir.rfind('/')]
            #print(di)
            os.system('python make_entitiy2id.py --path ' + di+'/')
            #os.system('python makedict_for_pattern_rel_dbs.py --path ' + subdir)
            #os.system('python extract_graph_features.py --path ' + subdir)                                                                              
    return r
exec_in_dir('../data/')
