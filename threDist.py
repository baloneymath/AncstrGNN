import sys
import seaborn as sns
import pickle
import numpy as np
import matplotlib.pyplot as plt

def th2Idx(th):
    return int(round((th - 0.9) * 1000))

if __name__ == '__main__':
    res_file = sys.argv[1]
    with open(res_file, 'rb') as f:
        result = pickle.load(f)

    precision = dict()
    recall = dict()
    accuracy = dict()
    FPR = dict()
    F1 = dict()
    MCC = dict()

    cktNames = result[(1, 1)].keys()
    for name in cktNames:
        precision[name] = np.zeros((101, 101))
        recall[name] = np.zeros((101, 101))
        accuracy[name] = np.zeros((101, 101))
        FPR[name] = np.zeros((101, 101))
        F1[name] = np.zeros((101, 101))
        MCC[name] = np.zeros((101, 101))

    for (th1, th2), res in result.items():
        xIdx = th2Idx(th1)
        yIdx = th2Idx(th2)
        for cktName, val in res.items():
            precision[cktName][xIdx][yIdx] = val['precision']
            recall[cktName][xIdx][yIdx] = val['recall']
            accuracy[cktName][xIdx][yIdx] = val['accuracy']
            FPR[cktName][xIdx][yIdx] = val['FPR']
            F1[cktName][xIdx][yIdx] = val['F1']
            MCC[cktName][xIdx][yIdx] = val['MCC']

    cir = 'CTDTDSM_V3'
    # a, b = np.where(precision[cir] == precision[cir].max()), precision[cir].max()
    # a, b = np.where(recall[cir] == recall[cir].max()), recall[cir].max()
    # a, b = np.where(accuracy[cir] == accuracy[cir].max()), accuracy[cir].max()
    # a, b = np.where(FPR[cir] == FPR[cir].min()), FPR[cir].min()
    a, b = np.where(F1[cir] == F1[cir].max()), F1[cir].max()
    # a, b = np.where(MCC[cir] == MCC[cir].max()), MCC[cir].max()
    print(np.transpose(a), b)
    
    # l = [i for i in list(np.linspace(0.9, 1, 101))]
    # ax = sns.heatmap(accuracy[cir], vmin=0.8, vmax=1, xticklabels=l, yticklabels=l, cmap="YlGnBu", annot=True, fmt=".3f")
    # ax.invert_yaxis()
            
    # plt.title(cir + ', accuracy')
    # plt.xlabel('subckt th')
    # plt.ylabel('device th')
    # plt.show()
