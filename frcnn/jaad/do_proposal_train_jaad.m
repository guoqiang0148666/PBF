function model_stage = do_proposal_train_jaad(conf, dataset, model_stage, do_val)
    if ~do_val
        dataset.imdb_test = struct();
        dataset.roidb_test = struct();
    end

    model_stage.output_model_file = proposal_train_jaad(conf, dataset.imdb_train, dataset.roidb_train, ...
                                    'do_val',           do_val, ...
                                    'imdb_val',         dataset.imdb_val, ...
                                    'roidb_val',        dataset.roidb_val, ...
                                    'solver_def_file',  model_stage.solver_def_file, ...
                                    'net_file',         model_stage.init_net_file, ...
                                    'cache_name',       model_stage.cache_name,...
                                    'val_interval', conf.val_interval);
end
