from gym.envs.box2d.lunar_lander import *


agent = LunarLander()

while True:
    demo_heuristic_lander(agent, render=True)
    agent.reset()
