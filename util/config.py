import argparse
import json
import logging

from util.util import create_dir, check_path_exists

def params_setup():
    parser = argparse.ArgumentParser()
    parser.add_argument('--netlist', type=str, nargs='*', default='')
    parser.add_argument('--sym', type=str, nargs='*', default='')
    parser.add_argument('--s3det', type=str, nargs='*', default='')
    parser.add_argument('--s3det_pair', type=str, nargs='*', default='')
    parser.add_argument('--mode', type=str, default='train')
    parser.add_argument('--out_dir', type=str, default='./out')
    parser.add_argument('--save_model', type=str, default='')
    parser.add_argument('--load_model', type=str, default='')



    para = parser.parse_args()

    para.logging_level = logging.INFO

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


