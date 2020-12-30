import matplotlib.pyplot as plt

def plot_history(history, avg_history, file):

    # Turn interactive plotting off
    #plt.ioff()

    fig = plt.figure(figsize=(14,10))
    plt.plot(history, alpha=0.7, color='royalblue', label='Return')
    plt.plot(avg_history, alpha=1, color='red', label='Avg Return (last 100)')
    #plt.xlim([0-50,len(history)+50])
    plt.grid(True)
    plt.title('Agent Performance', fontsize=20)
    plt.xlabel('Episode', fontsize=15)
    plt.ylabel('Return/Score', fontsize=15)
    plt.legend(loc='upper left')
    
    plt.savefig(file, format='jpg')
    plt.close(fig)
