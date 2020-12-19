from keras import backend as K
import tensorflow as tf
import numpy as np

class Agent(object):
    def __init__(self, alpha, beta, gamma=0.99, n_actions=4,
                 layer1_size=1024, layer2_size=512, input_dims=8):
        self.gamma = gamma
        self.alpha = alpha
        self.beta = beta
        self.input_dims = input_dims
        self.layer1_size = layer1_size
        self.layer2_size = layer2_size
        self.n_actions = n_actions

        self.actor, self.critic, self.polocy = self.build_actor_critic_network()
        self.action_space = [1] * self.n_actions

    def build_actor_critic_network(self):

        policy_model = tf.keras.Sequential([
                tf.keras.Input(shape=(self.input_dims,)),
                tf.keras.layers.Dense(units=self.layer1_size, activation='relu'),
                tf.keras.layers.Dense(units=self.layer2_size, activation='relu'),
                tf.keras.layers.Dense(units=self.n_actions, activation='softmax')
        ])
