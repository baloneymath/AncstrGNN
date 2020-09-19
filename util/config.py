import argparse
import json
import logging

from util.util import create_dir, check_path_exists

def params_setup():
    parser = argparse.ArgumentParser()
    parser.add_argument('--netlist', type=str, nargs='*', default='')
    parser.add_argument('--sym', type=str, nargs='*', default='')
    parser.add_argument('--attention_len', type=int, default=16)
    parser.add_argument('--batch_size', type=int, default=32)
    parser.add_argument('--file_output', type=int, default=1)
    parser.add_argument('--init_weight', type=float, default=0.1)
    parser.add_argument('--learning_rate', type=float, default=1e-5)
    parser.add_argument('--mode', type=str, default='train')
    parser.add_argument('--out_dir', type=str, default='./out')
    parser.add_argument('--num_epochs', type=float, default=0.25)


    para = parser.parse_args()

    para.logging_level = logging.INFO

    if para.attention_len == -1:
        para.attention_len = para.max_len

    create_dir(para.out_dir)

    json_path = para.out_dir + '/parameters.json'
    json.dump(vars(para), open(json_path, 'w'), indent=4)
    return para

def logging_setup(para):
    if para.file_output == 0:
        logging.basicConfig(
            level=para.logging_level, format='%(levelname)-8s - %(message)s')
    else:
        logging.basicConfig(
            level=para.logging_level,
            format='%(levelname)-8s - %(message)s',
            filename=para.out_dir + '/progress.txt')
        logging.getLogger().addHandler(logging.StreamHandler())


