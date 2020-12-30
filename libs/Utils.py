import matplotlib.pyplot as plt
import numpy as np
from gym.envs.box2d.lunar_lander import heuristic as heuristic_agent

def plot_history(history, avg_history, file):

    # Turn interactive plotting off
    #plt.ioff()

    fig = plt.figure(figsize=(14,10))
    plt.plot(history, alpha=0.7, color='royalblue', label='Total Episode Return')
    plt.plot(avg_history, alpha=1, color='red', label='Episode Return avg (last 100)')
    #plt.xlim([0-50,len(history)+50])
    plt.grid(True)
    plt.title('Total Episode Return', fontsize=20)
    plt.xlabel('Episode', fontsize=15)
    plt.ylabel('Return/Score', fontsize=15)
    plt.legend(loc='upper left')

    plt.savefig(file, format='jpg')
    plt.close(fig)

def test_agent(env, agent=None, heuristic=False, seed=None, render=False, n_episodes=5):

    for i in range(n_episodes):
        env.seed(seed)
        total_reward = 0
        steps = 0
        state = env.reset()
        while True:

            if heuristic:
                action = heuristic_agent(env, state)
            else:
                action = agent.choose_action(state)
            state, reward, done, info = env.step(action)
            total_reward += reward

            if render:
                still_open = env.render()
                if still_open == False: break

            if steps % 20 == 0 or done:
                #print("observations:", " ".join(["{:+0.2f}".format(x) for x in state]))
                #print("step {} total_reward {:+0.2f}".format(steps, total_reward))
                pass
            steps += 1
            if done: break

        print('Total Episode Reward: ',total_reward)
